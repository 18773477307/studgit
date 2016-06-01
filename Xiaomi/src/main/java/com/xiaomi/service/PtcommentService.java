package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Ptcomment;

public interface PtcommentService {
	/**
	 * 添加数据
	 * @param add要添加的数据
	 * @return
	 */
	public int addPtcomment(Ptcomment ptcomment);
	
	
	/**
	 * 删除数据
	 * @param apprId 要删除的商品评论编号
	 * @return
	 */
	
	public int del(String apprId);
	/**
	 * 修改评价
	 * @param Ptcomment
	 * @return
	 */
	public int updateAppr(Ptcomment ptcomment);
	
	/**
	 * 总记录数
	 * @return
	 */
	public int total();
	
	/**
	 * 分页查商评论表信息
	 * @param pageNo  要查询的页数,如果是null，则查询全部
	 * @param pageSize  页面显示的条数
	 * @return
	 */
	public List<Ptcomment> find(Integer pageNo,Integer pageSize);
	
	/**
	 * 根据apprId查询到具体的某条商品评价信息	
	 * @param apprId
	 * @return
	 */
	public Ptcomment find(int apprId);

}
