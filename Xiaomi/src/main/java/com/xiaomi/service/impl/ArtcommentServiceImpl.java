package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Artcomment;
import com.xiaomi.mapper.ArtcommentMapper;
import com.xiaomi.service.ArtcommentService;

@Service("artcommentService")
public class ArtcommentServiceImpl implements ArtcommentService {
	@Autowired
	private ArtcommentMapper artcommentMapper;
	
	@Override
	public int insertartcomment(Artcomment artcomment) {
		return artcommentMapper.insertartcomment(artcomment);
	}

	@Override
	public int getTotal(Artcomment artcomment) {
		return artcommentMapper.getTotal(artcomment);
	}

	@Override
	public List<Artcomment> find(Artcomment artcomment, Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("artcomment", artcomment);
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return artcommentMapper.selectArtcommentData(params);
	}
}
