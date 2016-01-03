<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
 <head>
 	<jsp:include page="/jianshouji/common/header.jsp"></jsp:include>
	<title>荐手机</title>
 </head>
<body>
<%@include file="/jianshouji/common/commonbanner.jsp"%>
<div class="container-fluid">
	<div>手机网站部分</div>
	<div id="top">
		<div id="top-left">
				<img src="/wp-content/uploads/2014/06/download.png"  class="img-rounded">
		</div>
		<div id="top-right">
			    <div id="recommend-scroll-pic" class="slider">
					<div id="myCarousel" class="carousel slide">
 							<!-- Carousel items -->
 						<div class="carousel-inner">
 							<!-- 手机详情页面展示三幅流动图 -->
							<div class="active item"><a href="http://www.baidu.com"><img src="${ctx }/${pic.picaddress}" class="img-responsive" alt="${pic.guid}"></a></div>
 							<div class="item"><img src="${ctx }/${pic.picaddress}" class="img-responsive" alt="${pic.guid}"></div>
 						</div>
 							<!-- Carousel nav -->
 					<a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
 					<a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
					</div>
      			</div>
		</div>
	</div>
	<div id="bottom"></div>
</div>
</body>
</html>