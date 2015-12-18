package com.jianshouji.mapper;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Telphone;


public interface TelphoneMapper extends AbstractEntityMapper<Telphone> {
	 List<Telphone> selectByIsrecommend();
}
