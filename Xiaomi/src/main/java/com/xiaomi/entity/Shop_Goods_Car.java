package com.xiaomi.entity;

public class Shop_Goods_Car {
	private int shopId;
	private String usersId;
	private String goodsId;
	private int goodsNum;
	private String reserve17;
	private String reserve18;
	private String usersName;
	private String goodsName;
	private double goodsPrice;
	private String goodsPic;
	
	@Override
	public String toString() {
		return "Shop_Goods_Car [shopId=" + shopId + ", usersId=" + usersId
				+ ", goodsId=" + goodsId + ", goodsNum=" + goodsNum
				+ ", reserve17=" + reserve17 + ", reserve18=" + reserve18
				+ ", usersName=" + usersName + ", goodsName=" + goodsName
				+ ", goodsPrice=" + goodsPrice + ", goodsPic=" + goodsPic + "]";
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public String getUsersId() {
		return usersId;
	}

	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public int getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
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

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsPic() {
		return goodsPic;
	}

	public void setGoodsPic(String goodsPic) {
		this.goodsPic = goodsPic;
	}

	public Shop_Goods_Car(int shopId, String usersId, String goodsId,
			int goodsNum, String reserve17, String reserve18, String usersName,
			String goodsName, double goodsPrice, String goodsPic) {
		super();
		this.shopId = shopId;
		this.usersId = usersId;
		this.goodsId = goodsId;
		this.goodsNum = goodsNum;
		this.reserve17 = reserve17;
		this.reserve18 = reserve18;
		this.usersName = usersName;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsPic = goodsPic;
	}

	public Shop_Goods_Car() {
		super();
	}
	
	
}
