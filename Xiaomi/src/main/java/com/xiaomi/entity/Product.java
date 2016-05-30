package com.xiaomi.entity;

import java.io.Serializable;


public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	private int ptId;

    private double ptPrice;

    private String ptPic;

    private int ptNum;

    private String ptCan;

    private int goodsId;

    private int ptformat;

    private int ptcolor;

    private int ptnet;

    private int ptversions;

    private int ptmemory;

    private int ptcpu;

    private int ptbattery;

    private String reserve13;

    private String reserve14;
    
    private String goodsName;

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getPtId() {
		return ptId;
	}

	public void setPtId(int ptId) {
		this.ptId = ptId;
	}

	public double getPtPrice() {
		return ptPrice;
	}

	public void setPtPrice(double ptPrice) {
		this.ptPrice = ptPrice;
	}

	public String getPtPic() {
		return ptPic;
	}

	public void setPtPic(String ptPic) {
		this.ptPic = ptPic;
	}

	public int getPtNum() {
		return ptNum;
	}

	public void setPtNum(int ptNum) {
		this.ptNum = ptNum;
	}

	public String getPtCan() {
		return ptCan;
	}

	public void setPtCan(String ptCan) {
		this.ptCan = ptCan;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getPtformat() {
		return ptformat;
	}

	public void setPtformat(int ptformat) {
		this.ptformat = ptformat;
	}

	public int getPtcolor() {
		return ptcolor;
	}

	public void setPtcolor(int ptcolor) {
		this.ptcolor = ptcolor;
	}

	public int getPtnet() {
		return ptnet;
	}

	public void setPtnet(int ptnet) {
		this.ptnet = ptnet;
	}

	public int getPtversions() {
		return ptversions;
	}

	public void setPtversions(int ptversions) {
		this.ptversions = ptversions;
	}

	public int getPtmemory() {
		return ptmemory;
	}

	public void setPtmemory(int ptmemory) {
		this.ptmemory = ptmemory;
	}

	public int getPtcpu() {
		return ptcpu;
	}

	public void setPtcpu(int ptcpu) {
		this.ptcpu = ptcpu;
	}

	public int getPtbattery() {
		return ptbattery;
	}

	public void setPtbattery(int ptbattery) {
		this.ptbattery = ptbattery;
	}

	public String getReserve13() {
		return reserve13;
	}

	public void setReserve13(String reserve13) {
		this.reserve13 = reserve13;
	}

	public String getReserve14() {
		return reserve14;
	}

	public void setReserve14(String reserve14) {
		this.reserve14 = reserve14;
	}

	@Override
	public String toString() {
		return "Product [ptId=" + ptId + ", ptPrice=" + ptPrice + ", ptPic="
				+ ptPic + ", ptNum=" + ptNum + ", ptCan=" + ptCan
				+ ", goodsId=" + goodsId + ", ptformat=" + ptformat
				+ ", ptcolor=" + ptcolor + ", ptnet=" + ptnet + ", ptversions="
				+ ptversions + ", ptmemory=" + ptmemory + ", ptcpu=" + ptcpu
				+ ", ptbattery=" + ptbattery + ", reserve13=" + reserve13
				+ ", reserve14=" + reserve14 + ", goodsName=" + goodsName + "]";
	}

	public Product(int ptId, double ptPrice, String ptPic, int ptNum,
			String ptCan, int goodsId, int ptformat, int ptcolor, int ptnet,
			int ptversions, int ptmemory, int ptcpu, int ptbattery,
			String reserve13, String reserve14, String goodsName) {
		super();
		this.ptId = ptId;
		this.ptPrice = ptPrice;
		this.ptPic = ptPic;
		this.ptNum = ptNum;
		this.ptCan = ptCan;
		this.goodsId = goodsId;
		this.ptformat = ptformat;
		this.ptcolor = ptcolor;
		this.ptnet = ptnet;
		this.ptversions = ptversions;
		this.ptmemory = ptmemory;
		this.ptcpu = ptcpu;
		this.ptbattery = ptbattery;
		this.reserve13 = reserve13;
		this.reserve14 = reserve14;
		this.goodsName = goodsName;
	}

	public Product() {
		super();
	}


}