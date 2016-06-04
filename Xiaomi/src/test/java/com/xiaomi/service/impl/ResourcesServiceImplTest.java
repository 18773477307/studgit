package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.entity.ArticleBean;
import com.xiaomi.entity.Resources;
import com.xiaomi.service.ResourcesService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ResourcesServiceImplTest {
	@Autowired
	private ResourcesService resourcesService;

	@Test
	public void testFindallResources() {
		List<Resources> videos=resourcesService.findallResources(1, 10);
		System.out.println(videos);
		assertNotNull(videos);
	}
	
	@Test
	public void testFindResourcesByInfo() {
		Resources resources=new Resources();
		resources.setResName("max"); 
		System.out.println(resources);
		List<Resources> videos=resourcesService.findResourcesByInfo(resources,1,10);
		System.out.println(videos);
		assertNotNull(videos);
	}

}
