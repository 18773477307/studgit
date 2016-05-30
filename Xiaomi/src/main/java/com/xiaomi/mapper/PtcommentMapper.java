package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Ptcomment;

@Repository("ptcommentMapper")
public interface PtcommentMapper {
	
	/**
	 * 获取所有的商品评价
	 * @param params
	 * @return
	 */
	List<Ptcomment> getAllPtcomment(Map<String, Object> params);

	int getTotal();
}