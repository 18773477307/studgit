package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Product;
import com.xiaomi.service.ProductService;

@Controller("productAction")
public class ProductAction implements ModelDriven<Product>,SessionAware {
	@Autowired
	private ProductService productService;
	
	private Map<String, Object> session;
	private Product product;
	
	private JsonObject<Product> jsonObject;
	
	
	public JsonObject<Product> getJsonObject() {
		return jsonObject;
	}

	public String getAllProductName(){
		List<Product> productNames = productService.getAllGoodsName();
		System.out.println(productNames);
		jsonObject=new JsonObject<Product>();
		jsonObject.setRows(productNames);
		return "success";
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public Product getModel() {
		product = new Product();
		return product;
	}

}
