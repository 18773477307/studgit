package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Reply;

public interface ReplyService {
	/**
	 * 添加官方回复信息
	 * @param reply
	 * @return
	 */
	int addReplyInfo(Reply reply);

	/**
	 * 分页获取所有的官方回复信息
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	List<Reply> getAllReplyInfo(Integer pageNo,Integer pageSize);

	/**
	 * 获取总的记录数
	 * @return
	 */
	int getTotal();

	Reply findReplyInfoByReplyId(int replyId);

}
