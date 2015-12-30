package com.jianshouji.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.BrandMapper;
import com.jianshouji.mapper.TelphoneTypeMapper;
import com.jianshouji.model.Brand;
import com.jianshouji.model.TelphoneType;
import com.jianshouji.model.TreeModel;
import com.jianshouji.service.ITelphoneTypeService;
@Scope("singleton")
@Service("telphoneTypeServiceImpl")
public class TelphoneTypeServiceImpl implements ITelphoneTypeService {
	@Autowired
	private TelphoneTypeMapper  telphoneTypeMapper;
	@Autowired
	private BrandMapper brandMapper;
	@Override
	public List<TreeModel> selectTree() {
		List<TreeModel> tree=new ArrayList<TreeModel>();
		TreeModel treemodel=new TreeModel();
		List<Brand> brandlist=brandMapper.selectAllBrand();
		for(Brand bd:brandlist){
			treemodel.setId(bd.getGuid());
			treemodel.setText(bd.getBrandname());
			telphoneTypeMapper.selectChildrenByPguid(bd.getGuid());
			tree.add(treemodel);
		};
		return tree;
	}
	@Override
	public List<TelphoneType> listbrand() {
		return telphoneTypeMapper.selectAllBrand();
	}
}
