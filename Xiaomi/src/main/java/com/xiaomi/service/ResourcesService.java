package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Resources;

public interface ResourcesService {
	/**
	 * 分页查询
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	List<Resources> findallResources(Integer pageNo,Integer pageSize);

	/**
	 * 查询所有条数
	 * @return
	 */
	int total();
	
	/**
	 * 组合查询
	 * @param resources
	 * @param page
	 * @param rows
	 * @return
	 */
	List<Resources> findResourcesByInfo(Resources resources, Integer pageNo,Integer pageSize);

}
