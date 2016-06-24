package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.entity.Product;
import com.xiaomi.service.ProductService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ProductServiceImplTest {
	@Autowired
	ProductService productService;

	@Test
	public void testGetAllGoodsName() {
		List<Product> productsName = productService.getAllGoodsName();
		System.out.println(productsName);
		assertNotNull("获取商品名称失败！！！",productsName);
	}
	
	@Test
	public void testFindPtIdByGoodsId() {
		Product pro = productService.findPtIdByGoodsId(1002);
		System.out.println(pro);
		assertNotNull("获取商品信息失败！！！",pro);
	}
	
	@Test
	public void testFindProductsByGoodsId() {
		List<Product> pros = productService.findProductByGoodsId(1001);
		System.out.println(pros);
	}

}
