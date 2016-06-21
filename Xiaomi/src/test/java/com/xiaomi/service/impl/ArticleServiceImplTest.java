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
		List<ArticleBean> articles=articleService.findallarticle(1, 10);
		System.out.println(articles);
		assertNotNull(articles);
	}
	
	@Test
	public void testFindarticlebydata() {
		ArticleBean articleBean=new ArticleBean();
		articleBean.setArtTitle("明"); 
		articleBean.setArtStaTime("2016-06-01");
		System.out.println(articleBean);
		List<ArticleBean> articles=articleService.findarticlebydata(articleBean,1,10);
		System.out.println(articles);
		assertNotNull(articles);
	}
	
	@Test
	public void testFindarticlebyInfo() {
		ArticleBean articleBean=new ArticleBean();
		articleBean.setArtId(1004);
		ArticleBean article=articleService.findarticlebyInfo(articleBean);
		System.out.println(article);
		assertNotNull(article);
	}

}
