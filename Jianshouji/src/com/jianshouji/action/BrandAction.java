package com.jianshouji.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Scope("request")
@Controller("brandAction")
@Namespace("/admin/brand")
public class BrandAction extends AbstractAction {
	private static final long serialVersionUID = 9051425510072453171L;
	//获取品牌页信息
	@Action(value="toBrandPage",results={@Result(name=SUCCESS,location="/jianshouji/brand.jsp")})
	public String toBrandPage(){
		return SUCCESS;
	}
}
