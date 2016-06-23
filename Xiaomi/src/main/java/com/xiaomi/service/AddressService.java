package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Address;


public interface AddressService {
	/**
	 * 添加地址信息
	 * @param addr 要添加的地址
	 * @return
	 */
	public int addAddress(Address address);
	
	
	/**
	 * 修改地址
	 * @param addr 要修改的地址
	 * @return
	 */
	public int updateAddress(Address address);
	
	
	/**
	 * 删除地址
	 * @param addrId 要删除的地址编号，如果要同时删除多个，则用逗号隔开
	 * @return
	 */
	public int delAddress(String addrIds);
	
	/**
	 * 查找地址信息
	 * @param addr 
	 * @return
	 */
	public List<Address> findAddress();
	
	
	/**
	 * 地址的总记录数
	 * @return
	 */
	public int total();
	
	/**
	 * 分页查询地址信息
	 * @param pageNo:要查询的页数，如果为null，则查询全部
	 * @param pageSize:页面显示的条数
	 * @return
	 */
	public List<Address> find(Integer pageNo,Integer pageSize);


	public List<Address> findAddressByInfo(Integer pageNo, Integer pageSize,String province, String city, String county, String usersName);


	public List<Address> findAddrInfoById(int usersId);

}
