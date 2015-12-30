package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.CameraMapper;
import com.jianshouji.model.Camera;
import com.jianshouji.service.ICameraService;
@Scope("singleton")
@Service("cameraServiceImpl")
public class CameraServiceImpl implements ICameraService {
	@Autowired
	private CameraMapper cameraMapper;

	@Override
	public List<Camera> getCameraCombobox() {
		return cameraMapper.getCameraCombobox();
	}

}
