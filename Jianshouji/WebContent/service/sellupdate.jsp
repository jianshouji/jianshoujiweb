<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head >
 	<jsp:include page="/service/common/header.jsp"></jsp:include>
	<title>销售信息修改页面</title>
 </head>
 <body >
    	<form id="sellmsg" action="${ctx }/admin/service/sellEdit" method="post">
  		<table>
  			<thead>
  				<th align="right" style="width:40%">属性</th>
  				<th style="width:60%">值</th>
  			</thead>
  			<tr>
  				<td align="right">官网销售地址</td>
  				<td>
  					<input type="text" style="width:200px;" name="sell.industryaddress"  value="${sell.industryaddress }">
  					<input type="text" style="width:200px;" name="sell.telphoneguid" value="${sell.telphoneguid }" hidden="true" />
  				</td>
  			</tr>
  			<tr>
  				<td align="right">京东商城地址</td>
  				<td>
  					<input type="text" style="width:200px;" name="sell.jdaddress" value="${sell.jdaddress }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">天猫商城销售地址</td>
  				<td>
  					<input type="text"  style="width:200px;" name="sell.tmalladdress" value="${sell.tmalladdress }">
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


