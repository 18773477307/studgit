package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Artcomment;

public interface ArtcommentService {
	
	/**
	 * 插入
	 * @param artcomment
	 * @return
	 */
	int insertartcomment(Artcomment artcomment);
	
	/**
	 * 评论条数统计
	 * @return
	 */
	int getTotal(Artcomment artcomment);

	/**
	 * 分页查询评论
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public List<Artcomment> find(Artcomment artcomment,Integer pageNo, Integer pageSize);

}
