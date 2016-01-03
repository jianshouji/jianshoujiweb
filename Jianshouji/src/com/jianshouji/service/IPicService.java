package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.Pic;

public interface IPicService {
	List<Pic> selectPicByRecommond();
	
	//管理页首页展示
	List<Pic>selectListByTelphoneguid(String telphoneguid);
	
	//根据GUID查询单个
	Pic selectPicByguid(String guid);
	
	//添加
	int insert(Pic record);
	
	//修改
	int update(Pic record);
	
	//删除
	int delete(String guid);
}
