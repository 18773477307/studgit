package com.xiaomi.service;

import java.util.List;
import java.util.Map;

import com.xiaomi.entity.Goods;

public interface GoodsService {
	/**
	 * 分页查询商品信息
	 * @param pageNo  要查询的页数,如果是null，则查询全部
	 * @param pageSize  页面显示的条数
	 * @return
	 */
	public List<Goods> getAllGoodsInfo(Integer pageNo,Integer pageSize);
	
	//查找商品的总数量
	public int getTotalGoods();
	
	public List<Goods> findGoodsByGoodsId(int goodsId);

	public int addGoodsInfo(Goods goods);

	public int addGoodsInfo(Goods goods,Map<String,Object> map);

	public int updateGoodsInfo(Goods goods, Map<String, Object> map);
	
	public int updateGoodsInfo(Goods goods);
	
	public List<Goods> getIndexGoodsInfo();
	
}
