package com.xiaomi.entity;

import java.io.Serializable;

public class Goods implements Serializable{
	
	private static final long serialVersionUID = 7856525108916587390L;
	
	private String goodsId;
	private String brandId;
	private String goodsName;
	private double goodsPrice;
	private String goodsPic;
	private int gformat;
	private int gcolor;
	private int gmemory;
	private int gversions;
	private String goodsVersion;
	private String goodsdescr;
	private String goodsrepr;
	private int goodsNum;
	private int goodsHot;
	private int goodsSta;
	private String reserve12;
	private String brandName;
	private String dirName;
		
	
	public String getDirName() {
		return dirName;
	}
	public void setDirName(String dirName) {
		this.dirName = dirName;
	}
	
	private String gformat1;
	private String gcolor1;
	private String gmemory1;
	private String gversions1;
	
	public String getGformat1() {
		return gformat1;
	}
	public void setGformat1(String gformat1) {
		this.gformat1 = gformat1;
	}
	public String getGcolor1() {
		return gcolor1;
	}
	public void setGcolor1(String gcolor1) {
		this.gcolor1 = gcolor1;
	}
	public String getGmemory1() {
		return gmemory1;
	}
	public void setGmemory1(String gmemory1) {
		this.gmemory1 = gmemory1;
	}
	public String getGversions1() {
		return gversions1;
	}
	public void setGversions1(String gversions1) {
		this.gversions1 = gversions1;
	}

	
	
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	
	//商品编号
	public String getGoodsId() {
		return goodsId;
	}
	public String getGoodsIds() {
		return goodsId;
	}
	
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	
	//商品类型编号，引入外键
	public String getBrandId() {
		return brandId;
	}
	
	public void setBrandId(String brandId) {
		this.brandId = brandId;
	}
	
	//商品名字
	public String getGoodsName() {
		return goodsName;
	}
	
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	
	//商品价格
	public double getGoodsPrice() {
		return goodsPrice;
	}
	
	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	
	//商品图片
	public String getGoodsPic() {
		return goodsPic;
	}
	
	public void setGoodsPic(String goodsPic) {
		this.goodsPic = goodsPic;
	}
	
	//网络格式，引入外键
	public int getGformat() {
		return gformat;
	}
	
	public void setGformat(int gformat) {
		this.gformat = gformat;
	}
	
	//商品颜色，引入外键
	public int getGcolor() {
		return gcolor;
	}
	
	public void setGcolor(int gcolor) {
		this.gcolor = gcolor;
	}
	
	//内存大小，引入外键
	public int getGmemory() {
		return gmemory;
	}
	
	public void setGmemory(int gmemory) {
		this.gmemory = gmemory;
	}
	
	//网络版本，引入外键
	public int getGversions() {
		return gversions;
	}
	
	public void setGversions(int gversions) {
		this.gversions = gversions;
	}
	
	//商品型号(标配，高配......)
	public String getGoodsVersion() {
		return goodsVersion;
	}
	
	public void setGoodsVersion(String goodsVersion) {
		this.goodsVersion = goodsVersion;
	}
	
	//商品详情
	public String getGoodsdescr() {
		return goodsdescr;
	}
	
	public void setGoodsdescr(String goodsdescr) {
		this.goodsdescr = goodsdescr;
	}
	
	//商品描述
	public String getGoodsrepr() {
		return goodsrepr;
	}
	
	public void setGoodsrepr(String goodsrepr) {
		this.goodsrepr = goodsrepr;
	}
	
	//商品数量 
	public int getGoodsNum() {
		return goodsNum;
	}
	
	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}
	
	//商品热销率
	public int getGoodsHot() {
		return goodsHot;
	}
	
	public void setGoodsHot(int goodsHot) {
		this.goodsHot = goodsHot;
	}
	
	//备用字段
	public int getGoodsSta() {
		return goodsSta;
	}
	
	public void setGoodsSta(int goodsSta) {
		this.goodsSta = goodsSta;
	}
	
	public String getReserve12() {
		return reserve12;
	}
	
	public void setReserve12(String reserve12) {
		this.reserve12 = reserve12;
	}

	public Goods(String goodsId, String brandId, String goodsName,
			double goodsPrice, String goodsPic, int gformat, int gcolor,
			int gmemory, int gversions, String goodsVersion, String goodsdescr,
			String goodsrepr, int goodsNum, int goodsHot, int goodsSta,
			String reserve12) {
		super();
		this.goodsId = goodsId;
		this.brandId = brandId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsPic = goodsPic;
		this.gformat = gformat;
		this.gcolor = gcolor;
		this.gmemory = gmemory;
		this.gversions = gversions;
		this.goodsVersion = goodsVersion;
		this.goodsdescr = goodsdescr;
		this.goodsrepr = goodsrepr;
		this.goodsNum = goodsNum;
		this.goodsHot = goodsHot;
		this.goodsSta = goodsSta;
		this.reserve12 = reserve12;
	}

	public Goods() {
		super();
	}

	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", brandId=" + brandId
				+ ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice
				+ ", goodsPic=" + goodsPic + ", gformat=" + gformat
				+ ", gcolor=" + gcolor + ", gmemory=" + gmemory
				+ ", gversions=" + gversions + ", goodsVersion=" + goodsVersion
				+ ", goodsdescr=" + goodsdescr + ", goodsrepr=" + goodsrepr
				+ ", goodsNum=" + goodsNum + ", goodsHot=" + goodsHot
				+ ", goodsSta=" + goodsSta + ", reserve12=" + reserve12 + "]";
	}
	

}
