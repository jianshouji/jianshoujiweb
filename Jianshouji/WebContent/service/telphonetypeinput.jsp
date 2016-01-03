<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head >
 	<jsp:include page="/service/common/header.jsp"></jsp:include>
	<title>手机型号添加页面</title>
 </head>
 <body >
    	<form id="telphoneTypemsg" action="${ctx }/admin/service/telphoneTypeInsert" method="post">
  		<table>
  			<thead>
  				<th align="right" style="width:40%">属性</th>
  				<th style="width:60%">值</th>
  			</thead>
  			<tr>
  				<td align="right">手机型号</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphoneType.telphoneguid"  value="${telphoneType.telphoneguid }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">手机品牌</td>
  				<td>
  					<input class="easyui-combobox" style="width:200px;" name="telphoneType.pguid" data-options="editable:false,valueField:'guid',textField:'brandname',url:'${ctx }/admin/service/getBrandcombobox'" > 
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


