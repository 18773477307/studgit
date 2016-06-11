package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Shop_Goods_Car;

public interface ShopCarService {

	List<Shop_Goods_Car> getShopCarInfoByUsers(int usersId);

	int delByShopId(int shopId);

}
