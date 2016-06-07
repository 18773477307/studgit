package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Reply;
import com.xiaomi.mapper.ReplyMapper;
import com.xiaomi.service.ReplyService;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyMapper replyMapper;

	@Override
	public int addReplyInfo(Reply reply) {
		return replyMapper.addReplyInfo(reply);
	}

	@Override
	public List<Reply> getAllReplyInfo(Integer pageNo,Integer pageSize) {
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return replyMapper.getAllReplyInfo(params);
	}

	@Override
	public int getTotal() {
		return replyMapper.getTotal();
	}

	@Override
	public Reply findReplyInfoByReplyId(int replyId) {
		return replyMapper.findReplyInfoByReplyId(replyId);
	}


}
