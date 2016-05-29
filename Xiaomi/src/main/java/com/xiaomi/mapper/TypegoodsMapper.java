package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Typegoods;

@Repository("typegoodsMapper")
public interface TypegoodsMapper {
	List<Typegoods> findAllTypeGoods(Map<String, Object> params);
	int getTotalTypegoods();
	
	int updateTypegoods(Typegoods typegoods);
	int delTypegoods(int typesIds);
	int addTypegoods(Typegoods typegoods);
}
