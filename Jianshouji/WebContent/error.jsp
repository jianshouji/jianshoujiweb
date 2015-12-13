<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出错了</title>
<style type="text/css">
.info {
    background: none repeat scroll 0 0 #FFFEE6;
    color: #8F5700;
    padding: 20px;
    border:1px dotted #8F5700;
}
</style>
</head>
<body>
<div class="info">
	<div><font style="color:#8F5700;font-size:14px;font-weight:bold">${exception.message }</font></div>
</div>	
</body>
</html>
