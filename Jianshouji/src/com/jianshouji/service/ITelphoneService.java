package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.Telphone;

public interface ITelphoneService {
	     int insert(Telphone record);
	
	    //根据手机品牌选择手机
		 List<Telphone> selectTelphoneByBrand(String brandguid);
		 
		 //编辑手机信息
		 int update(Telphone record);
		 
		 //删除手机
		 int delete(Integer number);
		 
		 //根据手机编号查询手机
		 Telphone selectTelphoneByNumber(Integer number);
}
