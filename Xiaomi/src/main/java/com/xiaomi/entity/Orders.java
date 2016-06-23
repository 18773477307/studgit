package com.xiaomi.entity;

import java.io.Serializable;

public class Orders implements Serializable {
	private static final long serialVersionUID = 1L;

	private int ordId;

    private int addrId;

    private int usersId;

    private String ordDate;

    private double ordTatol;

    private int ordsta;

    private String reserve17;

    private String reserve18;


	public int getOrdId() {
		return ordId;
	}

	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}

	public int getAddrId() {
		return addrId;
	}

	public void setAddrId(int addrId) {
		this.addrId = addrId;
	}

	public int getUsersId() {
		return usersId;
	}

	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}

	public String getOrdDate() {
		return ordDate;
	}

	public void setOrdDate(String ordDate) {
		this.ordDate = ordDate;
	}

	public double getOrdTatol() {
		return ordTatol;
	}

	public void setOrdTatol(double ordTatol) {
		this.ordTatol = ordTatol;
	}

	public int getOrdsta() {
		return ordsta;
	}

	public void setOrdsta(int ordsta) {
		this.ordsta = ordsta;
	}

	public String getReserve17() {
		return reserve17;
	}

	public void setReserve17(String reserve17) {
		this.reserve17 = reserve17;
	}

	public String getReserve18() {
		return reserve18;
	}

	public void setReserve18(String reserve18) {
		this.reserve18 = reserve18;
	}

	public Orders(int ordId, int addrId, int usersId, String ordDate,
			double ordTatol, int ordsta, String reserve17, String reserve18) {
		super();
		this.ordId = ordId;
		this.addrId = addrId;
		this.usersId = usersId;
		this.ordDate = ordDate;
		this.ordTatol = ordTatol;
		this.ordsta = ordsta;
		this.reserve17 = reserve17;
		this.reserve18 = reserve18;
	}

	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
    
	@Override
	public String toString() {
		return "\nOrders [ordId=" + ordId + ", addrId=" + addrId + ", usersId="
				+ usersId + ", ordDate=" + ordDate + ", ordTatol=" + ordTatol
				+ ", ordsta=" + ordsta + ", reserve17=" + reserve17
				+ ", reserve18=" + reserve18 + "]";
	}

    
}