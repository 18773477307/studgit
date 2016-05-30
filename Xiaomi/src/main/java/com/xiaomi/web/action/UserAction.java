package com.xiaomi.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.UsersInfo;
import com.xiaomi.service.UsersInfoService;

@Controller("userAction")
public class UserAction implements ModelDriven<UsersInfo> {
	@Autowired
	private UsersInfoService usersInfoService;
	private UsersInfo usersInfo;
	private JsonObject<UsersInfo> jsonObject;
	private int page;
	private int rows;
	private String usersIds;
	
	public JsonObject<UsersInfo> getJsonObject() {
		return jsonObject;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public void setUsersIds(String usersIds) {
		this.usersIds = usersIds;
	}
	public UserAction() {}


	public String getAllUsers(){
		List<UsersInfo> usersInfo=usersInfoService.find(page, rows);
		int total=usersInfoService.total();
		jsonObject=new JsonObject<UsersInfo>();
		jsonObject.setRows(usersInfo);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String findUsersInfoByInfo(){
		List<UsersInfo> usersInfos = usersInfoService.findUsersInfoByInfo(page, rows,usersInfo.getUsersName(),usersInfo.getUsersTel(),usersInfo.getUsersEmail());
		System.out.println(usersInfos.size());
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setRows(usersInfos);
		jsonObject.setTotal(usersInfos.size());
		return "success";
	}
	
	
	public String addUsersInfo(){
	//	System.out.println(Users+"sds ");
		int result=usersInfoService.addUsersInfo(usersInfo);
	//	System.out.println(result+"====");
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String updateUsersInfo(){
		int result = usersInfoService.updateUsersInfo(usersInfo);
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String delUsersInfo(){
		System.out.println("====删除用户信息");
		int result = usersInfoService.delUsersInfo(usersIds);
		System.out.println(result+"result");
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String getAllUsersName(){
		List<UsersInfo> usersName = usersInfoService.getAllUserNames();
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setRows(usersName);
		return "success";
	}
	
	
	@Override
	public UsersInfo getModel() {
		usersInfo = new UsersInfo();
		return usersInfo;
	}

}
