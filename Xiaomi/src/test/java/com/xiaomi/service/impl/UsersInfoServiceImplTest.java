package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.entity.UsersInfo;
import com.xiaomi.service.UsersInfoService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UsersInfoServiceImplTest {
	
	@Autowired
	private UsersInfoService usersInfoService;

	@Test
	public void testGetAllUserNames() {
		List<UsersInfo> usersName = usersInfoService.getAllUserNames();
		System.out.println(usersName);
		assertNotNull("获取用户名称失败！！",usersName);
	}

}
