<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head >
 	<jsp:include page="/service/common/header.jsp"></jsp:include>
	<title>图片添加页面</title>
 </head>
 <body >
    	<form id="picmsg" action="${ctx }/admin/service/picInsert" method="post">
  		<table>
  			<thead>
  				<th align="right" style="width:40%">属性</th>
  				<th style="width:60%">值</th>
  			</thead>
  			<tr>
  				<td align="right">图片名称</td>
  				<td>
  					<input type="text" style="width:200px;" name="pic.picname" value="${pic.picname }">
  					<input type="text" style="width:200px;" name="pic.guid" value="${pic.guid }" hidden="true" />
  					<input type="text" style="width:200px;" name="pic.telphoneguid" value="${pic.telphoneguid }" hidden="true">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">图片地址</td>
  				<td>
  					<textarea name="pic.picaddress" style="width:200px;">${pic.picaddress}</textarea>
  				</td>
  			</tr>
  			<tr>
  				<td align="right">图片标题</td>
  				<td>
  					<input type="text"  style="width:200px;" name="pic.pictitle"  value="${pic.pictitle }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否为首页推荐</td>
  				<td>
  					<input type="text"  style="width:200px;" name="pic.isshowindex"  value="0">
  				</td>
  			</tr>
  			  <tr>
  				<td align="right">是否为性价比推荐</td>
  				<td>
  					<input type="text"  style="width:200px;" name="pic.islowprice"  value="0">
  				</td>
  			</tr>
  			 <tr>
  				<td align="right">是否为品牌推荐</td>
  				<td>
  					<input type="text"  style="width:200px;" name="pic.isrecommend"  value="0">
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


