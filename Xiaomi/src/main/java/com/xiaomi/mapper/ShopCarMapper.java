package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Shop_Goods_Car;

@Repository("shopCarMapper")
public interface ShopCarMapper {

	int findShopInfoByPtId(Map<String, Object> params);

	int addShopCarInfo(Shop_Goods_Car shopCar);

	int updateShopCarInfo(Shop_Goods_Car shopCar);

	List<Shop_Goods_Car> getShopCarInfoByUsers(int usersId);

	int delByShopId(int shopId);

	void updateStaByUidPid(Map<String, Object> map2);
}
