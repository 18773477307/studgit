package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.xiaomi.entity.Resources;
import com.xiaomi.mapper.ResourcesMapper;
import com.xiaomi.service.ResourcesService;
@Transactional
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

	@Override
	public int addResourcesInfo(Resources resources) {
		return resourcesMapper.insertResources(resources);
	}

	@Transactional(propagation=Propagation.REQUIRED)
	public boolean delresources(Resources resources) {
		try {
			resourcesMapper.delresources(resources);
			return true;
		} catch (Exception e) {
			LogManager.getLogger().debug("视屏删除失败",e);
			throw new RuntimeException("视屏删除失败",e);
		}
	}

	@Transactional(propagation=Propagation.REQUIRED)
	public boolean delresources(Resources resources, String[] resIds) {
		boolean flag=true;
		if(resIds.length>1){
			for(String v:resIds){
				resources.setResId(Integer.parseInt(v));
				if(!delresources(resources)){
					return false;
				}
			}
			return true;
		}
		resources.setResId(Integer.parseInt(resIds[0]));
		return delresources(resources);
	}

	@Override
	public int updataResourcesInfo(Resources resources) {
		return resourcesMapper.updataResources(resources);
	}



}
