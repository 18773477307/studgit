package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Address;
import com.xiaomi.entity.ShopCar;
import com.xiaomi.entity.UsersInfo;
import com.xiaomi.mapper.UsersInfoMapper;
import com.xiaomi.service.UsersInfoService;
@Service("usersInfoService")
public class UsersInfoServiceImpl implements UsersInfoService{
	@Autowired
	private UsersInfoMapper usersInfoMapper;
	@Override
	public UsersInfo login(UsersInfo usersInfo) {
		return null;
	}
	@Override
	public int Check(UsersInfo usersInfo) {
		return 0;
	}
	@Override
	public int updateUsersInfo(UsersInfo usersInfo) {
		return usersInfoMapper.updateUsersInfo(usersInfo);
	}

	@Override
	public int addUsersInfo(UsersInfo usersInfo) {
		return usersInfoMapper.addUsersInfo(usersInfo);
	}

	@Override
	public int delUsersInfo(String usersIds) {
		int result = 0;
		if (usersIds.contains(",")) {
			String[] str = usersIds.split(",");
			for (String usersId : str) {
				usersInfoMapper.delUsersInfo(Integer.parseInt(usersId));
				result++;
				System.out.println(result);

			}
		}else {
			usersInfoMapper.delUsersInfo(Integer.parseInt(usersIds));
			result++;
			System.out.println(result);

		}
		return result;
	}

	@Override
	public int total() {
		return usersInfoMapper.selectTotalUsers();
	}

	@Override
	public List<UsersInfo> find(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return  usersInfoMapper.getAllUsersInfo(params);
	}
	
	@Override
	public List<UsersInfo> getAllUserNames() {
		return usersInfoMapper.getAllUsersName();
	}

	@Override
	public List<UsersInfo> findUsersInfoByInfo(Integer pageNo,Integer pageSize, String usersName, String usersTel,String usersEmail) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		params.put("usersName", usersName);
		params.put("usersTel", usersTel);
		params.put("usersEmail", usersEmail);
		return  usersInfoMapper.getUsersInfoByInfo(params);
	}
	
	@Override
	public int unameCheck(String usersName) {
		if (usersInfoMapper.unameCheck(usersName) != null){
			return 1;
		}else {
			return 0;
		}
	}
	
	@Override
	public int emailCheck(String usersEmail) {
		if (usersInfoMapper.emailCheck(usersEmail) != null){
			return 1;
		}else {
			return 0;
		}
	}
	
	@Override
	public int telCheck(String usersTel) {
		if (usersInfoMapper.telCheck(usersTel) != null){
			return 1;
		}else {
			return 0;
		}
	}
	
	@Override
	public int idCardCheck(String usersIdCard) {
		if (usersInfoMapper.idCardCheck(usersIdCard) != null){
			return 1;
		}else {
			return 0;
		}
	}
	@Override
	public UsersInfo findUserByUsersInfo(UsersInfo users) {
		return usersInfoMapper.findUserByUsersInfo(users);
	}
	@Override
	public int findCountOfUser(int usersId) {
		return usersInfoMapper.findCountOfUser(usersId);
	}
	@Override
	public List<Address> findAddrInfoById(int usersId) {
		return usersInfoMapper.findAddrInfoById(usersId);
	}

}
