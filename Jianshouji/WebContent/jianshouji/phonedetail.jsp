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
 <style>
 .label{
 font-size:100%;
 }
 #top{
 height:500px;
 }
 #mallList{
 float:right;
 }
 #top-left{
 float:left;
 width:12%;
 }
 #top-right{
  float:left;
  width:88%;
  height:500px;
 }
 #myCarousel{
   height:500px;
 }
 .carousel-inner{
    height:500px;
 }
 #bottom{
 
 }
img,a img{
    border:0;
    margin:0;
    padding:0;
    }
    
.icon{
width:100px;
height:100px;
margin-top:20px;
}
 </style>
<body>
<script type="text/javascript">
$(function(){
})
</script>
<%@include file="/jianshouji/common/commonbanner.jsp"%>
<div class="container-fluid">
	<div id="mallList"><span class="label label-default">官方商城</span>&nbsp&nbsp&nbsp&nbsp<span class="label label-default">京东商城</span>&nbsp&nbsp&nbsp&nbsp<span class="label label-default">天猫商城</span></div>
	<div id="top">
		<div id="top-left">
				<img class="icon" src="${ctx }/jianshouji/images/logo/xiaomi.png"  class="img-rounded">
		</div>
		<div id="top-right">
			    <div id="recommend-scroll-pic" class="slider">
					<div id="myCarousel" class="carousel slide">
 							<!-- Carousel items -->
 						<div class="carousel-inner">
 							<!-- 手机详情页面展示三幅流动图 -->
							<div class="active item"><a href="http://www.baidu.com"><img src="${ctx }/jianshouji/images/phone/xiaomi/hongmi2/hongmi2-2.jpg" class="img-responsive" alt="#"></a></div>
							<div class="item"><img src="${ctx }/jianshouji/images/phone/meizu/meilanmetal/meilan-metal.png" class="img-responsive" alt="#"></div>
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