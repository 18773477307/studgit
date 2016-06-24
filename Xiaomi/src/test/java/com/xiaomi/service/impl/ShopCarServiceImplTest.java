package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.service.ShopCarService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ShopCarServiceImplTest {
	@Autowired
	private ShopCarService shopCarService;

	@Test
	public void testFindShopInfoByPtId() {
		int shopNum = shopCarService.findShopInfoByPtId(1001, 1001);
		System.out.println(shopNum);
		assertNotNull("获取数量失败！！！",shopNum);
	}

}
