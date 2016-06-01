package com.xiaomi.entity;

import java.io.Serializable;


public class Ptcomment implements Serializable {
	private static final long serialVersionUID = 1L;

	private int apprId;

    private int ptId;

    private int usersId;
    
    private int goodsId;
    
    private String goodsName;
    
    private String usersName;

    private String apprDate;

    private int apprSta;

    private String reserve27;

    private String reserve28;

    private String apprcont;
    

	public int getApprId() {
		return apprId;
	}

	public void setApprId(int apprId) {
		this.apprId = apprId;
	}

	public int getPtId() {
		return ptId;
	}

	public void setPtId(int ptId) {
		this.ptId = ptId;
	}

	public int getUsersId() {
		return usersId;
	}

	public void setUsersId(int usersId) {
		this.usersId = usersId;
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

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getApprDate() {
		return apprDate;
	}

	public void setApprDate(String apprDate) {
		this.apprDate = apprDate;
	}

	public int getApprSta() {
		return apprSta;
	}

	public void setApprSta(int apprSta) {
		this.apprSta = apprSta;
	}

	public String getReserve27() {
		return reserve27;
	}

	public void setReserve27(String reserve27) {
		this.reserve27 = reserve27;
	}

	public String getReserve28() {
		return reserve28;
	}

	public void setReserve28(String reserve28) {
		this.reserve28 = reserve28;
	}

	public String getApprcont() {
		return apprcont;
	}

	public void setApprcont(String apprcont) {
		this.apprcont = apprcont;
	}

	@Override
	public String toString() {
		return "Ptcomment [apprId=" + apprId + ", ptId=" + ptId + ", usersId="
				+ usersId + ", apprDate=" + apprDate + ", apprSta=" + apprSta
				+ ", reserve27=" + reserve27 + ", reserve28=" + reserve28
				+ ", apprcont=" + apprcont + ", goodsName=" + goodsName
				+ ", usersName=" + usersName + "]";
	}

	public Ptcomment(int apprId, int ptId, int usersId, String apprDate,
			int apprSta, String reserve27, String reserve28, String apprcont,
			String goodsName, String usersName) {
		super();
		this.apprId = apprId;
		this.ptId = ptId;
		this.usersId = usersId;
		this.apprDate = apprDate;
		this.apprSta = apprSta;
		this.reserve27 = reserve27;
		this.reserve28 = reserve28;
		this.apprcont = apprcont;
		this.goodsName = goodsName;
		this.usersName = usersName;
	}

	public Ptcomment() {
		super();
	}
    
    
}