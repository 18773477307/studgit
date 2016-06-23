package com.xiaomi.web.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.utils.SessionAttributeKey;

/**
 * 用户登入校验登入
 * @author Administrator
 *
 */

//可以对请求方法
public class LoginInterceptor extends MethodFilterInterceptor {
	//序列号
	private static final long serialVersionUID = 1307687631270550421L;
	@Override
	public String doIntercept(ActionInvocation invocation) throws Exception {
		Map<String,Object> session=ActionContext.getContext().getSession();
		//取到session的封装对象
		Object obj=session.get(SessionAttributeKey.LOGIN_USER);
		if(obj==null){
			//打印对象
			System.out.println("对象"+obj);
			//获取request域中信息  
	        HttpServletRequest req = ServletActionContext.getRequest();  
	       //获得当前请求地址
	        String url = req.getServletPath();  
	        //获得请求类型  
	        String type = req.getHeader("X-Requested-With");
	        //判断是否是同步请求或者是异步请求
	        if(type.equalsIgnoreCase("XMLHttpRequest")){
	        	//存放url地址
	        	System.out.println(url);
	        	session.put(SessionAttributeKey.XIAOMI_URL, "url");
	        	JsonObject<Object> jsonObject=new JsonObject<Object>();
	        	jsonObject.setObject(obj);
	        	return null;
	        }else{
				session.put(SessionAttributeKey.ERROR_MSG, "请登入后再进行操作!!!!");
				return "login";
	        }
		}
		return invocation.invoke();//invocation.invoke() 就是通知struts2接着干下面的事情;返回验证通过
	}
}
