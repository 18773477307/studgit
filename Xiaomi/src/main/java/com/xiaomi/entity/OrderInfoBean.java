package com.xiaomi.entity;

import java.io.Serializable;
import java.util.List;

public class OrderInfoBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private int ordId;
	private int addrId;
	private int usersId;
	private String ordDate;
	private double ordTatol;
	private int ordSta;
	private String recipient; // 收货人姓名
	private List<Orderdetail> orderdetails;

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

	public int getOrdSta() {
		return ordSta;
	}

	public String getRecipient() {
		return recipient;
	}

	public List<Orderdetail> getOrderdetails() {
		return orderdetails;
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

	public void setOrdSta(int ordSta) {
		this.ordSta = ordSta;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public void setOrderdetails(List<Orderdetail> orderdetails) {
		this.orderdetails = orderdetails;
	}

	public OrderInfoBean() {
		super();
	}

	public OrderInfoBean(int ordId, int addrId, int usersId, String ordDate,
			double ordTatol, int ordSta, String recipient,
			List<Orderdetail> orderdetails) {
		super();
		this.ordId = ordId;
		this.addrId = addrId;
		this.usersId = usersId;
		this.ordDate = ordDate;
		this.ordTatol = ordTatol;
		this.ordSta = ordSta;
		this.recipient = recipient;
		this.orderdetails = orderdetails;
	}

	@Override
	public String toString() {
		return "\nOrderInfoBean [ordId=" + ordId + ", addrId=" + addrId
				+ ", usersId=" + usersId + ", ordDate=" + ordDate
				+ ", ordTatol=" + ordTatol + ", ordSta=" + ordSta
				+ ", recipient=" + recipient + ", orderdetails=" + orderdetails
				+ "]";
	}

}
