package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Resources;
import com.xiaomi.mapper.ResourcesMapper;
import com.xiaomi.service.ResourcesService;
@Service("resourcesService")
public class ResourcesServiceImpl implements ResourcesService {
	@Autowired
	private ResourcesMapper resourcesMapper;
	
	@Override
	public List<Resources> findallResources(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return resourcesMapper.findallResources(params);
	}

	@Override
	public int total() {
		return resourcesMapper.selectTotalResources();
	}

	@Override
	public List<Resources> findResourcesByInfo(Resources resources,Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("resources", resources);
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return resourcesMapper.findResourcesByInfo(params);
	}



}
