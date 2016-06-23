package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Shop_Goods_Car;

public interface ShopCarService {

	int findShopInfoByPtId(int ptId,int usersId);

	int addShopCarInfo(Shop_Goods_Car shopCar);

	int updateShopCarInfo(Shop_Goods_Car shopCar);
	
	List<Shop_Goods_Car> getShopCarInfoByUsers(int usersId);

	int delByShopId(int shopId);

}
