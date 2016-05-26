package com.xiaomi.entity;

import java.io.Serializable;


public class Goods implements Serializable{
	private static final long serialVersionUID = 1L;

	private int goodsId;

    private int typesId;

    private String goodsName;

    private double goodsminPrice;

    private String goodsVersion;

    private String goodsminPic;

    private String goodsmaxPic;

    private int goodsSta;

    private String goodsplace;

    private String reserve11;

    private String reserve12;

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getTypesId() {
		return typesId;
	}

	public void setTypesId(int typesId) {
		this.typesId = typesId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public double getGoodsminPrice() {
		return goodsminPrice;
	}

	public void setGoodsminPrice(double goodsminPrice) {
		this.goodsminPrice = goodsminPrice;
	}

	public String getGoodsVersion() {
		return goodsVersion;
	}

	public void setGoodsVersion(String goodsVersion) {
		this.goodsVersion = goodsVersion;
	}

	public String getGoodsminPic() {
		return goodsminPic;
	}

	public void setGoodsminPic(String goodsminPic) {
		this.goodsminPic = goodsminPic;
	}

	public String getGoodsmaxPic() {
		return goodsmaxPic;
	}

	public void setGoodsmaxPic(String goodsmaxPic) {
		this.goodsmaxPic = goodsmaxPic;
	}

	public int getGoodsSta() {
		return goodsSta;
	}

	public void setGoodsSta(int goodsSta) {
		this.goodsSta = goodsSta;
	}

	public String getGoodsplace() {
		return goodsplace;
	}

	public void setGoodsplace(String goodsplace) {
		this.goodsplace = goodsplace;
	}

	public String getReserve11() {
		return reserve11;
	}

	public void setReserve11(String reserve11) {
		this.reserve11 = reserve11;
	}

	public String getReserve12() {
		return reserve12;
	}

	public void setReserve12(String reserve12) {
		this.reserve12 = reserve12;
	}

	public Goods(int goodsId, int typesId, String goodsName,
			double goodsminPrice, String goodsVersion, String goodsminPic,
			String goodsmaxPic, int goodsSta, String goodsplace,
			String reserve11, String reserve12) {
		super();
		this.goodsId = goodsId;
		this.typesId = typesId;
		this.goodsName = goodsName;
		this.goodsminPrice = goodsminPrice;
		this.goodsVersion = goodsVersion;
		this.goodsminPic = goodsminPic;
		this.goodsmaxPic = goodsmaxPic;
		this.goodsSta = goodsSta;
		this.goodsplace = goodsplace;
		this.reserve11 = reserve11;
		this.reserve12 = reserve12;
	}

	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", typesId=" + typesId
				+ ", goodsName=" + goodsName + ", goodsminPrice="
				+ goodsminPrice + ", goodsVersion=" + goodsVersion
				+ ", goodsminPic=" + goodsminPic + ", goodsmaxPic="
				+ goodsmaxPic + ", goodsSta=" + goodsSta + ", goodsplace="
				+ goodsplace + ", reserve11=" + reserve11 + ", reserve12="
				+ reserve12 + "]";
	}

	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}

}