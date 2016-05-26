package com.xiaomi.entity;

import java.io.Serializable;


public class ShopCar  implements Serializable {
	private static final long serialVersionUID = 1L;
    private int shopId;

    private int usersId;

    private int ptId;

    private int shopNum;

    private String shopSta;

    private String reserve15;

    private String reserve16;

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

	@Override
	public String toString() {
		return "ShopCar [shopId=" + shopId + ", usersId=" + usersId + ", ptId="
				+ ptId + ", shopNum=" + shopNum + ", shopSta=" + shopSta
				+ ", reserve15=" + reserve15 + ", reserve16=" + reserve16 + "]";
	}

	public ShopCar(int shopId, int usersId, int ptId, int shopNum,
			String shopSta, String reserve15, String reserve16) {
		super();
		this.shopId = shopId;
		this.usersId = usersId;
		this.ptId = ptId;
		this.shopNum = shopNum;
		this.shopSta = shopSta;
		this.reserve15 = reserve15;
		this.reserve16 = reserve16;
	}

	public ShopCar() {
		super();
	}

    
}