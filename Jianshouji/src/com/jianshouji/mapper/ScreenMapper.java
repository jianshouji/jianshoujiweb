package com.jianshouji.mapper;

import java.util.List;

import com.jianshouji.model.Screen;


public interface ScreenMapper extends AbstractEntityMapper<Screen> {
	List<Screen> getScreenCombobox();
}
