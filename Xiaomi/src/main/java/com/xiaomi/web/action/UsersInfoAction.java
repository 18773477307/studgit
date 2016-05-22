package com.xiaomi.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.UsersInfo;
import com.xiaomi.service.UsersInfoService;

@Controller("usersInfoAction")
public class UsersInfoAction implements ModelDriven<UsersInfo>,SessionAware{
	private UsersInfo usersInfo;
	private Map<String,Object> session;
	
	@Autowired
	private UsersInfoService usersInfoService;
	
	public String login(){
		return null;
		
	}
	
	public String register(){
		return null;
	}
	
	public String update(){
		return null;
	}
	
	
	

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}

	@Override
	public UsersInfo getModel() {
		usersInfo=new UsersInfo();
		return usersInfo;
	}

}
