package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import com.xiaomi.entity.ArticleBean;



public interface ArticleMapper {
	
	/**
	 * 分页查询
	 * @return
	 */
	List<ArticleBean> getallarticle(Map<String, Object> params);

	/**
	 * 总记录数
	 * @return
	 */
	int selectTotalArticle();
	
	/**
	 * 组合查询
	 * @return
	 */
	List<ArticleBean> selectArticleByData(ArticleBean articleBean);
	
	/**
	 * ArtId查询
	 * @return
	 */
	List<ArticleBean> selectArticleByArtId(ArticleBean articleBean);
	
	/**
	 * 添加文章
	 * @param articleBean
	 * @return
	 */
	int insertArticle(ArticleBean articleBean);
}