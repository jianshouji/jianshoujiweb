package com.jianshouji.mapper;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Sell;

@Scope("singleton")
@Service("sellMapper")
public interface SellMapper extends AbstractEntityMapper<Sell> {

}
