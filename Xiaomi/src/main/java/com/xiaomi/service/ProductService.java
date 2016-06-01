package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Product;

public interface ProductService {

	List<Product> getAllProduct(Integer pageNo, Integer pageSize);

	int getTotalProduct();

}
