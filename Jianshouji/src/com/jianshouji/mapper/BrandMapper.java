package com.jianshouji.mapper;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Brand;

@Scope("singleton")
@Service("brandMapper")
public interface BrandMapper extends AbstractEntityMapper<Brand> {

}
