package com.xiaomi.web.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.xiaomi.utils.SessionAttributeKey;

/**
 * 用户登入校验登入
 * @author Administrator
 *
 */

//可以对请求方法
public class LoginInterceptor extends MethodFilterInterceptor {

	private static final long serialVersionUID = 1307687631270550421L;

	
	@Override
	public String doIntercept(ActionInvocation invocation) throws Exception {
		Map<String,Object> session=ActionContext.getContext().getSession();//取到session的封装对象
		Object obj=session.get(SessionAttributeKey.LOGIN_USER);
		if(obj==null){
			session.put(SessionAttributeKey.ERROR_MSG, "请登入后再进行操作!!!!");
			return "login";
		}
		return invocation.invoke();//invocation.invoke() 就是通知struts2接着干下面的事情;返回验证通过
	}
}
