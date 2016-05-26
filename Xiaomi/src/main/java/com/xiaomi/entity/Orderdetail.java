package com.xiaomi.entity;

import java.io.Serializable;


public class Orderdetail implements Serializable {
	private static final long serialVersionUID = 1L;

	private int ordId;

    private int ptId;

    private int detaPrice;

    private int detaNum;

    private int detaSta;

    private String reserve19;

    private String reserve20;

	public int getOrdId() {
		return ordId;
	}

	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}

	public int getPtId() {
		return ptId;
	}

	public void setPtId(int ptId) {
		this.ptId = ptId;
	}

	public int getDetaPrice() {
		return detaPrice;
	}

	public void setDetaPrice(int detaPrice) {
		this.detaPrice = detaPrice;
	}

	public int getDetaNum() {
		return detaNum;
	}

	public void setDetaNum(int detaNum) {
		this.detaNum = detaNum;
	}

	public int getDetaSta() {
		return detaSta;
	}

	public void setDetaSta(int detaSta) {
		this.detaSta = detaSta;
	}

	public String getReserve19() {
		return reserve19;
	}

	public void setReserve19(String reserve19) {
		this.reserve19 = reserve19;
	}

	public String getReserve20() {
		return reserve20;
	}

	public void setReserve20(String reserve20) {
		this.reserve20 = reserve20;
	}

	@Override
	public String toString() {
		return "Orderdetail [ordId=" + ordId + ", ptId=" + ptId
				+ ", detaPrice=" + detaPrice + ", detaNum=" + detaNum
				+ ", detaSta=" + detaSta + ", reserve19=" + reserve19
				+ ", reserve20=" + reserve20 + "]";
	}

	public Orderdetail(int ordId, int ptId, int detaPrice, int detaNum,
			int detaSta, String reserve19, String reserve20) {
		super();
		this.ordId = ordId;
		this.ptId = ptId;
		this.detaPrice = detaPrice;
		this.detaNum = detaNum;
		this.detaSta = detaSta;
		this.reserve19 = reserve19;
		this.reserve20 = reserve20;
	}

	public Orderdetail() {
		super();
		// TODO Auto-generated constructor stub
	}

   
}