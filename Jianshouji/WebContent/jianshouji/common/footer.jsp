<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>index</title>
</head>

<body>
<%--  <s:form action="test/Login" >
    <s:textfield key="user.username"/>
    <s:password key="user.password" />
    <s:submit/>
</s:form>  --%>
 <jsp:forward page="/page/selfPage/list.jsp" /> 
<%-- <jsp:forward page="/chahua/index.jsp" /> --%>
</body>
</html>
