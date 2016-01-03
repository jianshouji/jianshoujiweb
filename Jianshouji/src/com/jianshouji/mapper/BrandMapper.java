package com.jianshouji.mapper;

import java.util.List;

import com.jianshouji.model.Brand;


public interface BrandMapper extends AbstractEntityMapper<Brand> {
	List<Brand> selectStarBrand();
	List<Brand> selectAllBrand();
	//获取品牌下拉框
	List<Brand> brandCombobox();
}
