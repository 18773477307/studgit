package com.xiaomi.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Orderdetail;
import com.xiaomi.service.OrdersService;
@Controller("orderDetailAction")
public class OrderDetailAction implements ModelDriven<Orderdetail>{
	@Autowired
	private OrdersService ordersService;
	private Orderdetail orderdetail;
	private JsonObject<Orderdetail> jsonObject;
	
	
	public JsonObject<Orderdetail> getJsonObject() {
		return jsonObject;
	}
	public String updateOrdersInfoById(){
		int result = ordersService.updateOrdersInfoById(orderdetail.getDetaSta(),orderdetail.getOrdId(),orderdetail.getPtId());
		jsonObject =new JsonObject<Orderdetail>();
		jsonObject.setTotal(result);
		return "success";
	}
	@Override
	public Orderdetail getModel() {
		orderdetail = new Orderdetail();
		return orderdetail;
	}

}
