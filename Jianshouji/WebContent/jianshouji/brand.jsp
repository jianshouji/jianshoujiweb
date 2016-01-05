<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<jsp:include page="/jianshouji/common/header.jsp"></jsp:include>
<title>荐手机-品牌</title>
</head>
<body>
	<!----- start-header---->
	<div class="banner two" id="home">
		<jsp:include page="/jianshouji/common/commonbanner.jsp"></jsp:include>
	</div>
	<!--classes-->
		<div class="clases-section">
			<div class="container">
			    <div class="class-grids">
					 <div class="col-md-6 class-grid wow zoomInLeft animated">
					     <img src="${ctx }/jianshouji/images/c1.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Body Building </h4>
						</div>
					</div>
					 <div class="col-md-6 class-grid wow zoomInRight animated">
					     <img src="${ctx }/jianshouji/images/c2.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Cardio Practice</h4>
						</div>
					</div>
					 <div class="col-md-6 class-grid wow zoomInLeft animated">
					     <img src="${ctx }/jianshouji/images/c3.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Athletic Training</h4>
						</div>
					</div>
					 <div class="col-md-6 class-grid wow zoomInRight animated">
					     <img src="${ctx }/jianshouji/images/c1.jpg" class="img-responsive" alt="" />
						 <div class="bottom-color">
							<h4>Body Building </h4>
						</div>
					</div>
					<div class="clearfix"></div>
				 </div>
			</div>
		</div>
			<jsp:include page="/jianshouji/common/footer.jsp"></jsp:include>
</body>
</html>