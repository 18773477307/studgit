package com.xiaomi.web.action;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.struts2.ServletActionContext;
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
	public String addResources(){
		System.out.println(resources);
		String path=ServletActionContext.getServletContext().getRealPath("../video/" + uploadFileName);
		resources.setResCont(uploadFileName);
		System.out.println(resources);
		int result=resourcesService.addResourcesInfo(resources);
		jsonObject=new JsonObject<Resources>();
		if(result>0){
			try {
				System.out.println(path);
				System.out.println(upload);
				FileUtils.copyFile(upload, new File(path));
				System.out.println("上传成功");
				jsonObject.setTotal(1);
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("上传失败");
				jsonObject.setTotal(0);
			}
		}
		return "success";
	}
	
	public String delresources(){
		String[] resIds=ServletActionContext.getRequest().getParameterValues("resIds[]");
		LogManager.getLogger().debug("删除文章取到artIds="+Arrays.toString(resIds));
		jsonObject=new JsonObject<Resources>();
		boolean result=resourcesService.delresources(resources,resIds);
		if(result=true){
			System.out.println("成功删除");
			jsonObject.setTotal(1);
		}else{
			jsonObject.setTotal(0);
		}
		return "success";
	}
	
	public String updataResources(){
		System.out.println(resources);
		System.out.println(upload);
		String path=ServletActionContext.getServletContext().getRealPath("../video/" + uploadFileName);
		resources.setResCont(uploadFileName);
		System.out.println(resources);
		int result=resourcesService.updataResourcesInfo(resources);
		jsonObject=new JsonObject<Resources>();
		if(result>0&&upload!=null){
			try {
				FileUtils.copyFile(upload, new File(path));
				System.out.println("上传成功");
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("上传失败");
			}
		}
		jsonObject.setTotal(result);
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
