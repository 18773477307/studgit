package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Manager;
import com.xiaomi.service.ManagerService;
@Controller("managerAction")
public class ManagerAction implements ModelDriven<Manager> ,SessionAware {
	@Autowired
	private ManagerService managerService;
	private Manager manager;
	private JsonObject<Manager> jsonObject;
	private Map<String, Object> session;
	private int page;
	private int rows;
	private String manaIds;
	public JsonObject<Manager> getJsonObject() {
		return jsonObject;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public void setManaIds(String manaIds) {
		this.manaIds = manaIds;
	}
	public ManagerAction() {}
	
	public String login(){
		manager = managerService.login(manager);
		if(manager != null){
			session=ActionContext.getContext().getSession();
//			System.out.println(manager);
			session.put("manager", manager);
			return "loginSuccess";
		}
		return "loginFail";
	}
	
	public String getAllManager(){
		List<Manager> managers=managerService.find(page, rows);
		int total=managerService.total();
		jsonObject=new JsonObject<Manager>();
		jsonObject.setRows(managers);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String addManager(){
	//	System.out.println(manager+"sds ");
		int result=managerService.addManager(manager);
	//	System.out.println(result+"====");
		jsonObject = new JsonObject<Manager>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String updateManager(){
		int result = managerService.updateManager(manager);
		jsonObject = new JsonObject<Manager>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String delManager(){
		int result = managerService.delManager(manaIds);
		jsonObject = new JsonObject<Manager>();
		jsonObject.setTotal(result);
		return "success";
	}

	
	
	@Override
	public Manager getModel() {
		manager=new Manager();
		return manager;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
}
