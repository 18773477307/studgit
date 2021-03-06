package com.xiaomi.entity;

import java.io.Serializable;


public class Product implements Serializable {
	private static final long serialVersionUID = 1L;
	private int ptId;
    private double ptPrice;//产品价格
    private String ptPic;//产品详情图片
    private int ptNum;//产品库存数量 
    private int goodsId;//引入商品id
    private int ptformat;//1型号 标配版
    private int ptcolor;//商品颜色
    private int ptnet;//网络制式 3G 4G
    private int ptversions;//网络运营商 电信 全网通等
    
    private int ptmemory;//内存大小 2G -128G
    private int ptsize; //电视机尺寸
    private int ptbattery;	//电池型号
    private int ptSta;    //状态
    private int dirName;	//数据字典里面对应的名字
    private String goodsName;
    
    private String formats;//1型号 标配版
    private String colors;//商品颜色
    private String nets;//网络制式 3G 4G
    private String versions;//网络运营商 电信 全网通等
    
    private String memorys;//内存大小 2G -128G
    private String sizes; //电视机尺寸
    private String batterys;	//电池型号
    
	
	public String getFormats() {
		return formats;
	}
	public void setFormats(String formats) {
		this.formats = formats;
	}
	public String getColors() {
		return colors;
	}
	public void setColors(String colors) {
		this.colors = colors;
	}
	public String getNets() {
		return nets;
	}
	public void setNets(String nets) {
		this.nets = nets;
	}
	public String getVersions() {
		return versions;
	}
	public void setVersions(String versions) {
		this.versions = versions;
	}
	public String getMemorys() {
		return memorys;
	}
	public void setMemorys(String memorys) {
		this.memorys = memorys;
	}
	public String getSizes() {
		return sizes;
	}
	public void setSizes(String sizes) {
		this.sizes = sizes;
	}
	public String getBatterys() {
		return batterys;
	}
	public void setBatterys(String batterys) {
		this.batterys = batterys;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getDirName() {
		return dirName;
	}
	public void setDirName(int dirName) {
		this.dirName = dirName;
	}
	public int getPtIds() {
		return ptId;
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
	public int getPtsize() {
		return ptsize;
	}
	public void setPtsize(int ptsize) {
		this.ptsize = ptsize;
	}
	public int getPtbattery() {
		return ptbattery;
	}
	public void setPtbattery(int ptbattery) {
		this.ptbattery = ptbattery;
	}
	public int getPtSta() {
		return ptSta;
	}
	public void setPtSta(int ptSta) {
		this.ptSta = ptSta;
	}
	public Product() {
		super();
	}
	@Override
	public String toString() {
		return "Product [ptId=" + ptId + ", ptPrice=" + ptPrice + ", ptPic="
				+ ptPic + ", ptNum=" + ptNum + ", goodsId=" + goodsId
				+ ", ptformat=" + ptformat + ", ptcolor=" + ptcolor
				+ ", ptnet=" + ptnet + ", ptversions=" + ptversions
				+ ", ptmemory=" + ptmemory + ", ptsize=" + ptsize
				+ ", ptbattery=" + ptbattery + ", ptSta=" + ptSta
				+ ", dirName=" + dirName + ", goodsName=" + goodsName + "]";
	}
	public Product(int ptId, double ptPrice, String ptPic, int ptNum,
			int goodsId, int ptformat, int ptcolor, int ptnet, int ptversions,
			int ptmemory, int ptsize, int ptbattery, int ptSta, int dirName,
			String goodsName) {
		super();
		this.ptId = ptId;
		this.ptPrice = ptPrice;
		this.ptPic = ptPic;
		this.ptNum = ptNum;
		this.goodsId = goodsId;
		this.ptformat = ptformat;
		this.ptcolor = ptcolor;
		this.ptnet = ptnet;
		this.ptversions = ptversions;
		this.ptmemory = ptmemory;
		this.ptsize = ptsize;
		this.ptbattery = ptbattery;
		this.ptSta = ptSta;
		this.dirName = dirName;
		this.goodsName = goodsName;
	}
	
}