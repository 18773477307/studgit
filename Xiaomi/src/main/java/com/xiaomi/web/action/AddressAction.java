package com.xiaomi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.Address;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.service.AddressService;
@Controller("addressAction")
public class AddressAction implements ModelDriven<Address> ,SessionAware{
	@Autowired
	private AddressService addressService;
	private Address address;
	private JsonObject<Address> jsonObject;
	private int page;
	private int rows;
	private Map<String, Object> session;
	
	public JsonObject<Address> getJsonObject() {
		return jsonObject;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public String getAllAddress(){
		List<Address> addresses = addressService.find(page, rows);
//		System.out.println(addresses);
		int total = addressService.total();
		jsonObject = new JsonObject<Address>();
		jsonObject.setRows(addresses);
		jsonObject.setTotal(total);
		return "success";
	}
	
	public String findAddressByInfo(){
		List<Address> addresses = addressService.findAddressByInfo(page, rows,address.getProvince(),address.getCity(),address.getCounty(),address.getUsersName());
	//	System.out.println(addresses.size());
		jsonObject = new JsonObject<Address>();
		jsonObject.setRows(addresses);
		jsonObject.setTotal(addresses.size());
		return "success";
	}
	
	//前台地址添加
	public String addAddr(){
		int result = addressService.addAddress(address);
		//System.out.println(address);
		if(result>0){
			List<Address> addresseInfo = addressService.findAddrInfoById(address.getUsersId());
			session.put("addresseInfo", addresseInfo);
			jsonObject = new JsonObject<Address>();
			System.out.println(addresseInfo);
			jsonObject.setTotal(result);
		}
		return "success";
	}
	
	public String updateAddr(){
		int result = addressService.updateAddress(address);
		if(result>0){
			List<Address> addresseInfo = addressService.findAddrInfoById(address.getUsersId());
			session.put("addresseInfo", addresseInfo);
			jsonObject = new JsonObject<Address>();
			System.out.println(addresseInfo);
			jsonObject.setTotal(result);
		}
		return "success";
	}
	
	@Override
	public Address getModel() {
		address = new Address();
		return address;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
