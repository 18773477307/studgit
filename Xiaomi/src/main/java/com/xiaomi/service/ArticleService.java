package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.ArticleBean;


public interface ArticleService {
	/**
	 * 分页查询
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	List<ArticleBean> findallarticle(Integer pageNo,Integer pageSize);
	
	/**
	 * 查询所有条数
	 * @return
	 */
	int total();
	
	/**
	 * 组合对象查询
	 * @param articleBean
	 * @return
	 */
	List<ArticleBean> findarticlebydata(ArticleBean articleBean);
	
	/**
	 * 文章查询
	 * @param articleBean
	 * @return
	 */
	List<ArticleBean> findarticlebyartId(ArticleBean articleBean);
	
	
	/**
	 * 插入文章
	 * @param articleBean
	 * @return
	 */
	int addArticleInfo(ArticleBean articleBean);
	
}
