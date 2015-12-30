package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.Telphone;

public interface ITelphoneService {
	int insert(Telphone record);
	
	//根据手机品牌选择手机
		 List<Telphone> selectTelphoneByBrand(String brandguid);
}
