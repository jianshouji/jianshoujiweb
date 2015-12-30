package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.TelphoneType;
import com.jianshouji.model.TreeModel;

public interface ITelphoneTypeService {
	//查询多节点树结构
	public List<TreeModel> selectTree();
	
	public List<TelphoneType> listbrand();
}
