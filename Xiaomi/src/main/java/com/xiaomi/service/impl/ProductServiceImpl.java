package com.xiaomi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Product;
import com.xiaomi.mapper.ProductMapper;
import com.xiaomi.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper productMapper;

	@Override
	public List<Product> getAllGoodsName() {
		return productMapper.getAllGoodsName();
	}

	@Override
	public int total() {
		return productMapper.getTotal();
	}

}
