package com.xiaomi.service;

import java.util.List;

import com.xiaomi.entity.Typegoods;


public interface TypegoodsService {
	List<Typegoods> findAllTypeGoods(Integer page, Integer rows);
	int getTotalTypegoods();
	
	int updateTypegoods(Typegoods typegoods);
	int delTypegoods(String typesIds);
	int addTypegoods(Typegoods typegoods);
}
