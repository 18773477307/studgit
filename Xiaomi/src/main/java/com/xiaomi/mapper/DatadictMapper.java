package com.xiaomi.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.xiaomi.entity.Datadict;

@Repository("datadictMapper")
public interface DatadictMapper {
	int addDatadict(Datadict datadict);

	List<Datadict> getAllDatadict(Map<String,Object> params);

	int getTotal();


}