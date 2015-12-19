package com.jianshouji.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Scope("requet")
@Controller("telphoneAction")
@Namespace("/admin/telphone")
public class TelphoneAction extends AbstractAction {
	private static final long serialVersionUID = 2L;
	private String guid;
	
	//获取首页展示信息
	@Action(value="toPhonePage",results={@Result(name=SUCCESS,location="/jianshouji/phonedetail.jsp")})
	public String toPhonePage(){
		return SUCCESS;
	}
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}

}
