package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.entity.Datadict;
import com.xiaomi.service.DatadictService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class DatadictServiceImplTest {
	@Autowired
	DatadictService datadictService;

	@Test
	public void testGetAllDatadict() {
		List<Datadict> datadict = datadictService.find(1, 5);
		System.out.println(datadict);
		assertNotNull("不能为空！！！！",datadict);
	}
	
	@Test
	public void testgetTotal() {
		int total = datadictService.total();
		System.out.println(total);
		assertNotNull("获取总记录数失败！！！！",total);
	}

}
