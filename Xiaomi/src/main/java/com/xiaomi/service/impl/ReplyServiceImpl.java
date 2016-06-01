package com.xiaomi.service.impl;

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

}
