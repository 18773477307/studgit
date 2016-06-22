package com.xiaomi.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Orders;

public class OrderpageAction implements SessionAware,ModelDriven<Orders> {
	private String op;
	private Map<String, Object> session;
	private Orders orders;

	
	
	
	public void setOp(String op) {
		this.op = op;
	}
	
	public String getOrderInfo(){
		return "success";
	}
	
	
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	@Override
	public Orders getModel() {
		orders = new Orders();
		return orders;
	}
	
}
