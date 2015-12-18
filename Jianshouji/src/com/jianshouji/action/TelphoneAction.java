package com.jianshouji.action;

import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Scope("requet")
@Controller("telphoneAction")
@Namespace("/admin/telphone")
public class TelphoneAction extends AbstractAction {
	private static final long serialVersionUID = 2L;

}
