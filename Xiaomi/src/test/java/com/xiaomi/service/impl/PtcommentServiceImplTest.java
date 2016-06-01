package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.entity.Ptcomment;
import com.xiaomi.service.PtcommentService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class PtcommentServiceImplTest {
	@Autowired
	private PtcommentService ptcommentService;
	
	@Test
	public void testGetAllPtcomment() {
		List<Ptcomment> ptcomments = ptcommentService.find(1, 10);
		System.out.println(ptcomments);
		assertNotNull("获取所有的商品评价失败！！！",ptcomments);
	}

	@Test
	public void testFindPtcommentByApprId() {
		Ptcomment ptcom = ptcommentService.find(1001);
		System.out.println(ptcom);
		assertNotNull("查询失败！！",ptcom);
	}

}
