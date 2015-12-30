package com.jianshouji.mapper;

import java.util.List;

import com.jianshouji.model.TelphoneType;


public interface TelphoneTypeMapper extends AbstractEntityMapper<TelphoneType> {
	//根据根节点查询孩子
	public List<TelphoneType> selectChildrenByPguid(String pguid);
	
	//查询所有品牌
	public List<TelphoneType> selectAllBrand();
}
