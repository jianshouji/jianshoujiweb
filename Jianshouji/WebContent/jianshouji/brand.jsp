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
	<%@include file="/jianshouji/common/commonbanner.jsp"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<h3 class="text-left">明星品牌</h3>
				<div class="row-fluid">
				<c:forEach items="${list}" var="starItem">
					<div class="active item">
						<a href="http://www.baidu.com">
						<img src="${ctx }/${pic.picaddress}" class="img-responsive" alt="${pic.guid}">
						</a>
					</div>
					<div class="col-xs-3 span3">
						<a href="http://www.baidu.com">
							<img alt="${starItem.brandname }" src="img/a.jpg" />
						</a>
					</div>
				</c:forEach>
				
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
				</div>
				<div class="row-fluid">
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
				</div>
			</div>
		</div>
				<div class="row-fluid">
			<div class="span12">
				<h3 class="text-left">其他品牌</h3>
				<div class="row-fluid">
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
				</div>
				<div class="row-fluid">
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
					<div class="col-xs-3 span3">
						<img alt="140x140" src="img/a.jpg" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="" class="content">

	</div>
</body>
</html>