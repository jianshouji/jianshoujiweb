package com.jianshouji.mapper;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Camera;

@Scope("singleton")
@Service("cameraMapper")
public interface CameraMapper extends AbstractEntityMapper<Camera> {

}
