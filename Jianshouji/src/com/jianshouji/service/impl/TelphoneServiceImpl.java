package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.TelphoneMapper;
import com.jianshouji.model.Telphone;
import com.jianshouji.service.ITelphoneService;

@Scope("singleton")
@Service("telphoneServiceImpl")
public class TelphoneServiceImpl implements ITelphoneService {
	@Autowired
	private TelphoneMapper telphoneMapper;
	@Override
	public int insert(Telphone record) {
		return telphoneMapper.insert(record);
	}
	@Override
	public List<Telphone> selectTelphoneByBrand(String brandguid) {
		return telphoneMapper.selectTelphoneByBrand(brandguid);
	}

}
