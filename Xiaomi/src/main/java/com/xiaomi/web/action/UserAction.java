package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Address;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.ShopCar;
import com.xiaomi.entity.UsersInfo;
import com.xiaomi.service.UsersInfoService;
import com.xiaomi.utils.SessionAttributeKey;

@Controller("userAction")
public class UserAction implements ModelDriven<UsersInfo>, SessionAware {
	@Autowired
	private UsersInfoService usersInfoService;
	private UsersInfo usersInfo;
	private JsonObject<UsersInfo> jsonObject;
	private int page;
	private int rows;
	private String usersIds;
	
	private Map<String, Object> session;

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
		System.out.println(usersInfo);
		int result=usersInfoService.addUsersInfo(usersInfo);
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

	public String unameCheck() {
		System.out.println("unameCheck  :" + usersInfo);
		int result = usersInfoService.unameCheck(usersInfo.getUsersName());
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String emailCheck() {
		System.out.println("emailCheck  :" + usersInfo);
		int result = usersInfoService.emailCheck(usersInfo.getUsersEmail());
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String telCheck() {
		System.out.println("telCheck  :" + usersInfo);
		int result = usersInfoService.telCheck(usersInfo.getUsersTel());
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setTotal(result);
		return "success";
	}
	
	public String idCardCheck() {
		System.out.println("idCardCheck  :" + usersInfo);
		int result = usersInfoService.idCardCheck(usersInfo.getUsersIDCard());
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
	
	public String findUserByUsersInfo() {
		UsersInfo users = usersInfoService.findUserByUsersInfo(usersInfo);
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setObject(users);
		int usersId=users.getUsersId();
		System.out.println(usersId);
		int sum = 0;
		sum = usersInfoService.findCountOfUser(usersId);//从购物车表里面查
		
		//把这个人购物车所有商品数量存入session
		session.put("sums", sum);
		session.put(SessionAttributeKey.LOGIN_USER, users);
		return "success";
	}
	/*
在线支付银行	 * 前台用户注销
	 */
	public String usersOut(){
		session.put(SessionAttributeKey.LOGIN_USER, "");
		session.put("sums", 0);
		jsonObject = new JsonObject<UsersInfo>();
		jsonObject.setTotal(1);
		return "success";
	}
	
	public String findAddrInfoById(){
		List<Address> addresseInfo = usersInfoService.findAddrInfoById(usersInfo.getUsersId());
		session.put("addresseInfo", addresseInfo);
		jsonObject = new JsonObject<UsersInfo>();
		System.out.println(addresseInfo);
		if(addresseInfo!=null && !addresseInfo.equals("")){
			jsonObject.setTotal(1);
		}
		return "success";
	}

	@Override
	public UsersInfo getModel() {
		usersInfo = new UsersInfo();
		return usersInfo;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
