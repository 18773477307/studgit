package com.xiaomi.entity;

public class Address {
	private int addrId;
	private int usersId;
	private String province;
	private String city;
	private String county;
	private String detailAddr;
	private String addrTel;
	private int defaultaddr;
	private String postcode;
	private String recipient;
	private String reserve3;
	private String reserve4;

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

	public String getDetailAddr() {
		return detailAddr;
	}

	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}

	public String getAddrTel() {
		return addrTel;
	}

	public void setAddrTel(String addrTel) {
		this.addrTel = addrTel;
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
		return "Address [addrId=" + addrId + ", usersId=" + usersId
				+ ", province=" + province + ", city=" + city + ", county="
				+ county + ", detailAddr=" + detailAddr + ", addrTel="
				+ addrTel + ", defaultaddr=" + defaultaddr + ", postcode="
				+ postcode + ", recipient=" + recipient + ", reserve3="
				+ reserve3 + ", reserve4=" + reserve4 + "]";
	}

	public Address(int addrId, int usersId, String province, String city,
			String county, String detailAddr, String addrTel, int defaultaddr,
			String postcode, String recipient, String reserve3, String reserve4) {
		super();
		this.addrId = addrId;
		this.usersId = usersId;
		this.province = province;
		this.city = city;
		this.county = county;
		this.detailAddr = detailAddr;
		this.addrTel = addrTel;
		this.defaultaddr = defaultaddr;
		this.postcode = postcode;
		this.recipient = recipient;
		this.reserve3 = reserve3;
		this.reserve4 = reserve4;
	}

	public Address() {
		super();
	}
}