package com.xiaomi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.ShopCar;
import com.xiaomi.entity.Shop_Goods_Car;
import com.xiaomi.mapper.ShopCarMapper;
import com.xiaomi.service.ShopCarService;
@Service("shopCarService")
public class ShopCarServiceImpl implements ShopCarService {
	@Autowired
	private ShopCarMapper shopCarMapper;

	@Override
	public List<Shop_Goods_Car> getShopCarInfoByUsers(int usersId) {
		return shopCarMapper.getShopCarInfoByUsers(usersId);
	}

	@Override
	public int delByShopId(int shopId) {
		return shopCarMapper.delByShopId(shopId);
	}

}
