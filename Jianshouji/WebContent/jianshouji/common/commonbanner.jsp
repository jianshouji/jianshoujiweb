<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
 	<div class="banner">
   	 <div class="top-menu">
    	<div class="navbar navbar-inverse">
			<ul class="nav navbar-nav" id="globlelink">
   			 	<li><a class="active" href="${ctx }/admin/index/toIndex"><h4>主页</h4></a></li>
    		 	<li><a href="${ctx }/admin/brand/toBrandPage"><h4>品牌</h4></a></li>
             	<li><a href="${ctx }/admin/cpu/toCpuPage"><h4>处理器</h4></a></li>
             	<li><a href=""><h4>跑分榜</h4></a></li>
             	<li><a href="${ctx }/admin/zui/toZuiPage"><h4>最手机</h4></a></li>
             	<li><a href=""><h4>广告</h4></a></li>
			</ul>
        </div>
       </div>
 	</div>