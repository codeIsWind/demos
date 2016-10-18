<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="首页 - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>
<link href="${STATIC_URL}/home/css/home.css" rel="stylesheet" type="text/css" />

<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">

	<div class="sildes-container">
		<div class="slides-viewport banner" data-time="3">
			<div class="slides-pages">
				<c:forEach items="${topBanner.list}" var="item">
				<a class="banner-width-container slide-page slide-page-banner" href="${item.linkUrl}">
					<img src="${item.image}">
				</a>
				</c:forEach>
			</div>
		</div>
		<div class="slides-bullets">
			<c:forEach items="${topBanner.list}" var="item">
				<a class="slide-bullet" href="javascript:;"></a>
			</c:forEach>
		</div>
	</div>

<%@include file="/WEB-INF/views/inc/custom.content.jsp"%>

	<div id="partner-container" class="wrapper">
		<div class="section-title">合作伙伴</div>
		<div class="inline-container">
			<c:forEach items="${cooperaterList}" var="item">
			<a href="${item.linkUrl}">
				<img src="${item.image}" title="${fn:escapeXml(item.name)}" alt="${fn:escapeXml(item.name)}">
			</a>
			</c:forEach>
		</div>
	</div>

	<div id="links-container" class="wrapper">
		<div class="section-title">友情链接</div>
		<div class="inline-container">
			<c:forEach items="${friendLink.list}" var="item">
			<a href="${item.linkUrl}">${fn:escapeXml(item.name)}</a>
			</c:forEach>
		</div>
	</div>
</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>