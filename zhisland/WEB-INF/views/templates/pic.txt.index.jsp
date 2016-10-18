<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>

<div id="app-page">
<c:set var="showSubNav" value="true" />
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">
	<div class="sildes-container">
		<div class="slides-viewport banner" data-time="3">
			<div class="slides-pages">
				<c:forEach items="${topBanner.list}" var="item">
				<a class="banner-width-container slide-page" href="${item.linkUrl}">
					<img src="${item.image}">
				</a>
				</c:forEach>
			</div>
		</div>
		<div class="slides-bullets circle">
			<c:forEach items="${topBanner.list}" var="item">
				<a class="slide-bullet" href="javascript:;"></a>
			</c:forEach>
		</div>
	</div>

<%@include file="/WEB-INF/views/inc/custom.content.jsp"%>

</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>