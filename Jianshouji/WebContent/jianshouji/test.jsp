<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<jsp:include page="/jianshouji/common/header.jsp"></jsp:include>
    <title>首页</title>
</head>
<body>
<div>1111</div>
<script type="text/javascript">
$(function(){
	$.ajax({
	type:"post",
	url:"${ctx }/admin/index/getIndexInfo"
	});
//	alert('${list }');
	})
</script>
<c:forEach items="${list}" var="pic">
<div>${pic.guid }</div>
</c:forEach>
</body>
</html>