package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.SellMapper;
import com.jianshouji.model.Sell;
import com.jianshouji.service.ISellService;
@Scope("singleton")
@Service("sellServiceImpl")
public class SellServiceImpl implements ISellService {
	@Autowired
	private SellMapper sellMapper;
	@Override
	public List<Sell> selectListByTelphoneguid(String telphoneguid) {
		return sellMapper.selectListByTelphoneguid(telphoneguid);
	}

	@Override
	public Sell selectSellByGuid(String telphoneguid) {
		return sellMapper.selectSellByGuid(telphoneguid);
	}

	@Override
	public int insert(Sell record) {
		return sellMapper.insert(record);
	}

	@Override
	public int update(Sell record) {
		return sellMapper.update(record);
	}

	@Override
	public int delete(String telphoneguid) {
		return sellMapper.delete(telphoneguid);
	}

}
