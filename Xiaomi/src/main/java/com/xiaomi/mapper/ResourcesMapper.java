package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import com.xiaomi.entity.ArticleBean;
import com.xiaomi.entity.Resources;

public interface ResourcesMapper {
	/**
	 * 分页查询
	 * @return
	 */
	List<Resources> findallResources(Map<String, Object> params);
	
	/**
	 * 统计总条数
	 * @return
	 */
	int selectTotalResources();
	
	/**
	 * 组合查询
	 * @return
	 */
	List<Resources> findResourcesByInfo(Map<String, Object> params);

	/**
	 * 添加视屏
	 * @param resources
	 * @return
	 */
	int insertResources(Resources resources);
	
	/**
	 * 删除视屏
	 * @param resources
	 */
	void delresources(Resources resources);
	
	/**
	 * 修改视屏
	 * @param resources
	 * @return
	 */
	int updataResources(Resources resources);

}