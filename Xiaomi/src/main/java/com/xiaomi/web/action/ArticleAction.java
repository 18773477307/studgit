package com.xiaomi.web.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.ArticleBean;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.service.ArticleService;


@Controller("articleAction")
public class ArticleAction implements SessionAware,ModelDriven<ArticleBean>{
	@Autowired
	private ArticleService articleService;
	
	private ArticleBean articleBean;	
	private Map<String, Object> session;
	private JsonObject<ArticleBean> jsonObject;
	private int page;
	private int rows;
	private File upload;      //名字要求一样,上传文件
	private String uploadFileName;//上传文件名
	private String uploadContentType;	//上传文件类型
	
	public JsonObject<ArticleBean> getJsonObject() {
		return jsonObject;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	
	
	public String findallArticle(){
		List<ArticleBean> articles=articleService.findallarticle(page, rows);
		int total=articleService.total();
		System.out.println(articles);
		jsonObject=new JsonObject<ArticleBean>();
		jsonObject.setRows(articles);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String ArticleByData(){
		//System.out.println(articleBean);
		List<ArticleBean> articles=articleService.findarticlebydata(articleBean);
		return null;
	}
	public String ArticleByartId(){
		List<ArticleBean> article=articleService.findarticlebyartId(articleBean);
		jsonObject=new JsonObject<ArticleBean>();
		jsonObject.setRows(article);
		return "success";
	}
	
	public String AddArticleInfo(){
		//要使用绝对地址
		String path=ServletActionContext.getServletContext().getRealPath("upload/" + uploadFileName);
		articleBean.setArtPic(path);
		int result=articleService.addArticleInfo(articleBean);
		if(result>0){
			try {
				FileUtils.copyFile(upload, new File(path));
				System.out.println("上传成功");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("上传失败");
			}
		}
		jsonObject=new JsonObject<ArticleBean>();
		jsonObject.setTotal(result);
		return "success";
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
