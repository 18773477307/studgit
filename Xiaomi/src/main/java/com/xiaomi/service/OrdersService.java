package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.OrderInfoBean;
import com.xiaomi.entity.Orderdetail;
import com.xiaomi.entity.Orders;

public interface OrdersService {

	int addToOrders(Orders ordersInfo);

	int addToOrders(Orders ordersInfo, String orders);

	//支付成功改变订单状态
	void updateOrdSta(int ordId);

	//支付成功改变订单详情的状态
	void updateDetaSta(int ordId);

	//余额付款
	int payByBanlance(Orders ordersInfo);

	//查询用户余额
	double getBanlance(int usersId);

	List<OrderInfoBean> find(int usersId, int pageNo,int pageSize);

	int getTotal(int usersId);

}
