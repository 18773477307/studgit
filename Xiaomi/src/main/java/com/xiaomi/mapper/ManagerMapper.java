package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Manager;
@Repository("managerMapper")
public interface ManagerMapper {
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
	public int delManager(int manaId);
	/**
	 * 总记录数
	 * @return
	 */
	public int selectTotalManager();
	
	/**
	 * 分页查询管理员信息
	 * @param pageNo  要查询的页数,如果是null，则查询全部
	 * @param pageSize  页面显示的条数
	 * @return
	 */
	public List<Manager> getAllManager(Map<String, Object> params);

	

}
