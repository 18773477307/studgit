package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xiaomi.entity.Orders;
import com.xiaomi.mapper.OrdersMapper;
import com.xiaomi.mapper.ProductMapper;
import com.xiaomi.mapper.ShopCarMapper;
import com.xiaomi.service.OrdersService;
@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {
	@Autowired
	private OrdersMapper ordersMapper;
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private ShopCarMapper shopCarMapper;
	
	//private OrderInfoBean infos;
//	private Orders ordersInfo;
	private Map<String, Object> map  = new HashMap<String, Object>();
	private Map<String, Object> maps  = new HashMap<String, Object>();
	
	@Override @Transactional
	public int addToOrders(Orders ordersInfo) {
		return ordersMapper.addToOrders(ordersInfo);
	}

	@Override @Transactional
	public int addToOrders(Orders ordersInfos, String orders) {
		int result = addToOrders(ordersInfos);
		int orderId = 0;
		//System.out.println("ordersInfos==>"+ordersInfos);
		if(result>0){//添加成功 再查
			maps.put("usersId", ordersInfos.getUsersId());
			maps.put("ordDate", ordersInfos.getOrdDate());
			orderId = ordersMapper.getOrdersId(maps);
		}
		map.put("ordId", orderId);
		map.put("usersId", ordersInfos.getUsersId());
		System.out.println("impl查出来的订单号"+orderId);
		String[] order = orders.split(";");
		for(int i=0;i<order.length;i++){
			String[] os = order[i].split(",");
			map.put("ptId",os[0]);
			map.put("detaPrice",os[1]);
			map.put("detaNum",os[2]);
			//添加订单详情
			addOrderDetail(map);
			//修改商品库存
			updatePtNum(map);
			//修改购物车里面商品的状态
			updateStaByUidPid(map);
		}
		
		return orderId;
	}
	//修改购物车里面商品的状态
	@Transactional
	private void updateStaByUidPid(Map<String, Object> map2) {
		shopCarMapper.updateStaByUidPid(map2);
	}
	//更新库存
	@Transactional
	private void updatePtNum(Map<String, Object> map2) {
		productMapper.updatePtNum(map2);
	}
	//添加到订单详情表里面
	@Transactional
	private void addOrderDetail(Map<String, Object> map2) {
		ordersMapper.addOrderDetail(map2);
	}

	@Override @Transactional
	public void updateOrdSta(int ordId) {
		ordersMapper.updateOrdSta(ordId);
	}

	@Override @Transactional
	public void updateDetaSta(int ordId) {
		ordersMapper.updateDetaSta(ordId);
	}
	//余额付款
	@Override
	public int payByBanlance(Orders orders) {
		return ordersMapper.payByBanlance(orders);
	}
	//查询用户余额
	@Override
	public double getBanlance(int usersId) {
		return ordersMapper.getBanlance(usersId);
	}
}
