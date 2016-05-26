package com.xiaomi.entity;

import java.io.Serializable;


public class Resources  implements Serializable {
	private static final long serialVersionUID = 1L;
    private int resId;

    private int resName;

    private String resDate;

    private int goodsId;

    private String reserve21;

    private String reserve22;

	public int getResId() {
		return resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
	}

	public int getResName() {
		return resName;
	}

	public void setResName(int resName) {
		this.resName = resName;
	}

	public String getResDate() {
		return resDate;
	}

	public void setResDate(String resDate) {
		this.resDate = resDate;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
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

	public Resources(int resId, int resName, String resDate, int goodsId,
			String reserve21, String reserve22) {
		super();
		this.resId = resId;
		this.resName = resName;
		this.resDate = resDate;
		this.goodsId = goodsId;
		this.reserve21 = reserve21;
		this.reserve22 = reserve22;
	}

	public Resources() {
		super();
	}

	@Override
	public String toString() {
		return "Resources [resId=" + resId + ", resName=" + resName
				+ ", resDate=" + resDate + ", goodsId=" + goodsId
				+ ", reserve21=" + reserve21 + ", reserve22=" + reserve22 + "]";
	}
    
    
}