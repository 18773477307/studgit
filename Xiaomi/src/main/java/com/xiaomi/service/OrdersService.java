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

	List<OrderInfoBean> find(int usersId,int ordSta, int pageNo,int pageSize);

	int getTotal(int usersId);
	//后台查询信息
	List<Orders> getPageOrdersInfo(Integer pageNo,Integer pageSize);
	//详情
	List<Orders> findOrdersInfoByOrdId(int ordId);
	//根据订单编号与日期查询信息
	List<Orders> findGoodsByInfo(int ordId, String ordDate,Integer pageNo,Integer pageSize);

	
	int updateOrdersInfoById(int detaSta, int ordId, int ptId);//没
	//查询这个订单的状态
	int getOrdSta(int ordId);
	//后台订单管理状态修改
	int updateOrdersInfoById(int ordId, int ordSta);
	int updateDetaStaById(int ordId, int ordSta);
	
	List<OrderInfoBean> findInfoBySta(int usersId, int ordSta,int pageNo,int pageSize);
	

}
