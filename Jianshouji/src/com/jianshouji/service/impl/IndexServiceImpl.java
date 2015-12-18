package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.mapper.TelphoneMapper;
import com.jianshouji.model.Telphone;
import com.jianshouji.service.IIndexService;

@Scope("singleton")
@Service("indexServiceimpl")
public class IndexServiceImpl implements IIndexService {
	@Autowired
	private TelphoneMapper telphoneMapper;
	@Override
	public List<Telphone> listRecommendPic() {
		return telphoneMapper.selectByIsrecommend();
	}

}
