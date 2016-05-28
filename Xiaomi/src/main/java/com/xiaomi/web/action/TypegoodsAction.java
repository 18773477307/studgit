package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Typegoods;
import com.xiaomi.service.TypegoodsService;

@Controller("typegoodsAction")
public class TypegoodsAction implements ModelDriven<Typegoods>, SessionAware {
	@Autowired
	private TypegoodsService typegoodsService;
	private Typegoods typegoods;
	private JsonObject<Typegoods> jsonObject;
	private int page;
	private int rows;
	private Map<String, Object> session;
	private String typesIds;


	public JsonObject<Typegoods> getJsonObject() {
		return jsonObject;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public void setTypesIds(String typesIds) {
		this.typesIds = typesIds;
	}
	
	public TypegoodsAction() {}

	public String findAllTypegoods() {
		List<Typegoods> listTypegoods = typegoodsService.findAllTypeGoods(page, rows);
		int total = typegoodsService.getTotalTypegoods();
		jsonObject = new JsonObject<Typegoods>();
		jsonObject.setRows(listTypegoods);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String updateTypegoods() {
		int result = typegoodsService.updateTypegoods(typegoods);
		jsonObject = new JsonObject<Typegoods>();
		jsonObject.setTotal(result);
		return "success";
	}

	public String delTypegoods() {
		int result = typegoodsService.delTypegoods(typesIds);
		jsonObject = new JsonObject<Typegoods>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String addTypegoods() {
		int result = typegoodsService.addTypegoods(typegoods);
		jsonObject = new JsonObject<Typegoods>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	@Override
	public Typegoods getModel() {
		typegoods = new Typegoods();
		return typegoods;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
