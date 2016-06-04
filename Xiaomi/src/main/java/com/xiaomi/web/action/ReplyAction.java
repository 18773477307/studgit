package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Datadict;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Reply;
import com.xiaomi.service.ReplyService;

@Controller("replyAction")
public class ReplyAction implements ModelDriven<Reply>,SessionAware {
	@Autowired
	private ReplyService replyService;
	
	private Reply reply;
	private Map<String,Object> session;
	
	private JsonObject<Reply> jsonObject;
	private int page;
	private int rows;
	
	public JsonObject<Reply> getJsonObject() {
		return jsonObject;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	/**
	 * 添加官方回复信息
	 * @return
	 */
	public String addReplyInfo(){
		int result = replyService.addReplyInfo(reply);
		jsonObject = new JsonObject<Reply>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	/**
	 * 分页获取所有的官方回复信息
	 * @return
	 */
	public String getAllReplyInfo(){
		List<Reply> replys = replyService.getAllReplyInfo(page, rows);
		int total = replyService.getTotal();
		jsonObject=new JsonObject<Reply>();
		jsonObject.setRows(replys);
		jsonObject.setTotal(total);
		return "success";
	}
	
	/**
	 * 根据replyId查询具体的官方回复信息
	 * @return
	 */
	public String findReplyInfoByReplyId(){
		int replyId = reply.getReplyId();
		Reply replyInfo = replyService.findReplyInfoByReplyId(replyId);
		jsonObject.setObject(replyInfo);
		return "success";
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public Reply getModel() {
		reply = new Reply();
		return reply;
	}

}
