package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xiaomi.entity.OrderInfoBean;
import com.xiaomi.entity.Orderdetail;
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
		//System.out.println("impl查出来的订单号"+orderId);
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

	@Override
	public List<OrderInfoBean> find(int usersId,int ordSta, int pageNo,int pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("usersId", usersId);
		params.put("ordSta", ordSta);
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return ordersMapper.selectOrderData(params);
	}

	@Override
	public int getTotal(int usersId) {
		return ordersMapper.getTotal(usersId);
	}

	@Override
	public List<Orders> getPageOrdersInfo(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return  ordersMapper.getPageOrdersInfo(params);
	}

	@Override
	public List<Orders> findOrdersInfoByOrdId(int ordId) {
		return ordersMapper.findOrdersInfoByOrdId(ordId);
	}

	@Override
	public List<Orders> findGoodsByInfo(int ordId, String ordDate,Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("ordId", ordId);
		params.put("ordDate", ordDate);
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return ordersMapper.findGoodsByInfo(params);
	}

	@Override
	public int updateOrdersInfoById(int detaSta, int ordId, int ptId) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("detaSta", detaSta);
		params.put("ordId", ordId);
		params.put("ptId", ptId);
		return ordersMapper.updateOrdersInfoById(params);
	}
	
	@Override
	public int getOrdSta(int ordId) {
		return ordersMapper.getOrdSta(ordId);
	}

	@Override
	public int updateOrdersInfoById(int ordId, int ordSta) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("ordId", ordId);
		params.put("ordSta", ordSta);
		return ordersMapper.updateOrdersInfoById(params);
	}

	@Override
	public int updateDetaStaById(int ordId, int ordSta) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("ordId", ordId);
		params.put("ordSta", ordSta);
		return ordersMapper.updateDetaStaById(params);
	}

	@Override
	public List<OrderInfoBean> findInfoBySta(int usersId, int ordSta, int pageNo,int pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("usersId", usersId);
		params.put("ordSta", ordSta);
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return ordersMapper.findInfoBySta(params);
	}
	
	
	

}
