package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jianshouji.mapper.BrandMapper;
import com.jianshouji.model.Brand;
import com.jianshouji.service.IBrandService;

public class BrandServiceImpl implements IBrandService {
	
	@Autowired
	private BrandMapper brand;

	@Override
	public List<Brand> getStarBrand() {
		return brand.selectStarBrand();
	}

}
