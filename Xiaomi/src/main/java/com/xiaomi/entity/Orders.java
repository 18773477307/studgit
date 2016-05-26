package com.xiaomi.entity;

public class Orders {
	private String ordId;
	private int addrId;
	private String usersId;
	private String ordDate;
	private double ordTatol;
	private int ordSta;
	private String reserve19;
	private String reserve20;
	private String usersName;
	private String province;
	private String city;
	private String county;
	private String detailAddr;
	private String addrTel;
	private String reserve3;
	private String goodsName;
	private String format;
	private String color;
	private String memory;
	private String versions;
	private int detaNum;
	private String reserve4;
	
	public String getReserve4() {
		return reserve4;
	}
	public void setReserve4(String reserve4) {
		this.reserve4 = reserve4;
	}

	private String detailDelivery;	//收货地址的集合
   
    
     
	public String getProvince() {
		return province;
	}
	public String getDetailDelivery() {
		return detailDelivery=province+city+county+detailAddr;
	}
	public void setDetailDelivery(String detailDelivery) {
		this.detailDelivery = detailDelivery;
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
	public String getReserve3() {
		return reserve3;
	}
	public void setReserve3(String reserve3) {
		this.reserve3 = reserve3;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getFormat() {
		return format;
	}
	public void setFormat(String format) {
		this.format = format;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	public String getVersions() {
		return versions;
	}
	public void setVersions(String versions) {
		this.versions = versions;
	}
	public int getDetaNum() {
		return detaNum;
	}
	public void setDetaNum(int detaNum) {
		this.detaNum = detaNum;
	}
	public String getUsersName() {
		return usersName;
	}
	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}
	//订单编号
	public String getOrdId() {
		return ordId;
	}
	public void setOrdId(String ordId) {
		this.ordId = ordId;
	}
	
	
	 //收获地址
	public int getAddrId() {
		return addrId;
	}
	public void setAddrId(int addrId) {
		this.addrId = addrId;
	}
	
	
	 //用户编号，引入外键
	public String getUsersId() {
		return usersId;
	}
	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}

	
    //订单日期
	public String getOrdDate() {
		return ordDate;
	}
	public void setOrdDate(String ordDate) {
		this.ordDate = ordDate;
	}
	
	public String getOrdDates() {
		if(ordDate!=null && ordDate.length()>10){
			return ordDate.substring(0,10);
		}
		return ordDate;
	}
	
	//订单总价
	public double getOrdTatol() {
		return ordTatol;
	}
	public void setOrdTatol(double ordTatol) {
		this.ordTatol = ordTatol;
	}
	
	 //订单状态  暂定
	public int getOrdSta() {
		return ordSta;
	}
	public void setOrdSta(int ordSta) {
		this.ordSta = ordSta;
	}
	
	 //备用字段
	public String getReserve19() {
		return reserve19;
	}
	public void setReserve19(String reserve19) {
		this.reserve19 = reserve19;
	}
	
	 //备用字段
	public String getReserve20() {
		return reserve20;
	}
	public void setReserve20(String reserve20) {
		this.reserve20 = reserve20;
	}
	
	
	@Override
	public String toString() {
		return "Orders [ordId=" + ordId + ", addrId=" + addrId + ", usersId="
				+ usersId + ", ordDate=" + ordDate + ", ordTatol=" + ordTatol
				+ ", ordSta=" + ordSta + ", reserve19=" + reserve19
				+ ", reserve20=" + reserve20 + "]";
	}
	
	public Orders(String ordId, int addrId, String usersId, String ordDate,
			double ordTatol, int ordSta, String reserve19, String reserve20) {
		super();
		this.ordId = ordId;
		this.addrId = addrId;
		this.usersId = usersId;
		this.ordDate = ordDate;
		this.ordTatol = ordTatol;
		this.ordSta = ordSta;
		this.reserve19 = reserve19;
		this.reserve20 = reserve20;
	}
	
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
 
    
	
	
	    
}
