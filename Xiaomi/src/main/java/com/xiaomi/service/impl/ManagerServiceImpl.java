package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Manager;
import com.xiaomi.mapper.ManagerMapper;
import com.xiaomi.service.ManagerService;
@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerMapper managerMapper;
	
	@Override
	public Manager login(Manager manager) {
		return managerMapper.login(manager);
	}

	@Override
	public int addManager(Manager manager) {
		return managerMapper.addManager(manager);
	}

	@Override
	public int updateManager(Manager manager) {
		return managerMapper.updateManager(manager);
	}

	@Override
	public int total() {
		return managerMapper.selectTotalManager();
	}

	@Override
	public List<Manager> find(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return  managerMapper.getAllManager(params);
	}

	@Override
	public int delManager(String manaIds) {
		int result = 0;
		if (manaIds.contains(",")) {
			String[] str = manaIds.split(",");
			for (String manaId : str) {
				managerMapper.delManager(Integer.parseInt(manaId));
				result++;
			}
		}else {
			managerMapper.delManager(Integer.parseInt(manaIds));
			result++;
		}
		return result;
	}

}
