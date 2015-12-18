<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
</head>
<body onload="javascript:onload()">
<script type="text/javascript">
function onload(){
	window.location.href='admin/index/toIndex';
	}
</script>
</body>
</html>