package com.jianshouji.mapper;

import java.util.List;

import com.jianshouji.model.Brand;


public interface BrandMapper extends AbstractEntityMapper<Brand> {
	List<Brand> selectStarBrand();

}
