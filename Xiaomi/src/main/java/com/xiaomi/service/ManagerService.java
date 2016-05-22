package com.xiaomi.service;

import java.util.List;
import com.xiaomi.entity.Manager;

public interface ManagerService {
	
	/**
	 * 后台管理员登录
	 * @param manager
	 * @return
	 */
	public Manager login(Manager manager);
	
	/**
	 * 添加管理员
	 * @param manager 要添加的管理员
	 * @return
	 */
	public int addManager(Manager manager);
	
	/**
	 * 修改管理员信息
	 * @param manager
	 * @return
	 */
	public int updateManager(Manager manager);
	
	/**
	 * 删除管理员
	 * @param manaId 要删除的管理员编号
	 * @return
	 */
	public int delManager(Manager manager);
	
	/**
	 * 总记录数
	 * @return
	 */
	public int total();
	
	
	/**
	 * 分页查询管理员信息
	 * @param pageNo  要查询的页数,如果是null，则查询全部
	 * @param pageSize  页面显示的条数
	 * @return
	 */
	public List<Manager> find(Integer pageNo,Integer pageSize);
	

}
