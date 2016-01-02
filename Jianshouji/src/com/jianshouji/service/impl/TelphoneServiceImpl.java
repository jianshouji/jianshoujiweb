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
		List<Telphone> list=telphoneMapper.selectTelphoneByBrand(brandguid);
		return list;
	}
	@Override
	public int update(Telphone record) {
		return telphoneMapper.update(record);
	}
	@Override
	public Telphone selectTelphoneByNumber(Integer number) {
		return telphoneMapper.selectTelphoneByNumber(number);
	}
	@Override
	public int delete(Integer number) {
		return telphoneMapper.delete(number);
	}

}
