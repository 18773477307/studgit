package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
			for (String manaId : str) {
				usersInfoMapper.delUsersInfo(Integer.parseInt(manaId));
				result++;
			}
		}else {
			usersInfoMapper.delUsersInfo(Integer.parseInt(usersIds));
			result++;
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

}
