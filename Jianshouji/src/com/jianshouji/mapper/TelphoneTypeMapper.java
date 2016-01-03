package com.jianshouji.mapper;

import java.util.List;

import com.jianshouji.model.TelphoneType;


public interface TelphoneTypeMapper extends AbstractEntityMapper<TelphoneType> {
	//根据根节点查询孩子
	public List<TelphoneType> selectChildrenByPguid(String pguid);
	
	//查询所有品牌
	public List<TelphoneType> selectAllBrand();
	
	//添加手机型号
	int insert(TelphoneType record);
	
	//修改手机型号
	int update(TelphoneType record);
	
	//删除手机型号
	int delete(String telphoneguid);
	
	//根据手机型号查询该手机
	TelphoneType selectTelphoneTypeByTelphoneguid(String telphoneguid);
}
