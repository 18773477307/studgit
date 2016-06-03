package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<Product> getAllProduct(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return  productMapper.getAllProduct(params);
	}

	@Override
	public int getTotalProduct() {
		return productMapper.getTotalProduct();
	}
	@Override
	public List<Product> getAllGoodsName() {
		return productMapper.getAllGoodsName();
	}

	@Override
	public int total() {
		return productMapper.getTotal();
	}

	@Override
	public List<Product> findProductInfoByPtId(int ptId) {
		return productMapper.getProductInfoByPtId(ptId);
	}
}
