package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Datadict;

@Repository("datadictMapper")
public interface DatadictMapper {
	/**
	 * 添加数据字典信息
	 * @param datadict：要添加的数据字典信息
	 * @return
	 */
	int addDatadict(Datadict datadict);

	/**
	 * 获取所有的数据字典信息
	 * @param params:分页信息
	 * @return
	 */
	List<Datadict> getAllDatadict(Map<String,Object> params);

	/**
	 * 获取数据字典信息的总数
	 * @return
	 */
	int getTotal();

	/**
	 * 更新数据字典信息
	 * @param datadict:要更新的数据字典信息
	 * @return
	 */
	int updateDatadict(Datadict datadict);

	/**
	 * 删除数据字典信息
	 * @param datadict
	 * @return
	 */
	int delManager(Datadict datadict);
	int delManager(int dirId);

	List<Datadict> findAllDatadict();


}