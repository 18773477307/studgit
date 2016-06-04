package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Goods;

@Repository("goodsMapper")
public interface GoodsMapper {

	int getTotalGoods();

	List<Goods> getAllGoodsInfo(Map<String, Object> params);

	List<Goods> getGoodsByGoodsId(int goodsId);

	int addGoodsInfo(Goods goods);

	int updateGoodsInfo(Goods goods);


	List<Goods> findallgoods();

	
	public List<Goods> getIndexGoodsInfo();
}
