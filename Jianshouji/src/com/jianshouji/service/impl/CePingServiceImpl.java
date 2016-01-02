package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.CepingMapper;
import com.jianshouji.model.Ceping;
import com.jianshouji.service.ICepingService;
@Scope("singleton")
@Service("cePingServiceImpl")
public class CePingServiceImpl implements ICepingService {
	@Autowired
	private CepingMapper cepingMapper;
	@Override
	public List<Ceping> selectListByTelphoneGuid(String telphoneguid) {
		return cepingMapper.selectListByTelphoneGuid(telphoneguid);
	}

	@Override
	public int insert(Ceping record) {
		return cepingMapper.insert(record);
	}

	@Override
	public int delete(String guid) {
		return cepingMapper.delete(guid);
	}

	@Override
	public int update(Ceping record) {
		return cepingMapper.update(record);
	}

	@Override
	//根据GUID查询测评
	public Ceping selectListByGuid(String guid) {
		return cepingMapper.selectListByGuid(guid);
	}

}
