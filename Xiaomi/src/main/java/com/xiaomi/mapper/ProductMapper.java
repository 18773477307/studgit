package com.xiaomi.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Product;

@Repository("productMapper")
public interface ProductMapper {

	/**
	 * 获取所有的商品名称
	 * @return
	 */
	List<Product> getAllGoodsName();

	int getTotal();

}