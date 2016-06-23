package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.xiaomi.entity.Article;
import com.xiaomi.entity.ArticleBean;
import com.xiaomi.mapper.ArticleMapper;
import com.xiaomi.service.ArticleService;
@Transactional
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
	public List<ArticleBean> findarticlebydata(ArticleBean articleBean,Integer pageNo,Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("articleBean", articleBean);
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return articleMapper.selectArticleByData(params);
	}

	@Override
	public List<ArticleBean> findarticlebyartId(ArticleBean articleBean) {
		return articleMapper.selectArticleByArtId(articleBean);
	}

	@Override
	public int addArticleInfo(ArticleBean articleBean) {
		return articleMapper.insertArticle(articleBean);
	}

	@Override
	public int updateArticle(ArticleBean articleBean) {
		return articleMapper.updateArticle(articleBean);
	}

	@Transactional(propagation=Propagation.REQUIRED)
	public boolean updateArtSta(ArticleBean articleBean) {
		try {
			articleMapper.updateartSta(articleBean);
			return true;
		} catch (Exception e) {
			LogManager.getLogger().debug("状态改变失败",e);
			throw new RuntimeException("状态改变失败",e);
		}
	}

	@Transactional(propagation=Propagation.REQUIRED)
	public boolean updateArtSta(ArticleBean articleBean, String[] artIds) {
		boolean flag=true;
		if(artIds.length>1){
			for(String v:artIds){
				articleBean.setArtId(Integer.parseInt(v));
				if(!updateArtSta(articleBean)){
					return false;
				}
			}
			return true;
		}
		articleBean.setArtId(Integer.parseInt(artIds[0]));
		return updateArtSta(articleBean);
	}

	@Override
	public List<ArticleBean> indexArticle() {
		return articleMapper.findindexArticle();
	}

	@Override
	public ArticleBean findarticlebyInfo(ArticleBean articleBean) {
		return articleMapper.findarticlebyInfo(articleBean);
	}

	@Override
	public int updateViews(ArticleBean articleBean) {
		return articleMapper.updateViews(articleBean);
	}

}
