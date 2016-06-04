package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.entity.Goods;
import com.xiaomi.service.GoodsService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class GoodsServiceImplTest {
	@Autowired
	private GoodsService goodsService;
	
	@Test
	public void testFindallgoods() {
		List<Goods> goodsNames=goodsService.getallgoodname();
		System.out.println(goodsNames);
		assertNotNull(goodsNames);
	}

}
