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
	private String dirIds;


	public JsonObject<Datadict> getJsonObject() {
		return jsonObject;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
	
	public void setDirIds(String dirIds) {
		this.dirIds = dirIds;
	}

	//分页获取所有数据字典信息的方法
	public String getAllDatadict(){
		List<Datadict> datadicts = datadictService.find(page, rows);
		int total = datadictService.total();
		jsonObject=new JsonObject<Datadict>();
		jsonObject.setRows(datadicts);
		jsonObject.setTotal(total);
		return "success";
	}
	
	//添加数据字典信息的方法
	public String addDatadict(){
		int result = datadictService.addDatadict(datadict);
		//System.out.println("添加结果：" + result);
		jsonObject = new JsonObject<Datadict>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	//更新数据字典信息的方法
	public String updateDatadict(){
		int result = datadictService.updateDatadict(datadict);
		//System.out.println("修改结果：" + result);
		jsonObject = new JsonObject<Datadict>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	//删除数据字典信息的方法（可删除一条或多条）
	public String delDatadict(){
		int result = datadictService.del(dirIds);
		//System.out.println("删除数据字典的结果：" + result);
		jsonObject = new JsonObject<Datadict>();
		jsonObject.setTotal(result);
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
