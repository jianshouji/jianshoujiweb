package com.jianshouji.mapper;

import com.jianshouji.model.Cpu;

public interface CpuMapper extends AbstractEntityMapper<Cpu> {
	public int insert(Cpu cpu);
}
