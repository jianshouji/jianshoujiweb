package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.PicMapper;
import com.jianshouji.model.Pic;
import com.jianshouji.service.IPicService;
@Scope("singleton")
@Service("picServiceImpl")
public class PicServiceImpl implements IPicService {
	@Autowired
	private PicMapper picMapper;
	@Override
	public List<Pic> selectPicByRecommond() {
		return null;
	}

	@Override
	public List<Pic> selectListByTelphoneguid(String telphoneguid) {
		return picMapper.selectListByTelphoneguid(telphoneguid);
	}

	@Override
	public Pic selectPicByguid(String guid) {
		return picMapper.selectPicByguid(guid);
	}

	@Override
	public int insert(Pic record) {
		return picMapper.insert(record);
	}

	@Override
	public int update(Pic record) {
		return picMapper.update(record);
	}

	@Override
	public int delete(String guid) {
		return picMapper.delete(guid);
	}

}
