package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<ArticleBean> findallarticle(Integer pageNo,Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return articleMapper.getallarticle(params);
	}

	@Override
	public int total() {
		return articleMapper.selectTotalArticle();
	}

	@Override
	public List<ArticleBean> findarticlebydata(ArticleBean articleBean) {
		return articleMapper.selectArticleByData(articleBean);
	}

	@Override
	public List<ArticleBean> findarticlebyartId(ArticleBean articleBean) {
		return articleMapper.selectArticleByArtId(articleBean);
	}

	@Override
	public int addArticleInfo(ArticleBean articleBean) {
		return articleMapper.insertArticle(articleBean);
	}

}
