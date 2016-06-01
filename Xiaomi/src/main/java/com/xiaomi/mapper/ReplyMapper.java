package com.xiaomi.mapper;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Reply;

@Repository("replyMapper")
public interface ReplyMapper {

	int addReplyInfo(Reply reply);
}