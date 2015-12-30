package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.CpuMapper;
import com.jianshouji.model.Cpu;
import com.jianshouji.service.ICpuService;
@Scope("singleton")
@Service("cpuServiceImpl")
public class CpuServiceImpl implements ICpuService {
	@Autowired
	private CpuMapper cpuMapper;
	@Override
	public List<Cpu> getCpucombobox() {
		return cpuMapper.getCpucombobox();
	}

}
