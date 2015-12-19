package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.Brand;

/**
 * 品牌-业务接口类
 * @author 世祥
 *
 */
public interface IBrandService {
	
	/**
	 * 获取明星品牌数据
	 * @return
	 */
	public List<Brand> getStarBrand();

}
