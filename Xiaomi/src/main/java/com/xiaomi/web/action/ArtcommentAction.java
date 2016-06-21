package com.xiaomi.web.action;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Artcomment;
import com.xiaomi.entity.ArticleBean;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.service.ArtcommentService;
import com.xiaomi.service.ArticleService;


@Controller("artcommentAction")
public class ArtcommentAction implements SessionAware,ModelDriven<Artcomment>{
	@Autowired
	private ArtcommentService artcommentService;
	@Autowired
	private ArticleService articleService;
	
	private Artcomment artcomment;
	private ArticleBean articleBean;	
	private Map<String, Object> session;
	private JsonObject<ArticleBean> jsonObject;
	private int page;
	private int rows;
	
	
	public JsonObject<ArticleBean> getJsonObject() {
		return jsonObject;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}

	
	public String addArtComment(){
		System.out.println("拦截器起作用");
		int result=artcommentService.insertartcomment(artcomment);
		if(result>0){
			articleBean=new ArticleBean();
			articleBean.setArtId(artcomment.getArtId());
			ArticleBean article=articleService.findarticlebyInfo(articleBean);
			jsonObject=new JsonObject<ArticleBean>();
			jsonObject.setObject(article);
			return "success";
		}
		return "community";
	}
	
	@Override
	public Artcomment getModel() {
		artcomment=new Artcomment();
		return artcomment;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}

}
