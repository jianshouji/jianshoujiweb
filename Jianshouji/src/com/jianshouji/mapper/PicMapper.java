package com.jianshouji.mapper;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Pic;

@Scope("singleton")
@Service("picMapper")
public interface PicMapper extends AbstractEntityMapper<Pic> {

}
