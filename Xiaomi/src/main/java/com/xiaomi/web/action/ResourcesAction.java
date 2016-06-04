package com.xiaomi.web.action;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.ArticleBean;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Resources;
import com.xiaomi.service.ResourcesService;

@Controller("resourcesAction")
public class ResourcesAction implements ModelDriven<Resources>,SessionAware {
	@Autowired
	private ResourcesService resourcesService;
	private Resources resources;
	private Map<String,Object> session;
	private JsonObject<Resources> jsonObject;
	private int page;
	private int rows;
	private File upload;      			//名字要求一样,上传文件
	private String uploadFileName;		//上传文件名
	private String uploadContentType;	//上传文件类型

	public JsonObject<Resources> getJsonObject() {
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
	
	public String GetAllResources(){
		System.out.println("视屏查询"+"page="+page+"rows="+rows);
		List<Resources> videos=resourcesService.findallResources(page, rows);
		int total=resourcesService.total();
		System.out.println(videos);
		jsonObject=new JsonObject<Resources>();
		jsonObject.setRows(videos);
		jsonObject.setTotal(total);
		return "success";
	}
	public String findResourcesByInfo(){
		System.out.println(resources);
		List<Resources> videos=resourcesService.findResourcesByInfo(resources,page,rows);
		System.out.println(videos);
		int total=resourcesService.total();
		jsonObject=new JsonObject<Resources>();
		jsonObject.setRows(videos);
		jsonObject.setTotal(total);
		return "success";
	}
	
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public Resources getModel() {
		resources = new Resources();
		return resources;
	}
}
