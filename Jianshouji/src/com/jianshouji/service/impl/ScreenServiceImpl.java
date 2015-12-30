package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.ScreenMapper;
import com.jianshouji.model.Screen;
import com.jianshouji.service.IScreenService;
@Scope("singleton")
@Service("screenServiceImpl")
public class ScreenServiceImpl implements IScreenService {
	@Autowired
	private ScreenMapper screenMapper;
	@Override
	public List<Screen> getScreenCombobox() {
		return screenMapper.getScreenCombobox();
	}

}
