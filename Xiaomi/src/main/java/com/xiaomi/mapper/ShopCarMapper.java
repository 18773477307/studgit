package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Shop_Goods_Car;
@Repository("shopCarMapper")
public interface ShopCarMapper {

	List<Shop_Goods_Car> getShopCarInfoByUsers(int usersId);

	int delByShopId(int shopId);

	//修改购物车中已购买商品的状态
	void updateStaByUidPid(Map<String, Object> map2);
}