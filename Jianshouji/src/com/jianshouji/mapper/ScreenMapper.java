package com.jianshouji.mapper;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Screen;

@Scope("singleton")
@Service("screenMapper")
public interface ScreenMapper extends AbstractEntityMapper<Screen> {

}
