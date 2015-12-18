package com.jianshouji.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Scope("request")
@Controller("cpuAction")
@Namespace("/admin/cpu")
public class CpuAction extends AbstractAction {
	private static final long serialVersionUID = 3784014283542076007L;
	@Action(value="toCpuPage",results={@Result(name=SUCCESS,location="/jianshouji/cpu.jsp")})
	public String toCpuPage(){
		return SUCCESS;
	}
}
