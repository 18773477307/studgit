package com.xiaomi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomi.entity.Address;
import com.xiaomi.mapper.AddressMapper;
import com.xiaomi.service.AddressService;
@Service("addressService")
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressMapper addressMapper;
	@Override
	public int addAddress(Address address) {
		return addressMapper.addAddress(address);
	}

	@Override
	public int updateAddress(Address address) {
		return addressMapper.updateAddress(address);
	}

	@Override
	public int delAddress(String addrIds) {
		int result = 0;
		if (addrIds.contains(",")) {
			String[] str = addrIds.split(",");
			for (String addrId : str) {
				addressMapper.delAddress(Integer.parseInt(addrId));
				result++;
			}
		}else {
			addressMapper.delAddress(Integer.parseInt(addrIds));
			result++;
		}
		return result;
	}

	@Override
	public int total() {
		return addressMapper.selectTotalAddress();
	}

	@Override
	public List<Address> find(Integer pageNo, Integer pageSize) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		return  addressMapper.getAllAddress(params);
	}
	
	
	@Override
	public List<Address> findAddressByInfo(Integer pageNo, Integer pageSize, String province,String city, String county, String usersName) {
		Map<String , Object> params=new HashMap< String , Object>();
		params.put("pageNo", pageNo*pageSize);
		params.put("pageSize", (pageNo-1)*pageSize);
		params.put("", province);
		params.put("city", city);
		params.put("county", county);
		params.put("usersName", usersName);
		return addressMapper.findAddressByInfo(params);
	}
	@Override
	public List<Address> findAddress() {
		// TODO Auto-generated method stub
		return null;
	}

	

}
