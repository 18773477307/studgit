package com.xiaomi.entity;

import java.io.Serializable;


public class Resources  implements Serializable {
	private static final long serialVersionUID = 1L;
	
    private int resId;

    private String resName;
    
    private String resCont;

    private String resWords;

    private String resDate;
    
    private int resViews;

    private int goodsId;
    
    private String goodsName;
    
    private int resSta;

    private String reserve21;

    private String reserve22;

	public int getResId() {
		return resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
	}

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getResCont() {
		return resCont;
	}

	public void setResCont(String resCont) {
		this.resCont = resCont;
	}

	public String getResWords() {
		return resWords;
	}
	//标题截取
	public String getResWords28() {
		if(resWords.length()>28){
			return resWords.substring(0,28)+"...";
		}
		return resWords;
	}
	public void setResWords(String resWords) {
		this.resWords = resWords;
	}

	public String getResDate() {
		return resDate;
	}
	public String getResDates() {
		if(resDate!=null && resDate.length()>10){
			return resDate.substring(0,10);
		}
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}

	public int getResViews() {
		return resViews;
	}

	public void setResViews(int resViews) {
		this.resViews = resViews;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getResSta() {
		return resSta;
	}

	public void setResSta(int resSta) {
		this.resSta = resSta;
	}

	public String getReserve21() {
		return reserve21;
	}

	public void setReserve21(String reserve21) {
		this.reserve21 = reserve21;
	}

	public String getReserve22() {
		return reserve22;
	}

	public void setReserve22(String reserve22) {
		this.reserve22 = reserve22;
	}

	public Resources(int resId, String resName, String resCont,
			String resWords, String resDate, int resViews, int goodsId,
			String goodsName, int resSta, String reserve21, String reserve22) {
		super();
		this.resId = resId;
		this.resName = resName;
		this.resCont = resCont;
		this.resWords = resWords;
		this.resDate = resDate;
		this.resViews = resViews;
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.resSta = resSta;
		this.reserve21 = reserve21;
		this.reserve22 = reserve22;
	}

	public Resources() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "\nResources [resId=" + resId + ", resName=" + resName
				+ ", resCont=" + resCont + ", resWords=" + resWords
				+ ", resDate=" + resDate + ", resViews=" + resViews
				+ ", goodsId=" + goodsId + ", goodsName=" + goodsName
				+ ", resSta=" + resSta + ", reserve21=" + reserve21
				+ ", reserve22=" + reserve22 + "]";
	}

}