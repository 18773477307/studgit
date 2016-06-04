package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.UsersInfo;
@Repository("usersInfoMapper")
public interface UsersInfoMapper {

	int updateUsersInfo(UsersInfo usersInfo);

	int addUsersInfo(UsersInfo usersInfo);

	void delUsersInfo(int usersId);

	int selectTotalUsers();

	List<UsersInfo> getAllUsersInfo(Map<String, Object> params);

	List<UsersInfo> getAllUsersName();

	List<UsersInfo> getUsersInfoByInfo(Map<String, Object> params);
	
	public UsersInfo unameCheck(String usersName);
	
	public UsersInfo emailCheck(String usersEmail);
	
	public UsersInfo telCheck(String usersTel);
	
	public UsersInfo idCardCheck(String usersIdCard);
	
	public UsersInfo findUserByUsersInfo(UsersInfo users);
}
