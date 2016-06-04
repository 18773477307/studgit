package com.xiaomi.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Discount implements Serializable {
	private String disId;
	private String goodsId;
	private String disStartTime;
	private String disEndTime;
	private double disPrice;
	private int disSta;
	private String reserve15;
	private String reserve16;
	
	
	private String goodsName;//商品名
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	
	
	
	public String getDisId() {
		return disId;
	}
	public String getDisIds() {
		return disId;
	}
	public void setDisId(String disId) {
		this.disId = disId;
	}

	//商品编号，引入外键
	public String getGoodsId() {
		return goodsId;
	}
	
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	
	//打折起始时间
	public String getDisStartTime() {
		return disStartTime;
	}
	//打折开始时间截取
	public String getDisStartTimes() {
		if(disStartTime!=null && disStartTime.length()>10){
			return disStartTime.substring(0,10);
		}
		return disStartTime;
	}
	public void setDisStartTime(String disStartTime) {
		this.disStartTime = disStartTime;
	}
	
	
	//打折结束时间
	public String getDisEndTime() {
		return disEndTime;
	}
	//打折结束时间截取
	public String getDisEndTimes() {
		if(disEndTime!=null && disEndTime.length()>10){
			return disEndTime.substring(0,10);
		}
		return disEndTime;
	}
	public void setDisEndTime(String disEndTime) {
		this.disEndTime = disEndTime;
	}
	
	//折扣
	public double getDisPrice() {
		return disPrice;
		
	}
	
	
	public void setDisPrice(double disPrice) {
		this.disPrice =disPrice;
	}
	
	//优惠状态
	public int getDisSta() {
		return disSta;
	}
	
	public void setDisSta(int disSta) {
		this.disSta = disSta;
	}
	
	//备用字段
	public String getReserve15() {
		return reserve15;
	}
	
	public void setReserve15(String reserve15) {
		this.reserve15 = reserve15;
	}
	
	public String getReserve16() {
		return reserve16;
	}
	
	public void setReserve16(String reserve16) {
		this.reserve16 = reserve16;
	}

	public Discount(String disId,String goodsId, String disStartTime, String disEndTime,
			double disPrice, int disSta, String reserve15, String reserve16) {
		super();
		this.disId=disId;
		this.goodsId = goodsId;
		this.disStartTime = disStartTime;
		this.disEndTime = disEndTime;
		this.disPrice = disPrice;
		this.disSta = disSta;
		this.reserve15 = reserve15;
		this.reserve16 = reserve16;
	}


	@Override
	public String toString() {
		return "Discount [disId=" + disId + ", goodsId=" + goodsId + ", disStartTime="
				+ disStartTime + ", disEndTime=" + disEndTime + ", disPrice="
				+ disPrice + ", disSta=" + disSta + ", reserve15=" + reserve15
				+ ", reserve16=" + reserve16 + "]";
	}
	public Discount() {
		super();
		// TODO Auto-generated constructor stub
	}
}
