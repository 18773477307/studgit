package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.ArticleBean;
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
	
	/**
	 * 添加视屏
	 * @param resources
	 * @return
	 */
	int addResourcesInfo(Resources resources);
	
	/**
	 * 删除视屏
	 * @param resources
	 * @return
	 */
	boolean delresources(Resources resources);
	
	/**
	 * 方法重写
	 * @param resources
	 * @param resIds
	 * @return
	 */
	boolean delresources(Resources resources, String[] resIds);
	
	/**
	 * 修改视屏
	 * @param resources
	 * @return
	 */
	int updataResourcesInfo(Resources resources);

}
