package com.jianshouji.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Scope("request")
@Controller("zui")
@Namespace("/admin/zui")
public class ZuiAction extends AbstractAction {
	private static final long serialVersionUID = -5357898005507546087L;
	@Action(value="toZuiPage",results={@Result(name=SUCCESS,location="/jianshouji/zuipage.jsp")})
	public String toZuipage(){
		return SUCCESS;
	}
}
