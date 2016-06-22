package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.ShopCar;

public interface ShopCarService {

	int findShopInfoByPtId(int ptId,int usersId);

	int addShopCarInfo(ShopCar shopCar);

	int updateShopCarInfo(ShopCar shopCar);
	
}
