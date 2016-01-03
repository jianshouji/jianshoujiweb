package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.TelphoneType;
import com.jianshouji.model.TreeModel;

public interface ITelphoneTypeService {
	//查询多节点树结构
	public List<TreeModel> selectTree();
	
	public List<TelphoneType> listbrand();
	
	//添加手机型号
	int insert(TelphoneType record);
	
	//修改手机型号
	int update(TelphoneType record);
	
	//删除手机型号
	int delete(String telphoneguid);
	
	//根据手机型号查询该手机
	TelphoneType selectTelphoneTypeByTelphoneguid(String telphoneguid);
}
