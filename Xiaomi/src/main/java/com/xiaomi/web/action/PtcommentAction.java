package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Ptcomment;
import com.xiaomi.service.PtcommentService;

@Controller("ptcommentAction")
public class PtcommentAction implements ModelDriven<Ptcomment>,SessionAware {
	@Autowired
	private PtcommentService ptcommentService;
	
	private Ptcomment ptcomment;
	private Map<String, Object> session;
	
	private JsonObject<Ptcomment> jsonObject;
	private int page;
	private int rows;
	
	public JsonObject<Ptcomment> getJsonObject() {
		return jsonObject;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	/**
	 * 分页获取所有的商品评价信息
	 * @return
	 */
	public String getAllPtcomment(){
		List<Ptcomment> ptcomments = ptcommentService.find(page, rows);
		int total = ptcommentService.total();
		jsonObject=new JsonObject<Ptcomment>();
		jsonObject.setRows(ptcomments);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String findPtcommentByApprId(){
		int apprId = ptcomment.getApprId();
		Ptcomment ptcom = ptcommentService.find(apprId);
		//System.out.println("获取到的评论详情："+ptcom);
		jsonObject.setObject(ptcom);
		return "success";
	}

	@Override
	public Ptcomment getModel() {
		ptcomment = new Ptcomment();
		return ptcomment;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
