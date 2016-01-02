package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.Ceping;

public interface ICepingService {
	//查询手机型号的测评
	List<Ceping> selectListByTelphoneGuid(String telphoneguid);
	
	//增加
	int insert(Ceping record);
	
	//删除
	int delete(String guid);
	
	//修改
	int update(Ceping record);
	
	//根据guid查询测评
	Ceping selectListByGuid(String guid);
}
