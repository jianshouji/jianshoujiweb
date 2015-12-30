package com.jianshouji.mapper;

import java.util.List;

import com.jianshouji.model.Cpu;

public interface CpuMapper extends AbstractEntityMapper<Cpu> {
	public int insert(Cpu cpu);
	
	List<Cpu> getCpucombobox();
}
