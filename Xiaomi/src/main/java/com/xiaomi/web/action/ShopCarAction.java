package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.ShopCar;
import com.xiaomi.entity.Shop_Goods_Car;
import com.xiaomi.service.ShopCarService;
@Controller("shopCarAction")
public class ShopCarAction implements ModelDriven<Shop_Goods_Car>,SessionAware {
	@Autowired
	private ShopCarService shopCarService;
	private Shop_Goods_Car shop_Goods_Car;
	private Map<String, Object> session;
	private JsonObject<Shop_Goods_Car> jsonObject;
	private int page;
	private int rows;
	public JsonObject<Shop_Goods_Car> getJsonObject() {
		return jsonObject;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}

	public String shopCarShow() {
		System.out.println(shop_Goods_Car.getUsersId());
		List<Shop_Goods_Car> shopCarInfo = shopCarService.getShopCarInfoByUsers(shop_Goods_Car.getUsersId());
		System.out.println(shopCarInfo);
		session.put("shopCarInfo", shopCarInfo);
		jsonObject = new JsonObject<Shop_Goods_Car>();
		jsonObject.setTotal(1);
		return "success";
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	@Override
	public Shop_Goods_Car getModel() {
		shop_Goods_Car = new Shop_Goods_Car();
		return shop_Goods_Car;
	}

}
