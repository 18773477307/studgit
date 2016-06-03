package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Product;

public interface ProductService {

	List<Product> getAllProduct(Integer pageNo, Integer pageSize);

	int getTotalProduct();
	/**
	 * 获取所有商品的名字
	 * @return
	 */
	List<Product> getAllGoodsName();

	/**
	 * 总记录数
	 * @return
	 */
	int total();

	List<Product> findProductInfoByPtId(int ptId);

}
