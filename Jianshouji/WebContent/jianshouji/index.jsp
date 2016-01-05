<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>主页</title>
<jsp:include page="/jianshouji/common/header.jsp"></jsp:include>
</head>
<body>
	<!----- start-header---->
	<div class="banner" id="home">
		<jsp:include page="/jianshouji/common/commonbanner.jsp"></jsp:include>
			<div class="slider">
				 <div id="cbp-fwslider" class="cbp-fwslider">
					<ul>
						<li><a href="#"><img src="${ctx }/jianshouji/images/slide3.png" alt="img01"/></a></li>
						<li><a href="#"><img src="${ctx }/jianshouji/images/slide2.png" alt="img02"/></a></li>
						<li><a href="#"><img src="${ctx }/jianshouji/images/slide3.png" alt="img03"/></a></li>
						<li><a href="#"><img src="${ctx }/jianshouji/images/slide2.png" alt="img04"/></a></li>
						<li><a href="#"><img src="${ctx }/jianshouji/images/slide4.png" alt="img05"/></a></li>
					</ul>
				</div>
			</div>
		</div>
		<link rel="stylesheet" type="text/css" href="${ctx }/jianshouji/css/component.css" />
		<script src="${ctx }/jianshouji/js/modernizr.custom.js"></script>
		<script src="${ctx }/jianshouji/js/jquery.cbpFWSlider.min.js"></script>
		<script>
			$( function() {

				$( '#cbp-fwslider' ).cbpFWSlider();

			} );
		</script>
		 
<!--start-slide-bottom-->
		<!--tainers-section-->
				  <div class="tainers-section">
	 				 <div class="container">
						<!--sreen-gallery-cursual-->
						<div class="col-md-3 tainer wow bounceInLeft" data-wow-delay="0.4s">
						      <h3>最新发布</h3>
							  <p>关注最新发布手机</p>
						</div>
						<div class="col-md-9 sreen-gallery-cursual wow bounceInRight" data-wow-delay="0.4s">
							<!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel">
					                <div class="item">
					                	<div class="item-grid">
					                		<div class="item-pic">
					                			<a href="http://www.baidu.com"><img src="${ctx }/jianshouji/images/t1.jpg" /></a>
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
<!--classes-->
		<div class="clases-section">
			<div class="container">
			             <h3>性价比之选</h3>
			     <div class="class-grids">
					 <div class="col-md-6 class-grid wow zoomInLeft animated">
					     <img src="${ctx }/jianshouji/images/c1.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>手机名称 </h4>
							<p>手机价格&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp发布日期</p>
						</div>
					</div>
					 <div class="col-md-6 class-grid wow zoomInRight animated">
					     <img src="${ctx }/jianshouji/images/c2.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Cardio Practice</h4>
							<p>with John Da Vinci</p>
						</div>
					</div>
					 <div class="col-md-6 class-grid wow zoomInLeft animated">
					     <img src="${ctx }/jianshouji/images/c3.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Athletic Training</h4>
							<p>with John Da Vinci</p>
						</div>
					</div>
					<div class="col-md-6 class-grid wow zoomInLeft animated">
					     <img src="${ctx }/jianshouji/images/c3.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Athletic Training</h4>
							<p>with John Da Vinci</p>
						</div>
					</div>
					<div class="col-md-6 class-grid wow zoomInLeft animated">
					     <img src="${ctx }/jianshouji/images/c3.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Athletic Training</h4>
							<p>with John Da Vinci</p>
						</div>
					</div>
					 <div class="col-md-6 class-grid wow zoomInRight animated">
					     <img src="${ctx }/jianshouji/images/c1.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Body Building </h4>
							<p>with John Da Vinci</p>
						</div>
					</div>
					<div class="clearfix"></div>
				 </div>
			</div>
		</div>
		<!--start-new-->
		<div class="new-section">
		   <div class="container">
		         <h3>CPU旗舰</h3>
				 <div class="new">
				   <div class="col-md-6 new-text wow rollIn animated" data-wow-delay="0.4s">
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
				 <div class="col-md-6 new-text two wow rollIn animated" data-wow-delay="0.4s">
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
				   <div class="col-md-6 new-text wow rollIn animated" data-wow-delay="0.4s">
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