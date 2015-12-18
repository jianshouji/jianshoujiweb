package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.PicMapper;
import com.jianshouji.mapper.TelphoneMapper;
import com.jianshouji.model.Pic;
import com.jianshouji.model.Telphone;
import com.jianshouji.service.IIndexService;

@Scope("singleton")
@Service("indexServiceimpl")
public class IndexServiceImpl implements IIndexService {
	@Autowired
	private TelphoneMapper telphoneMapper;
	@Autowired
	private PicMapper picMapper;
	@Override
	//查找首页推荐图片
	public List<Pic> listRecommendPic() {
		return picMapper.selectPicByRecommond();
	}
	//查找首页推荐手机
	@Override
	public List<Telphone> listRecommendTelphone() {
		// TODO Auto-generated method stub
		return telphoneMapper.selectByIsrecommend();
	}

}
