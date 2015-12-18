package com.jianshouji.service;

import java.util.List;

import com.jianshouji.model.Pic;
import com.jianshouji.model.Telphone;

public interface IIndexService {
	//查找首页推荐手机
	public List<Telphone> listRecommendTelphone();
	
	//查找首页推荐图片
	public List<Pic> listRecommendPic();
	
}
