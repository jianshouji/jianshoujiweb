package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.BrandMapper;
import com.jianshouji.model.Brand;
import com.jianshouji.service.IBrandService;
@Scope("singleton")
@Service("brandServiceImpl")
public class BrandServiceImpl implements IBrandService {
	
	@Autowired
	private BrandMapper brand;

	@Override
	public List<Brand> getStarBrand() {
		return brand.selectStarBrand();
	}

	@Override
	public List<Brand> brandCombobox() {
		return brand.brandCombobox();
	}

}
