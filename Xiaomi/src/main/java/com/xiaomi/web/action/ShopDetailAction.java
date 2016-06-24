package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Product;
import com.xiaomi.entity.ShopCar;
import com.xiaomi.entity.Shop_Goods_Car;
import com.xiaomi.service.ShopCarService;

@Controller("shopDetailAction")
public class ShopDetailAction implements ModelDriven<Shop_Goods_Car>,SessionAware {
	@Autowired
	private ShopCarService shopCarService;
	
	private Shop_Goods_Car shopCar;
	private Map<String,Object> session;
	private JsonObject<ShopCar> jsonObject;
	
	public JsonObject<ShopCar> getJsonObject() {
		return jsonObject;
	}

	public String toCarFind(){
		int shopNum = shopCarService.findShopInfoByPtId(shopCar.getPtId(),shopCar.getUsersId());
		jsonObject = new JsonObject<ShopCar>();
		if(shopNum > 0){ //说明数据库里面这个用户的购物车有这个商品
			jsonObject.setTotal(1);
		}else{   //没有这个商品
			jsonObject.setTotal(0);
		}
		return "success";
	}
	
	//向购物车表中添加新的购物车信息
	public String toCarAdd(){
		int result = shopCarService.addShopCarInfo(shopCar);
		jsonObject = new JsonObject<ShopCar>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	//更新购物车表中的信息
	public String toCarUpdate(){
		int result = shopCarService.updateShopCarInfo(shopCar);
		jsonObject = new JsonObject<ShopCar>();
		jsonObject.setTotal(result);
		return "success";
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}

	@Override
	public Shop_Goods_Car getModel() {
		shopCar=new Shop_Goods_Car();
		return shopCar;
	}

}
