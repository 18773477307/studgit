package com.xiaomi.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Shop_Goods_Car;
@Repository("shopCarMapper")
public interface ShopCarMapper {

	List<Shop_Goods_Car> getShopCarInfoByUsers(int usersId);
}