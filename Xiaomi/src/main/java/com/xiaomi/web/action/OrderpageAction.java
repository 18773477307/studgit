package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.OrderInfoBean;
import com.xiaomi.service.OrdersService;
import com.xiaomi.utils.PageUtil;
@Controller("orderpageAction")
public class OrderpageAction implements SessionAware,ModelDriven<OrderInfoBean> {
	@Autowired
	private OrdersService ordersService;
	
	private OrderInfoBean orderInfoBean;
	private List<OrderInfoBean> ordersList;
	private JsonObject<OrderInfoBean> jsonObject;
	private PageUtil pageUtil;
	private String op;
	private Map<String, Object> session;
	
	public JsonObject<OrderInfoBean> getJsonObject() {
		return jsonObject;
	}
	public void setOp(String op) {
		this.op = op;
	}
	public String getOrderInfo(){
		
		int usersId = orderInfoBean.getUsersId();
		if(orderInfoBean.getOrdSta()!=0){
			pageUtil.setSta(orderInfoBean.getOrdSta());
		}
//		System.out.println(usersId+"用户id");
//		System.out.println(op);
		Object obj=session.get("pageUtil");
//		System.out.println("总条数"+ordersService.getTotal(usersId));
		if(obj==null){
			pageUtil=new PageUtil();
			pageUtil.setPageNo(1);
			pageUtil.setTotalSize(ordersService.getTotal(usersId));
			pageUtil.setPageSize(5);
		}
		//对不同的操作请求进行判断
		if("1".equals(op)){
			pageUtil.setPageNo(1);
		}else if("2".equals(op)){
			pageUtil.setPageNo(pageUtil.getPageNo()-1);
		}else if("3".equals(op)){
			pageUtil.setPageNo(pageUtil.getPageNo()+1);
		}else if("4".equals(op)){
			pageUtil.setPageNo(pageUtil.getTotalPage());
		}
		
		//将最新的分页信息存起来
		session.put("pageUtil", pageUtil);
		System.out.println(pageUtil);
		
		//根据页面号查询信息
		ordersList=ordersService.find(usersId,pageUtil.getSta(),pageUtil.getPageNo(),pageUtil.getPageSize());
		session.put("yeorders", ordersList);
		System.out.println(ordersList);
		//转成json数据，往前台传送
		jsonObject=new JsonObject<OrderInfoBean>();
		jsonObject.setRows(ordersList);
		return "success";
	}
	
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	@Override
	public OrderInfoBean getModel() {
		orderInfoBean = new OrderInfoBean();
		return orderInfoBean;
	}
	
}
