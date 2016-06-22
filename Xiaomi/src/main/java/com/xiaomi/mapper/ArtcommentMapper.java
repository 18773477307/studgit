package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import com.xiaomi.entity.Artcomment;


public interface ArtcommentMapper {
	
	/**
	 * 插入评论
	 * @param artcomment
	 * @return
	 */
	int insertartcomment(Artcomment artcomment);
	
	/**
	 * 获取评论总数
	 * @param artId 
	 * @return
	 */
	int getTotal(Artcomment artcomment);
	
	/**
	 * 分页查询
	 * @return
	 */
	List<Artcomment> selectArtcommentData(Map<String, Object> params);
   
}