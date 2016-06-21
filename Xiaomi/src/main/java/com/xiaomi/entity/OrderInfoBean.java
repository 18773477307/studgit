package com.xiaomi.entity;

import java.io.Serializable;

public class OrderInfoBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int ordId;
    private int addrId;
    private int usersId;
    private String ordDate;
    private double ordTatol;
    private int ordsta;
    
    private int ptId;
    private int detaPrice;
    private int detaNum;
    private int detaSta;
    private String reserve17;
    private String reserve18;
    private String reserve19;
    private String reserve20;
	public int getOrdId() {
		return ordId;
	}
	public int getAddrId() {
		return addrId;
	}
	public int getUsersId() {
		return usersId;
	}
	public String getOrdDate() {
		return ordDate;
	}
	public double getOrdTatol() {
		return ordTatol;
	}
	public int getOrdsta() {
		return ordsta;
	}
	public int getPtId() {
		return ptId;
	}
	public int getDetaPrice() {
		return detaPrice;
	}
	public int getDetaNum() {
		return detaNum;
	}
	public int getDetaSta() {
		return detaSta;
	}
	public String getReserve17() {
		return reserve17;
	}
	public String getReserve18() {
		return reserve18;
	}
	public String getReserve19() {
		return reserve19;
	}
	public String getReserve20() {
		return reserve20;
	}
	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}
	public void setAddrId(int addrId) {
		this.addrId = addrId;
	}
	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}
	public void setOrdDate(String ordDate) {
		this.ordDate = ordDate;
	}
	public void setOrdTatol(double ordTatol) {
		this.ordTatol = ordTatol;
	}
	public void setOrdsta(int ordsta) {
		this.ordsta = ordsta;
	}
	public void setPtId(int ptId) {
		this.ptId = ptId;
	}
	public void setDetaPrice(int detaPrice) {
		this.detaPrice = detaPrice;
	}
	public void setDetaNum(int detaNum) {
		this.detaNum = detaNum;
	}
	public void setDetaSta(int detaSta) {
		this.detaSta = detaSta;
	}
	public void setReserve17(String reserve17) {
		this.reserve17 = reserve17;
	}
	public void setReserve18(String reserve18) {
		this.reserve18 = reserve18;
	}
	public void setReserve19(String reserve19) {
		this.reserve19 = reserve19;
	}
	public void setReserve20(String reserve20) {
		this.reserve20 = reserve20;
	}
	@Override
	public String toString() {
		return "OrderInfoBean [ordId=" + ordId + ", addrId=" + addrId
				+ ", usersId=" + usersId + ", ordDate=" + ordDate
				+ ", ordTatol=" + ordTatol + ", ordsta=" + ordsta + ", ptId="
				+ ptId + ", detaPrice=" + detaPrice + ", detaNum=" + detaNum
				+ ", detaSta=" + detaSta + ", reserve17=" + reserve17
				+ ", reserve18=" + reserve18 + ", reserve19=" + reserve19
				+ ", reserve20=" + reserve20 + "]";
	}
	public OrderInfoBean(int ordId, int addrId, int usersId, String ordDate,
			double ordTatol, int ordsta, int ptId, int detaPrice, int detaNum,
			int detaSta, String reserve17, String reserve18, String reserve19,
			String reserve20) {
		super();
		this.ordId = ordId;
		this.addrId = addrId;
		this.usersId = usersId;
		this.ordDate = ordDate;
		this.ordTatol = ordTatol;
		this.ordsta = ordsta;
		this.ptId = ptId;
		this.detaPrice = detaPrice;
		this.detaNum = detaNum;
		this.detaSta = detaSta;
		this.reserve17 = reserve17;
		this.reserve18 = reserve18;
		this.reserve19 = reserve19;
		this.reserve20 = reserve20;
	}
	public OrderInfoBean() {
		super();
	}
}
