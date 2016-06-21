package com.xiaomi.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Orders;

@Repository("ordersMapper")
public interface OrdersMapper {

	int addToOrders(Orders ordersInfo);

	void addOrderDetail(Map<String, Object> map2);

	int getOrdersId(Map<String, Object> maps);

	void updateOrdSta(int orderids);

	void updateDetaSta(int ordIds);
}