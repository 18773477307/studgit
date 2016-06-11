package com.xiaomi.web.action;

import java.util.HashMap;
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
import com.xiaomi.service.UsersInfoService;

import freemarker.template.Template;
@Controller("shopCarAction")
public class ShopCarAction implements ModelDriven<Shop_Goods_Car>,SessionAware {
	@Autowired
	private ShopCarService shopCarService;
	@Autowired
	private UsersInfoService usersInfoService;
	private Shop_Goods_Car shop_Goods_Car;
	private Map<String, Object> session;
	private JsonObject<Shop_Goods_Car> jsonObject;
	private int page;
	private int rows;
	private String str;
	private String infos;
	private int totalNum;
	private double zongjimoney;
	
	public void setTotalNum(int totalNum) {
		this.totalNum = totalNum;
	}

	public void setZongjimoney(double zongjimoney) {
		this.zongjimoney = zongjimoney;
	}

	public void setStr(String str) {
		this.str = str;
	}
	
	public void setInfos(String infos) {
		this.infos = infos;
	}

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
		
		int shopNumTotal = 0;
		double ptPriceTotal=0;
		for (int i = 0; i < shopCarInfo.size(); i++) {
			shopNumTotal+=shopCarInfo.get(i).getShopNum();
			ptPriceTotal+=shopCarInfo.get(i).getPtPrice()*shopCarInfo.get(i).getShopNum();
		}
		session.put("shopCarInfo", shopCarInfo);
		session.put("shopNumTotal", shopNumTotal);
		session.put("ptPriceTotal", ptPriceTotal);
		return "success";
	}
	public String delByShopId(){
		int result = shopCarService.delByShopId(shop_Goods_Car.getShopId());
		if(result>0){
			shopCarShow();
			int sum = 0;
			sum = usersInfoService.findCountOfUser(shop_Goods_Car.getUsersId());//从购物车表里面查
			//把这个人购物车所有商品数量存入session
			session.put("sums", sum);
		}
		jsonObject = new JsonObject<Shop_Goods_Car>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String getPayInfo(){
		//System.out.println(str);
		System.out.println(infos);
		System.out.println(zongjimoney);
		session.put("goCountInfo", infos);
		session.put("zongjimoney", zongjimoney);
		session.put("totalNum", totalNum);
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
