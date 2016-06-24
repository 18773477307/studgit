package com.xiaomi.web.action;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Goods;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Product;
import com.xiaomi.service.ProductService;
@Controller("productAction")
public class ProductAction implements ModelDriven<Product>,SessionAware {
	@Autowired
	private ProductService productService;
	private JsonObject<Product> jsonObject;
	private Product product;
	private int page;
	private int rows;
	private Map<String, Object> session;
	//处理文件的三个属性   多个文件上传使用数组
	private File[] ptPics;
	private String[] ptPicsFileName;
	private String[] ptPicsContentType;
	
	
	public File[] getPtPics() {
		return ptPics;
	}
	public void setPtPics(File[] ptPics) {
		this.ptPics = ptPics;
	}
	public String[] getPtPicsFileName() {
		return ptPicsFileName;
	}
	public void setPtPicsFileName(String[] ptPicsFileName) {
		this.ptPicsFileName = ptPicsFileName;
	}
	public String[] getPtPicsContentType() {
		return ptPicsContentType;
	}
	public void setPtPicsContentType(String[] ptPicsContentType) {
		this.ptPicsContentType = ptPicsContentType;
	}
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
		//jsonObject.setObject(object);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String getAllProductName(){
		List<Product> productNames = productService.getAllGoodsName();
		//System.out.println(productNames);
		jsonObject=new JsonObject<Product>();
		jsonObject.setRows(productNames);
		return "success";
	}
	
	public String findProductInfoByPtId(){
		List<Product> products = productService.findProductInfoByPtId(product.getPtId());
		jsonObject=new JsonObject<Product>();
		jsonObject.setRows(products);
		return "success";
	}
	
	public String addProductInfo(){
		int result = productService.addProductInfo(product,ptPics,ptPicsFileName,ptPicsContentType);
		jsonObject = new JsonObject<Product>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String updateProductInfo(){
		int result = productService.updateProductInfo(product,ptPics,ptPicsFileName,ptPicsContentType);
		jsonObject = new JsonObject<Product>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	//查看该商品是否有多个产品
	public String findPtnumByGoodsId(){
		int ptnum = productService.findPtnumByGoodsId(product.getGoodsId());
		System.out.println(ptnum);
		jsonObject = new JsonObject<Product>();
		jsonObject.setTotal(ptnum);
		return "success";
	}
	
	//通过GoodsId查找到对应的PtId
	public String findPtIdByGoodsId(){
		Product pro = productService.findPtIdByGoodsId(product.getGoodsId());
		jsonObject = new JsonObject<Product>();
		jsonObject.setObject(pro);
		return "success";
	}
	
	//根据GoodsId获取到所有的商品详情
	public String getProductByGoodsId(){
		List<Product> pros = productService.findProductByGoodsId(product.getGoodsId());
		int ptId = pros.get(0).getPtId();
		System.out.println(ptId);
		
		Product prod = productService.getProductByPtId(ptId);
		
		jsonObject = new JsonObject<Product>();
		jsonObject.setRows(pros);
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
