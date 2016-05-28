package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.ArticleBean;
import com.xiaomi.service.ArticleService;


@Controller("articleAction")
public class ArticleAction implements SessionAware,ModelDriven<ArticleBean>{
	private ArticleBean articleBean;
	private Map<String, Object> session;
	
	@Autowired
	private ArticleService articleService;
	
	public String list(){
		List<ArticleBean> articles=articleService.findallarticle();
		session.put("articles", articles);
		return "community";
	}
	
	
	@Override
	public ArticleBean getModel() {
		articleBean=new ArticleBean();
		return articleBean;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=session;
	}

}
