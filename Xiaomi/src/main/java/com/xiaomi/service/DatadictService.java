package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Datadict;

public interface DatadictService {
	/**
	 * 添加数据
	 * @param add要添加的数据
	 * @return
	 */
	public int addDatadict(Datadict Datadict);
	
	/**
	 * 修改数据
	 * @param Datadict
	 * @return
	 */
	public int updateDatadict(Datadict Datadict);
	
	/**
	 * 删除数据
	 * @param dirId 要删除的管编号
	 * @return
	 */
	public int del(String dirIds);
	
	/**
	 * 总记录数
	 * @return
	 */
	public int total();
	
	/**
	 * 分页查数据字典信息
	 * @param pageNo  要查询的页数,如果是null，则查询全部
	 * @param pageSize  页面显示的条数
	 * @return
	 */
	public List<Datadict> find(Integer pageNo,Integer pageSize);
	
	/**
	 * 查询指定的管理员信息
	 * @param manaId  要查询的管理员编号
	 * @return
	 */
	public Datadict find(String dirId);
	
	/**
	 * 多条件组合查询
	 * @param dirName
	 * @param dirType
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public List<Datadict> find(String dirName,Integer dirType,Integer pageNo, Integer pageSize);

	
	/**
	 * 查询所有的数据字典的网络格式信息
	 * @return
	 */
	public List<Datadict> finds();
	
	/**
	 * 查询所有的数据字典的网络格式信息
	 * @return
	 */
	public List<Datadict> findsFormat();
	
	
	/**
	 * 查询所有的数据字典的颜色信息
	 * @return
	 */
	public List<Datadict> findsColor();
	
	
	/**
	 * 查询所有的数据字典的内存大小信息
	 * @return
	 */
	public List<Datadict> findsMemory();
	
	
	/**
	 * 查询所有的数据字典的网络版式信息
	 * @return
	 */
	public List<Datadict> findsVersion();

	public List<Datadict> findAllDatadict();

}
