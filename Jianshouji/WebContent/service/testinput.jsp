<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head >
 	<jsp:include page="/service/common/header.jsp"></jsp:include>
	<title>测评信息添加页面</title>
 </head>
 <body >
    	<form id="testmsg" action="${ctx }/admin/service/phoneInsert" method="post">
  		<table>
  			<thead>
  				<th align="right">属性</th>
  				<th>值</th>
  			</thead>
  			<tr>
  				<td align="right">测评标题</td>
  				<td>
  					<input type="text" style="width:200px;" name="ceping.title" >
  					<input type="text" style="width:200px;" name="ceping.guid" value="${ceping.guid }" hidden="true" />
  					<input type="text" style="width:200px;" name="ceping.telphoneguid" value="${ceping.telphoneguid }" hidden="true">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">测评地址</td>
  				<td>
  					<input type="text" style="width:200px;" name="ceping.testaddress" value="${ceping.testaddress" }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">测评时间</td>
  				<td>
  					<input type="text"  class="easyui-datebox" style="width:200px;" name="ceping.testtime" >
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否为精</td>
  				<td>
  					<input type="text" style="width:200px;" name="ceping.testflag" > 
  				</td>
  			</tr>
  		</table>
  		<div>
  			<input type="submit" id="submit_btn"  onclick="submitbtn()" value="确定">
  			<input type="reset" id="cancel_btn" value="重置">
  			<input style="" type="submit" id="close_btn" onclick="window.close()" value="关闭">
  		</div>
  	</form>
 </body>
</html>


