package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Article;
import com.xiaomi.entity.ArticleBean;


public interface ArticleService {
	/**
	 * 分页查询(根据状态)
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
	List<ArticleBean> findarticlebydata(ArticleBean articleBean,Integer pageNo,Integer pageSize);
	
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
	boolean updateArtSta(ArticleBean articleBean);
	
	/**
	 * 方法重写，多个更新
	 * @param article
	 * @param artIds
	 * @return
	 */
	boolean updateArtSta(ArticleBean articleBean, String[] artIds);
	
	/**
	 * 社区首页信息
	 * @return
	 */
	List<ArticleBean> indexArticle();
	
	/**
	 * 文章详情页
	 * @param articleBean
	 * @return
	 */
	ArticleBean findarticlebyInfo(ArticleBean articleBean);

	int updateViews(ArticleBean articleBean);

	
}
