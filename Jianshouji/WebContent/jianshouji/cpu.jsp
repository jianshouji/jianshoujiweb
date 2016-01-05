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

	<!----- start-header---->
	<div class="banner two" id="home">
<%@include file="/jianshouji/common/commonbanner.jsp"%>
	</div>
	<!----start-slide-bottom--->
		<div class="second-head">
			<div class="container"> 
				<h2><a href="index.html"><h5>Home</h5></a> / TRAINERS</h2>
			 </div>
		</div>
				<!--tainers-section-->
				  <div class="tainers-section">
	 				 <div class="container">
						<!--sreen-gallery-cursual-->
						<div class="col-md-3 tainer wow bounceInLeft" data-wow-delay="0.4s">
						      <h3>Our Trainers</h3>
							  <p>Why not give one of these popular classes a look?</p>
						</div>
						<div class="col-md-9 sreen-gallery-cursual wow bounceInRight" data-wow-delay="0.4s">
							<!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel">
					                <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t1.jpg" />
					                		</div>
					                	</div>
					                </div>
					                <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t2.jpg" />
                                               </div>
					                		</div>
					                </div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t3.jpg" />
                                               </div>
					                		</div>
					                	</div>
					               <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t1.jpg" />
                                               </div>
					                		</div>
					                	</div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t2.jpg" />
                                               </div>
					                		</div>
					                	</div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t3.jpg" />
                                               </div>
					                		</div>
					                	</div>
					               <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t1.jpg" />
                                               </div>
					                		</div>
					                	</div>
					                 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t2.jpg" />
                                               </div>
					                		</div>
					                	</div>
					                	 <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<img src="${ctx }/jianshouji/images/t3.jpg" />
                                               </div>
					                		</div>
					                	</div>
					                </div>
				              </div>
							  <div class="clearfix"></div>
						<!--//sreen-gallery-cursual-->
					</div>
				</div>
				<!-- requried-jsfiles-for owl -->
							<link href="${ctx }/jianshouji/css/owl.carousel.css" rel="stylesheet">
							    <script src="${ctx }/jianshouji/js/owl.carousel.js"></script>
							        <script>
							    $(document).ready(function() {
							      $("#owl-demo").owlCarousel({
							         items :3,
							        lazyLoad : true,
							        autoPlay : true,
							        navigation :true,
							        navigationText :  false,
							        pagination : false,
							      });
							    });
							    </script>
							 
			 <!-- //requried-jsfiles-for owl -->
  <!-- //End-team-->
	<div class="trainee-section">
		<div class="container">
		       <h3>Our Trainees</h3>
			<div class="trainee-grids">
				<div class="col-md-4 trainee-grid wow zoomInLeft animated">
					  <a href="single.html"><img src="${ctx }/jianshouji/images/b1.jpg" class="img-responsive" alt="" /></a>
						 <div class="date">
							 <lable>30</lable>
							 <span>Mar</span>
						 </div>
					  <a href="single.html"><h4>Lorem ipsum dolor sit amet,<h5> consectetuer adipiscing.</h5></h4></a>
					 <p>Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem. Lorem ipsum dolor sit amet,…</p>
				</div>
				<div class="col-md-4 trainee-grid wow fadeInUpBig animated animated" data-wow-delay="0.4s">
					  <a href="single.html"><img src="${ctx }/jianshouji/images/b2.jpg" class="img-responsive" alt="" /></a>
						<div class="date">
							 <lable>30</lable>
							 <span>Aug</span>
						 </div>
					  <a href="single.html"><h4>Lorem ipsum dolor sit amet,<h5> consectetuer adipiscing.</h5></h4></a>
					 <p>Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem. Lorem ipsum dolor sit amet,…</p>
				</div>
				<div class="col-md-4 trainee-grid wow zoomInRight animated">
					 <a href="single.html"><img src="${ctx }/jianshouji/images/b3.jpg" class="img-responsive" alt="" /></a>
						 <div class="date">
							 <lable>15</lable>
							 <span>Nov</span>
						</div>
					 <a href="single.html"> <h4>Lorem ipsum dolor sit amet,<h5> consectetuer adipiscing.</h5></h4></a>
					 <p>Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem. Lorem ipsum dolor sit amet,…</p>
				</div>
				<div class="clearfix"></div>
		   </div>
		</div>
	</div>
		<!--start-events-->
		<div class="new-section">
		   <div class="container">
		         <h3>Our Events</h3>
				 <div class="new">
				   <div class="col-md-6 new-text wow rollIn animated" data-wow-delay="0.4s"">
					   <h5>THU 14 May, 2015</h5>
					   <a href="single.html"><h4>How to lose fat fast</h4></a>
					   <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				   </div>
					<div class="col-md-6 welcome-img">
					 <a href="single.html" class="mask"><img src="${ctx }/jianshouji/images/n1.jpg" alt="image" class="img-responsive zoom-img"></a>
					</div>
				   <div class="clearfix"> </div>
			   </div>
			    <div class="new">
				 <div class="col-md-6 new-text two wow rollIn animated" data-wow-delay="0.4s"">
					   <h5>THU 14 May, 2015</h5>
					  <a href="single.html"><h4>Build your six pack</h4></a>
										   <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				   </div>
					<div class="col-md-6 new-img two">
					 <a href="single.html" class="mask"><img src="${ctx }/jianshouji/images/n3.jpg" alt="image" class="img-responsive zoom-img"></a>
					</div>
				   <div class="clearfix"> </div>
			   </div> 
			    <div class="new">
				   <div class="col-md-6 new-text wow rollIn animated" data-wow-delay="0.4s"">
					   <h5>THU 14 May, 2015</h5>
					   <a href="single.html"><h4>How to lose fat fast</h4></a>
					   <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				   </div>
					<div class="col-md-6 welcome-img">
					 <a href="single.html" class="mask"><img src="${ctx }/jianshouji/images/n2.jpg" alt="image" class="img-responsive zoom-img"></a>
					</div>
				   <div class="clearfix"> </div>
			   </div>
		</div>
	</div>
			<jsp:include page="/jianshouji/common/footer.jsp"></jsp:include>
</body>
</html>