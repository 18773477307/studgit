package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xiaomi.entity.Typegoods;
import com.xiaomi.mapper.TypegoodsMapper;
import com.xiaomi.service.TypegoodsService;

@Service("typegoodsService")
public class TypegoodsServiceImpl implements TypegoodsService {
	@Autowired
	private TypegoodsMapper typegoodsMapper;

	@Override@Transactional
	public List<Typegoods> findAllTypeGoods(Integer pageNo, Integer pageSize) {
		Map<String , Object> params = new HashMap< String , Object>();
		params.put("pageNo", pageNo * pageSize);
		params.put("pageSize", (pageNo-1) * pageSize);
		return typegoodsMapper.findAllTypeGoods(params);
	}

	@Override
	public int getTotalTypegoods() {
		return typegoodsMapper.getTotalTypegoods();
	}

	@Override@Transactional
	public int updateTypegoods(Typegoods typegoods) {
		return typegoodsMapper.updateTypegoods(typegoods);
	}

	@Override@Transactional
	public int delTypegoods(String typesIds) {
		return typegoodsMapper.delTypegoods(Integer.parseInt(typesIds));
	}

	@Override@Transactional
	public int addTypegoods(Typegoods typegoods) {
		return typegoodsMapper.addTypegoods(typegoods);
	}

}
