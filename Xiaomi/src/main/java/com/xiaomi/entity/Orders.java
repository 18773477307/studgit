package com.xiaomi.entity;

import java.io.Serializable;

public class Orders implements Serializable {
	private static final long serialVersionUID = 1L;

	private int ordId;

    private int addrId;

    private int usersId;

    private String ordDate;

    private double ordTatol;

    private int ordSta;

    private String usersName;

    private String province;
    private String city;
    private String county;
    private String detailAddr;
    private String detailDelivery;	//收货地址的集合
    private String recipient;   //收货人姓名

	public int getOrdId() {
		return ordId;
	}
	
	public int getOrdIds() {
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

	public int getOrdSta() {
		return ordSta;
	}
	public void setOrdSta(int ordSta) {
		this.ordSta = ordSta;
	}

	public String getUsersName() {
		return usersName;
	}

	public String getProvince() {
		return province;
	}

	public String getCity() {
		return city;
	}

	public String getCounty() {
		return county;
	}

	public String getDetailAddr() {
		return detailAddr;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}
	
	public String getDetailDelivery() {
		return detailDelivery=province+city+county+detailAddr;
	}

	public void setDetailDelivery(String detailDelivery) {
		this.detailDelivery = detailDelivery;
	}

	
	
	
	
	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	@Override
	public String toString() {
		return "Orders [ordId=" + ordId + ", addrId=" + addrId + ", usersId="
				+ usersId + ", ordDate=" + ordDate + ", ordTatol=" + ordTatol
				+ ", ordSta=" + ordSta + ", usersName=" + usersName
				+ ", province=" + province + ", city=" + city + ", county="
				+ county + ", detailAddr=" + detailAddr + "]";
	}

	public Orders(int ordId, int addrId, int usersId, String ordDate,
			double ordTatol, int ordSta, String usersName, String province,
			String city, String county, String detailAddr) {
		super();
		this.ordId = ordId;
		this.addrId = addrId;
		this.usersId = usersId;
		this.ordDate = ordDate;
		this.ordTatol = ordTatol;
		this.ordSta = ordSta;
		this.usersName = usersName;
		this.province = province;
		this.city = city;
		this.county = county;
		this.detailAddr = detailAddr;
	}
}