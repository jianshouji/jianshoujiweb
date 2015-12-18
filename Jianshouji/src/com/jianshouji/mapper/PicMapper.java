package com.jianshouji.mapper;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Pic;

public interface PicMapper extends AbstractEntityMapper<Pic> {
	List<Pic> selectPicByRecommond();
}
