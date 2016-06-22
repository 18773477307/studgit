package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.ShopCar;

@Repository("shopCarMapper")
public interface ShopCarMapper {

	int findShopInfoByPtId(Map<String, Object> params);

	int addShopCarInfo(ShopCar shopCar);

	int updateShopCarInfo(ShopCar shopCar);
}