package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Product;
@Repository("productMapper")
public interface ProductMapper {

	List<Product> getAllProduct(Map<String, Object> params);

	int getTotalProduct();
}