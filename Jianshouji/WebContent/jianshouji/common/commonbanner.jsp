<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
 			<div class="header-bottom">
			 <div class="fixed-header">
				<div class="container">
					<div class="logo">
						<a href="index.html"><h1>荐<span>手机</span></h1></a>
					</div>
					<span class="menu"> </span>
					<div class="top-menu">
					<nav class="navigation">
						<ul class="cl-effect-16">
							<li><a class="active" href="${ctx }/admin/index/toIndex">主页</a></li>
							<li><a href="${ctx }/admin/brand/toBrandPage">品牌</a></li>
							<li><a href="${ctx }/admin/cpu/toCpuPage">处理器</a></li>
							<li><a href="404.html">跑分榜</a></li>
							<li><a href="${ctx }/admin/zui/toZuiPage">最手机</a></li>
							<li><a href="contact.html">广告</a></li>
						<ul>
					</nav>		
					</div>
				<!-- script for menu -->
						<script>
						$( "span.menu" ).click(function() {
						  $( ".top-menu" ).slideToggle( "slow", function() {
							// Animation complete.
						  });
						});
					</script>
					<!-- script for menu -->
					<script>
				$(document).ready(function() {
					 var navoffeset=$(".header-bottom").offset().top;
					 $(window).scroll(function(){
						var scrollpos=$(window).scrollTop(); 
						if(scrollpos >=navoffeset){
							$(".header-bottom").addClass("fixed");
						}else{
							$(".header-bottom").removeClass("fixed");
						}
					 });
					 
				});
				</script>
					<div class="clearfix"></div>
				</div>
			 </div>
		</div>