package com.jianshouji.action;

import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


@Scope("request")
@Controller("indexAction")
@Namespace("/admin/index")
public class IndexAction extends AbstractAction {
	//分支测试
	
}
