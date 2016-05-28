package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.entity.ArticleBean;
import com.xiaomi.service.ArticleService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ArticleServiceImplTest {
	
	@Autowired
	private ArticleService articleService;
	@Test
	public void testFindallarticle() {
		List<ArticleBean> articles=articleService.findallarticle();
		System.out.println(articles);
		assertNotNull(articles);
	}

}
