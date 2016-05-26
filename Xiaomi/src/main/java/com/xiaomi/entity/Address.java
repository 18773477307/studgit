package com.xiaomi.entity;

import java.io.Serializable;

public class Address implements Serializable{
	private static final long serialVersionUID = -4662270525044641056L;

	private int addrid;

    private int usersid;

    private String province;

    private String city;

    private String county;

    private String detailaddr;

    private String addrtel;

    private int defaultaddr;

    private String postcode;

    private String recipient;

    private String reserve3;

    private String reserve4;

	public int getAddrid() {
		return addrid;
	}

	public void setAddrid(int addrid) {
		this.addrid = addrid;
	}

	public int getUsersid() {
		return usersid;
	}

	public void setUsersid(int usersid) {
		this.usersid = usersid;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getDetailaddr() {
		return detailaddr;
	}

	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}

	public String getAddrtel() {
		return addrtel;
	}

	public void setAddrtel(String addrtel) {
		this.addrtel = addrtel;
	}

	public int getDefaultaddr() {
		return defaultaddr;
	}

	public void setDefaultaddr(int defaultaddr) {
		this.defaultaddr = defaultaddr;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public String getReserve3() {
		return reserve3;
	}

	public void setReserve3(String reserve3) {
		this.reserve3 = reserve3;
	}

	public String getReserve4() {
		return reserve4;
	}

	public void setReserve4(String reserve4) {
		this.reserve4 = reserve4;
	}

	@Override
	public String toString() {
		return "\nAddress [addrid=" + addrid + ", usersid=" + usersid
				+ ", province=" + province + ", city=" + city + ", county="
				+ county + ", detailaddr=" + detailaddr + ", addrtel="
				+ addrtel + ", defaultaddr=" + defaultaddr + ", postcode="
				+ postcode + ", recipient=" + recipient + ", reserve3="
				+ reserve3 + ", reserve4=" + reserve4 + "]";
	}

	public Address(int addrid, int usersid, String province, String city,
			String county, String detailaddr, String addrtel, int defaultaddr,
			String postcode, String recipient, String reserve3, String reserve4) {
		super();
		this.addrid = addrid;
		this.usersid = usersid;
		this.province = province;
		this.city = city;
		this.county = county;
		this.detailaddr = detailaddr;
		this.addrtel = addrtel;
		this.defaultaddr = defaultaddr;
		this.postcode = postcode;
		this.recipient = recipient;
		this.reserve3 = reserve3;
		this.reserve4 = reserve4;
	}

	public Address() {
	}
    
}