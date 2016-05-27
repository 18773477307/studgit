package com.xiaomi.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.javabean.ArticleBean;
import com.xiaomi.service.ArticleService;


//@Controller("articleAction")
public class ArticleAction implements SessionAware,ModelDriven<ArticleBean>{
	private ArticleBean articleBean;
	private Map<String, Object> session;
	
	//@Autowired
	private ArticleService articleService;
	
	
	@Override
	public ArticleBean getModel() {
		this.articleBean=articleBean;
		return null;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=session;
	}

}
