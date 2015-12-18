package com.jianshouji.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.apache.struts2.convention.annotation.Result;

import com.jianshouji.model.Pic;
import com.jianshouji.model.Telphone;
import com.jianshouji.service.IIndexService;


@Scope("request")
@Controller("indexAction")
@Namespace("/admin/index")
public class IndexAction extends AbstractAction {
	/**
	 * 
	 */
	@Autowired
	private IIndexService indexService;
	private List<Telphone> list;
	private List<Pic> listpic;
	
	private static final long serialVersionUID = 1L;

	//获取首页展示信息
	@Action(value="toIndex",results={@Result(name=SUCCESS,location="/jianshouji/index.jsp")})
	public String toIndex(){
		 list=indexService.listRecommendTelphone();
		 listpic=indexService.listRecommendPic();
		return SUCCESS;
	}

	public List<Telphone> getList() {
		return list;
	}

	public void setList(List<Telphone> list) {
		this.list = list;
	}

	public List<Pic> getListpic() {
		return listpic;
	}

	public void setListpic(List<Pic> listpic) {
		this.listpic = listpic;
	}
}
