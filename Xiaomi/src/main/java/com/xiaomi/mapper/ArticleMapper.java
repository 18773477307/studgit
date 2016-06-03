package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import com.xiaomi.entity.ArticleBean;



public interface ArticleMapper {
	
	/**
	 * 分页查询状态为可用
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
	List<ArticleBean> selectArticleByData(Map<String, Object> params);
	
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
	
	/**
	 * 修改文章
	 * @param articleBean
	 * @return
	 */
	int updateArticle(ArticleBean articleBean);
	
	/**
	 * 删除文章（更新状态而已）
	 * @param article
	 * @return
	 */
	void updateartSta(ArticleBean articleBean);

}