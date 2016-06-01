package com.xiaomi.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
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
	
	public String addReplyInfo(Reply reply){
		int result = replyService.addReplyInfo(reply);
		System.out.println(result);
		jsonObject = new JsonObject<Reply>();
		jsonObject.setTotal(result);
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
