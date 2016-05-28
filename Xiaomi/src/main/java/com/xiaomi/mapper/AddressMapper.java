package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Address;

@Repository("addressMapper")
public interface AddressMapper {

	int addAddress(Address address);

	int updateAddress(Address address);

	void delAddress(int addrId);

	List<Address> getAllAddress(Map<String, Object> params);

	int selectTotalAddress();
}