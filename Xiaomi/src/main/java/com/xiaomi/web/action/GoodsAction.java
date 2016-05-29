package com.xiaomi.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Goods;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.service.GoodsService;
@Controller("goodsAction")
public class GoodsAction implements ModelDriven<Goods> {
	@Autowired
	private GoodsService goodService;
	private Goods goods;
	private JsonObject<Goods> jsonObject;
	private int page;
	private int rows;
	
	public JsonObject<Goods> getJsonObject() {
		return jsonObject;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	
	public String getAllGoodsInfo(){
		List<Goods> goods = goodService.getAllGoodsInfo(page, rows);
		int total = goodService.getTotalGoods();
		jsonObject = new JsonObject<Goods>();
		jsonObject.setRows(goods);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String findGoodsByGoodsId(){
		List<Goods> good = goodService.findGoodsByGoodsId(goods.getGoodsId());
		jsonObject = new JsonObject<Goods>();
		jsonObject.setRows(good);
		return "success";
	}

	@Override
	public Goods getModel() {
		goods = new Goods();
		return goods;
	}

}
