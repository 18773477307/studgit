package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Ptcomment;
import com.xiaomi.mapper.PtcommentMapper;
import com.xiaomi.service.PtcommentService;

@Service("ptcommentService")
public class PtcommentServiceImpl implements PtcommentService {
	
	@Autowired
	private PtcommentMapper ptcommentMapper;

	@Override
	public int addPtcomment(Ptcomment ptcomment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int del(String apprId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAppr(Ptcomment ptcomment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int total() {
		return ptcommentMapper.getTotal();
	}

	@Override
	public List<Ptcomment> find(Integer pageNo, Integer pageSize) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return ptcommentMapper.getAllPtcomment(params);
	}

	@Override
	public Ptcomment find(int apprId) {
		return ptcommentMapper.findPtcommentByApprId(apprId);
	}

}
