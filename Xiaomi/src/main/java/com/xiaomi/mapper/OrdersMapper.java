package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.OrderInfoBean;
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

	List<Orders> getPageOrdersInfo(Map<String, Object> params);

	List<Orders> findOrdersInfoByOrdId(int ordId);

	List<Orders> findGoodsByInfo(Map<String, Object> params);
	//后台修改订单状态  发货
	int updateOrdersInfoById(Map<String, Object> params);

	int getOrdSta(int ordId);

	int updateDetaStaById(Map<String, Object> params);

	List<OrderInfoBean> findInfoBySta(Map<String, Object> params);

}