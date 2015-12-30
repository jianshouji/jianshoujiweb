package com.jianshouji.mapper;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Telphone;


public interface TelphoneMapper extends AbstractEntityMapper<Telphone> {
	 List<Telphone> selectByIsrecommend();
	 //插入手机参数
	 int insert(Telphone record);
	 
	 //根据手机品牌选择手机
	 List<Telphone> selectTelphoneByBrand(String brandguid);
}
