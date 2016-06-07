package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Reply;

@Repository("replyMapper")
public interface ReplyMapper {

	int addReplyInfo(Reply reply);

	List<Reply> getAllReplyInfo(Map<String, Object> params);

	int getTotal();

	Reply findReplyInfoByReplyId(int replyId);

}