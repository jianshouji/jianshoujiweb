package com.jianshouji.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jianshouji.model.Brand;
import com.jianshouji.model.Pic;
import com.jianshouji.service.IBrandService;

@Scope("request")
@Controller("brandAction")
@Namespace("/admin/brand")
public class BrandAction extends AbstractAction {
	private static final long serialVersionUID = 9051425510072453171L;
	
	@Autowired
	private IBrandService brandService;
	private List<Brand> list;
	private List<Pic> listpic;
	
	public List<Brand> getList() {
		return list;
	}

	public void setList(List<Brand> list) {
		this.list = list;
	}

	public List<Pic> getListpic() {
		return listpic;
	}

	public void setListpic(List<Pic> listpic) {
		this.listpic = listpic;
	}


	//获取品牌页信息
	@Action(value="toBrandPage",results={@Result(name=SUCCESS,location="/jianshouji/brand.jsp")})
	public String toBrandPage(){
		list=brandService.getStarBrand();
		return SUCCESS;
	}
}
