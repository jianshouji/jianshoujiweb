<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
 <head>
 	<jsp:include page="/jianshouji/common/header.jsp"></jsp:include>
	<title>首页</title>
 </head>
 <style>
 .banner{
 background-color:#666;
 }
 #globlelick{
height:80px;
float:right;
margin-top:30px;
margin-right:40px;
 }
 .content{
	 background-color:#666;
	 height:457px;
 }
 #recommend-scroll-pic{
	 height:457px;
	 border-color:#0F9;
 }
 .item{
 }
 #recommend-left{
	 width:80%;
 }
 #tuijian{
  margin:0 auto;width:20px;line-height:24px;border:1px solid #333
 }
 .footer{
 }
 </style>
 <body>
 	<div class="banner">
   	 <div class="top-menu">
    	<div class="navbar navbar-inverse">
			a<ul class="nav navbar-nav" id="globlelick">
   			 	<li><a class="active" href="../荐手机官网/品牌.html"><h4>主页</h4></a></li>
    		 	<li><a href=""><h4>品牌</h4></a></li>
             	<li><a href=""><h4>处理器</h4></a></li>
             	<li><a href=""><h4>跑分榜</h4></a></li>
             	<li><a href=""><h4>最手机</h4></a></li>
             	<li><a href=""><h4>广告</h4></a></li>
			</ul>
        </div>
       </div>
 	</div>
   <div class="content">
    <div id="recommend-scroll-pic" class="slider">
		<div id="myCarousel" class="carousel slide">
 					<!-- Carousel items -->
 			<div class="carousel-inner">
  				<div class="active item"><a href="http://www.baidu.com"><img src="${ctx }/jianshouji/images/xiaomi/hongmi-note3-2.jpg" class="img-responsive" alt="First slide"></a></div>
  					<div class="item"><img src="${ctx }/jianshouji/images/xiaomi/hongmi-note3.jpg" class="img-responsive" alt="second slide"></div>
  					<div class="item"><img src="${ctx }/jianshouji/images/xiaomi/hongmi-note3-2.jpg" class="img-responsive" alt="third slide"></div>
 				</div>
 					<!-- Carousel nav -->
 			<a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
 			<a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
			</div>
         </div>
    </div>
        <div>
        	<div id="recommend-left">
            	<div id="tuijian">
      					推荐榜
   				</div>
            	<div class="row">
  					 <div class="col-sm-2 col-md-3">
      					<a href="#" class="thumbnail">
         					<img src="images/letv/le1s-1.jpg" alt="通用的占位符缩略图">
     					 </a>
   					</div>
   					<div class="col-sm-2 col-md-3">
      					<a href="#" class="thumbnail">
         					<img src="images/letv/le1s-1.jpg" alt="通用的占位符缩略图">
     					 </a>
   					</div>
				</div>
            
            </div>
            <div id="recommend-right"></div>
        </div>
    </div>
    <div class="footer">
    </div>
    
    <script>
    $(function(){
		
		}
		)
    
    </script>
 </body>

</html>


