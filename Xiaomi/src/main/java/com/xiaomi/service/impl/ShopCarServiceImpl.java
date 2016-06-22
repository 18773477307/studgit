package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.ShopCar;
import com.xiaomi.mapper.ShopCarMapper;
import com.xiaomi.service.ShopCarService;

@Service("shopCarService")
public class ShopCarServiceImpl implements ShopCarService {
	@Autowired
	private ShopCarMapper shopCarMapper;

	@Override
	public int findShopInfoByPtId(int ptId,int usersId) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("ptId", ptId);
		params.put("usersId", usersId);
		return shopCarMapper.findShopInfoByPtId(params);
	}

	@Override
	public int addShopCarInfo(ShopCar shopCar) {
		return shopCarMapper.addShopCarInfo(shopCar);
	}

	@Override
	public int updateShopCarInfo(ShopCar shopCar) {
		return shopCarMapper.updateShopCarInfo(shopCar);
	}

}
