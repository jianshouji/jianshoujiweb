package com.jianshouji.service.impl;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Telphone;
import com.jianshouji.service.IIndexService;

@Scope("singleton")
@Service("indexService")
public class IndexServiceImpl implements IIndexService {

	@Override
	public List<Telphone> listRecommendPic() {
		return null;
	}

}
