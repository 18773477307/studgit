package com.xiaomi.service;

import com.xiaomi.entity.Orders;

public interface OrdersService {

	int addToOrders(Orders ordersInfo);

	int addToOrders(Orders ordersInfo, String orders);

	//支付成功改变订单状态
	void updateOrdSta(int ordId);

	//支付成功改变订单详情的状态
	void updateDetaSta(int ordId);


}
