package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Datadict;
import com.xiaomi.mapper.DatadictMapper;
import com.xiaomi.service.DatadictService;

@Service("datadictService")
public class DatadictServiceImpl implements DatadictService {
	@Autowired
	private DatadictMapper datadictMapper;

	//添加数据
	@Override
	public int addDatadict(Datadict datadict) {
		return datadictMapper.addDatadict(datadict);
	}

	@Override
	public int updateDatadict(Datadict datadict) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int del(String dirId) {
		// TODO Auto-generated method stub
		return 0;
	}

	//查询数据字典的总记录数
	@Override
	public int total() {
		return datadictMapper.getTotal();
	}

	//分页查询所有数据字典的信息
	@Override
	public List<Datadict> find(Integer pageNo, Integer pageSize) {
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return datadictMapper.getAllDatadict(params);
	}

	@Override
	public Datadict find(String dirId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Datadict> find(String dirName, Integer dirType, Integer pageNo,
			Integer pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Datadict> finds() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Datadict> findsFormat() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Datadict> findsColor() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Datadict> findsMemory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Datadict> findsVersion() {
		// TODO Auto-generated method stub
		return null;
	}

}
