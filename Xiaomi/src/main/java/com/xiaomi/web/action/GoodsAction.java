package com.xiaomi.web.action;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Goods;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.service.GoodsService;
@Controller("goodsAction")
public class GoodsAction implements ModelDriven<Goods> {
	@Autowired
	private GoodsService goodsService;
	private Goods goods;
	private JsonObject<Goods> jsonObject;
	private int page;
	private int rows;
	//处理文件的三个属性   多个文件上传使用数组
	private File goods_pic;
	private String goods_picFileName;
	private String goods_picContentType;
	
	private File goodsdescr_pic;
	private String goodsdescr_picFileName;
	private String goodsdescr_picContentType;
	
	public File getGoods_pic() {
		return goods_pic;
	}
	public void setGoods_pic(File goods_pic) {
		this.goods_pic = goods_pic;
	}
	public String getGoods_picFileName() {
		return goods_picFileName;
	}
	public void setGoods_picFileName(String goods_picFileName) {
		this.goods_picFileName = goods_picFileName;
	}
	public String getGoods_picContentType() {
		return goods_picContentType;
	}
	public void setGoods_picContentType(String goods_picContentType) {
		this.goods_picContentType = goods_picContentType;
	}
	public File getGoodsdescr_pic() {
		return goodsdescr_pic;
	}
	public void setGoodsdescr_pic(File goodsdescr_pic) {
		this.goodsdescr_pic = goodsdescr_pic;
	}
	public String getGoodsdescr_picFileName() {
		return goodsdescr_picFileName;
	}
	public void setGoodsdescr_picFileName(String goodsdescr_picFileName) {
		this.goodsdescr_picFileName = goodsdescr_picFileName;
	}
	public String getGoodsdescr_picContentType() {
		return goodsdescr_picContentType;
	}
	public void setGoodsdescr_picContentType(String goodsdescr_picContentType) {
		this.goodsdescr_picContentType = goodsdescr_picContentType;
	}
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
		List<Goods> goods = goodsService.getAllGoodsInfo(page, rows);
		int total = goodsService.getTotalGoods();
		jsonObject = new JsonObject<Goods>();
		jsonObject.setRows(goods);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String findGoodsByGoodsId(){
		List<Goods> good = goodsService.findGoodsByGoodsId(goods.getGoodsId());
		jsonObject = new JsonObject<Goods>();
		jsonObject.setRows(good);
		return "success";
	}
	
	public String addGoodsInfo(){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("firPic", goods_pic);
		map.put("firPicName", goods_picFileName);
		map.put("firPicType", goods_picContentType);
		map.put("secPic", goodsdescr_pic);
		map.put("secPicName", goodsdescr_picFileName);
		map.put("secPicType", goodsdescr_picContentType);
		int total = goodsService.addGoodsInfo(goods,map);
		jsonObject = new JsonObject<Goods>();
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String updateGoodsInfo(){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("firPic", goods_pic);
		map.put("firPicName", goods_picFileName);
		map.put("firPicType", goods_picContentType);
		map.put("secPic", goodsdescr_pic);
		map.put("secPicName", goodsdescr_picFileName);
		map.put("secPicType", goodsdescr_picContentType);
		System.out.println(goods);
		int result = goodsService.updateGoodsInfo(goods,map);
		System.out.println(result);
		jsonObject = new JsonObject<Goods>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	@Override
	public Goods getModel() {
		goods = new Goods();
		return goods;
	}

}
