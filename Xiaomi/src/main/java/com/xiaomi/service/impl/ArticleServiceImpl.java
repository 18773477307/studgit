package com.xiaomi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.ArticleBean;
import com.xiaomi.mapper.ArticleMapper;
import com.xiaomi.service.ArticleService;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	private ArticleMapper articleMapper;
	
	@Override
	public List<ArticleBean> findallarticle() {
		return articleMapper.getallarticle();
	}

}
