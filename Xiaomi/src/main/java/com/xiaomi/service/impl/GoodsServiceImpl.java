package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Goods;
import com.xiaomi.mapper.GoodsMapper;
import com.xiaomi.service.GoodsService;
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper goodsMapper;
	@Override
	public List<Goods> getAllGoodsInfo(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return  goodsMapper.getAllGoodsInfo(params);
	}

	@Override
	public int getTotalGoods() {
		return goodsMapper.getTotalGoods();
	}

	@Override
	public List<Goods> findGoodsByGoodsId(int goodsId) {
		return goodsMapper.getGoodsByGoodsId(goodsId);
	}

}
