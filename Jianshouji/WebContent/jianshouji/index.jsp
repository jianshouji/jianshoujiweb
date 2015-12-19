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
 .content{
	 background-color:#666;
	 height:auto;
 }
 #recommend-scroll-pic{
	 height:508px;
	 border-color:#0F9;
 }
 .item{
 }
 #recommend-left{
	 width:100%;
	 float:left;
	 position:relative;
 }
 #tuijian{
  margin:0px;
  width:10%;
  border:1px solid #333;
  float:left;
  position:relative;
 }
 .row{
	 width:90%;
 	 float:left;
 	 position:relative;
 }
 .footer{
 }
 </style>
 <body>
<%@include file="/jianshouji/common/commonbanner.jsp"%>
   <div class="content">
    <div id="recommend-scroll-pic" class="slider">
		<div id="myCarousel" class="carousel slide">
 					<!-- Carousel items -->
 			<div class="carousel-inner">
  				<c:forEach items="${listpic}" var="pic">
					<c:if test="${pic.guid.equals('1')==true }">
						<div class="active item"><a href="http://www.baidu.com"><img src="${ctx }/${pic.picaddress}" class="img-responsive" alt="${pic.guid}"></a></div>
					</c:if>
					<c:if test="${pic.guid.equals('1')==false }">
 					<div class="item"><img src="${ctx }/${pic.picaddress}" class="img-responsive" alt="${pic.guid}"></div>
 					</c:if>
 				</c:forEach> 
 				</div>
 					<!-- Carousel nav -->
 			<a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
 			<a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
		</div>
      </div>
      <div id="recommend-telphone">
        	<div id="recommend-left">
            	<div id="tuijian">
      					推荐榜
   				</div>
            	<div class="row">
<%--             		<c:forEach items="${listpic}" var="pic">
            			<div class="col-sm-2 col-md-3">
            					<a href="#" class="thumbnail">
         						<img src="${ctx }/${pic.picaddress }" alt="通用的占位符缩略图">
     					 		</a>
     					</div>
            		</c:forEach> --%>
            		<c:forEach items="${listpic}" var="pic">
            		     <div class="col-sm-6 col-md-4 col-lg-3 ">
          					<div class="thumbnail">
            				<a href="${ctx }/admin/telphone/toPhonePage?guid=${pic.telphoneguid}" title="jQuery API 中文文档/手册" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'jQueryAPI中文手册'])"><img class="lazy" src="${ctx }/${pic.picaddress }" width="400" height="150" data-src="http://static.bootcss.com/www/assets/img/jqueryapi.png" alt="jQuery API 中文文档/手册"></a>
            					<div class="caption">
              						<h3> 
                					<a href="###" title="jQuery API 中文文档/手册" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'jQueryAPI中文手册'])">${pic.pictitle } <br><small>中文手册</small></a>
              						</h3>
              						<p>
              						${pic.pictitle }
              						</p>
            					</div>
          					</div>
        				</div>
        			</c:forEach>
				</div>
            
            </div>

        </div>
    </div>
<%@include file="/jianshouji/common/footer.jsp"%>
    <script>
    $(function(){
		
		}
		)
    
    </script>
 </body>

</html>


