package com.xiaomi.entity;

import java.io.Serializable;

public class Shop_Goods_Car implements Serializable {
	private static final long serialVersionUID = 1L;
	private int shopId; // 购物车编号
	private int usersId;// 用户编号
	private int ptId; // 产品商品详细信息编号
	private int shopNum;// 商品数量
	private String shopSta;
	private String reserve15;
	private String reserve16;

	private int goodsId; // 商品编号
	private String usersName;// 用户名称
	private String goodsName;// 商品名称
	private double ptPrice; // 价格（原价）
	private String goodsminPic;// 商品小图片

	

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public int getUsersId() {
		return usersId;
	}

	public void setUsersId(int usersId) {
		this.usersId = usersId;
	}

	public int getPtId() {
		return ptId;
	}

	public void setPtId(int ptId) {
		this.ptId = ptId;
	}

	public int getShopNum() {
		return shopNum;
	}

	public void setShopNum(int shopNum) {
		this.shopNum = shopNum;
	}

	public String getShopSta() {
		return shopSta;
	}

	public void setShopSta(String shopSta) {
		this.shopSta = shopSta;
	}

	public String getReserve15() {
		return reserve15;
	}

	public void setReserve15(String reserve15) {
		this.reserve15 = reserve15;
	}

	public String getReserve16() {
		return reserve16;
	}

	public void setReserve16(String reserve16) {
		this.reserve16 = reserve16;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
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

	public double getPtPrice() {
		return ptPrice;
	}

	public void setPtPrice(double ptPrice) {
		this.ptPrice = ptPrice;
	}

	public String getGoodsminPic() {
		return goodsminPic;
	}

	public void setGoodsminPic(String goodsminPic) {
		this.goodsminPic = goodsminPic;
	}

	public Shop_Goods_Car() {
		super();
	}

	@Override
	public String toString() {
		return "Shop_Goods_Car [shopId=" + shopId + ", usersId=" + usersId
				+ ", ptId=" + ptId + ", shopNum=" + shopNum + ", shopSta="
				+ shopSta + ", reserve15=" + reserve15 + ", reserve16="
				+ reserve16 + ", goodsId=" + goodsId + ", usersName="
				+ usersName + ", goodsName=" + goodsName + ", ptPrice="
				+ ptPrice + ", goodsminPic=" + goodsminPic + "]";
	}

	public Shop_Goods_Car(int shopId, int usersId, int ptId, int shopNum,
			String shopSta, String reserve15, String reserve16, int goodsId,
			String usersName, String goodsName, double ptPrice,
			String goodsminPic) {
		super();
		this.shopId = shopId;
		this.usersId = usersId;
		this.ptId = ptId;
		this.shopNum = shopNum;
		this.shopSta = shopSta;
		this.reserve15 = reserve15;
		this.reserve16 = reserve16;
		this.goodsId = goodsId;
		this.usersName = usersName;
		this.goodsName = goodsName;
		this.ptPrice = ptPrice;
		this.goodsminPic = goodsminPic;
	}
}
