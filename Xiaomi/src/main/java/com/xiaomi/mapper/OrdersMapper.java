package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.OrderInfoBean;
import com.xiaomi.entity.Orderdetail;
import com.xiaomi.entity.Orders;

@Repository("ordersMapper")
public interface OrdersMapper {

	int addToOrders(Orders ordersInfo);

	void addOrderDetail(Map<String, Object> map2);

	int getOrdersId(Map<String, Object> maps);

	void updateOrdSta(int ordId);

	void updateDetaSta(int ordId);

	int payByBanlance(Orders orders);

	double getBanlance(int usersId);

	List<OrderInfoBean> selectOrderData(Map<String, Object> params);

	int getTotal(int usersId);

}