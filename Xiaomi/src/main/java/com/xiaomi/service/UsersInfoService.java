package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.UsersInfo;

public interface UsersInfoService {
	/**
	 * 用户登录
	 * @param users:要登录的用户
	 * @return
	 */
	public UsersInfo login(UsersInfo usersInfo);
	

	/**
	 * 修改用户信息
	 * @param users:要修改的用户
	 * @return
	 */
	public int updateUsersInfo(UsersInfo usersInfo);
	
	/**
	 * 添加会员
	 * @param users:要添加的会员
	 * @return
	 */
	public int addUsersInfo(UsersInfo usersInfo);
	
	
	
	/**
	 * 删除会员
	 * @param usersId:要删除的会员编号，
	 * @return
	 */
	public int delUsersInfo(UsersInfo usersInfo);
	
	/**
	 * 检查
	 * @param usersInfo
	 * @return
	 */
	public int Check(UsersInfo usersInfo);
	
	/**
	 * 总记录数
	 * @return
	 */
	public int total();
	
	/**
	 * 分页查询会员信息
	 * @param pageNo:要查询的页数，如果为null，则查询全部
	 * @param pageSize:页面显示的条数
	 * @return
	 */
	public List<UsersInfo> find(Integer pageNo,Integer pageSize);
	

}
