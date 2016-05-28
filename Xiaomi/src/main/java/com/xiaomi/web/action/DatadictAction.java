package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Datadict;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Manager;
import com.xiaomi.service.DatadictService;

@Controller("datadictAction")
public class DatadictAction implements ModelDriven<Datadict>,SessionAware {
	@Autowired
	private DatadictService datadictService;
	
	private Datadict datadict;
	private Map<String,Object> session;
	
	private JsonObject<Datadict> jsonObject;
	private int page;
	private int rows;

	public void setJsonObject(JsonObject<Datadict> jsonObject) {
		this.jsonObject = jsonObject;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
	
	public String getAllDatadict(){
		//System.out.println("page："+page+" rows："+rows);
		List<Datadict> datadicts = datadictService.find(page, rows);
		System.out.println(datadicts);
		int total = datadictService.total();
		//System.out.println(total);
		jsonObject=new JsonObject<Datadict>();
		jsonObject.setRows(datadicts);
		jsonObject.setTotal(total);
		return "success";
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public Datadict getModel() {
		datadict = new Datadict();
		return datadict;
	}

}
