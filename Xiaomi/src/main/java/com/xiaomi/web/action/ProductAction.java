package com.xiaomi.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Product;
import com.xiaomi.service.ProductService;
@Controller("productAction")
public class ProductAction implements ModelDriven<Product> {
	@Autowired
	private ProductService productService;
	private JsonObject<Product> jsonObject;
	private Product product;
	private int page;
	private int rows;
	
	public JsonObject<Product> getJsonObject() {
		return jsonObject;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	
	public String getAllProduct() {
		List<Product> products = productService.getAllProduct(page,rows);
		System.out.println(products);
		int total = productService.getTotalProduct();
		jsonObject = new JsonObject<Product>();
		jsonObject.setRows(products);
		jsonObject.setTotal(total);
		return "success";
	}
	@Override
	public Product getModel() {
		product = new Product();
		return product;
	}

}
