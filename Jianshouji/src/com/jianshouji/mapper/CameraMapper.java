package com.jianshouji.mapper;

import java.util.List;

import com.jianshouji.model.Camera;


public interface CameraMapper extends AbstractEntityMapper<Camera> {
	List<Camera> getCameraCombobox();
}
