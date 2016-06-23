package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Artcomment;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.service.ArtcommentService;
import com.xiaomi.utils.PageUtil;

@Controller("pageAction")
public class PageAction implements SessionAware,ModelDriven<Artcomment>{
	@Autowired
	private ArtcommentService artcommentService;
	private Artcomment artcomment;
	private PageUtil pageUtil;
	private List<Artcomment> artcomments;
	private JsonObject<Artcomment> jsonObject;
	private Map<String ,Object> session;
	private String op;

	public JsonObject<Artcomment> getJsonObject() {
		return jsonObject;
	}
	public void setOp(String op) {
		this.op = op;
	}

	public String PageArtComment(){
		//对象注值
		artcomment.setArtId(artcomment.getArtId());
		//获取存在session中pageUtil
		Object obj=session.get("pageUtil");
		//判断是否为空，为空则查询首页
		if(obj==null){
			pageUtil=new PageUtil();
			pageUtil.setPageNo(1);
			pageUtil.setTotalSize(artcommentService.getTotal(artcomment));
			pageUtil.setPageSize(5);
		}
		//对不同的操作请求进行判断
		if("1".equals(op)){
			pageUtil.setPageNo(1);
		}else if("2".equals(op)){
			pageUtil.setPageNo(pageUtil.getPageNo()-1);
		}else if("3".equals(op)){
			pageUtil.setPageNo(pageUtil.getPageNo()+1);
		}else if("4".equals(op)){
			pageUtil.setPageNo(pageUtil.getTotalPage());
		}		
		//将最新的分页信息存起来
		session.put("pageUtil", pageUtil);
		System.out.println(pageUtil);
		//根据页面号查询信息
		artcomments=artcommentService.find(artcomment,pageUtil.getPageNo(),pageUtil.getPageSize());
		System.out.println(artcomments);
		//转成json数据，往前台传送
		jsonObject=new JsonObject<Artcomment>();
		jsonObject.setRows(artcomments);
		return "success";
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
