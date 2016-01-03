package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.Sell;

public interface ISellService {
	//查询首页显示
	List<Sell> selectListByTelphoneguid(String telphoneguid);
	
	//根据手机型号查询手机销售商
	Sell selectSellByGuid(String telphoneguid);
	
	//添加
	int insert(Sell  record);
	
	//修改
	int update(Sell  record);
	
	//删除
	int delete(String telphoneguid);
}
