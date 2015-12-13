package com.jianshouji.mapper;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Telphone;

@Scope("singleton")
@Service("telphoneMapper")
public interface TelphoneMapper extends AbstractEntityMapper<Telphone> {

}
