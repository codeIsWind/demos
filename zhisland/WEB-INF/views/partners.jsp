<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="合作伙伴 - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>
<link href="${STATIC_URL}/partners/css/partners.css" rel="stylesheet" type="text/css" />

<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">
	<a class="banner-width-container" href="${themePic.list[0].linkUrl}">
		<img src="${themePic.list[0].image}" alt="${fn:escapeXml(themePic.list[0].content)}">
	</a>

	<c:forEach items="${cooperater}" var="group">
		<div class="hash-holder wrapper">${fn:escapeXml(group.name)}</div>
		<div class="partner-container inline-container wrapper">
		<c:forEach items="${group.cooperaterList}" var="item">
			<a href="${item.linkUrl}">
				<img src="${item.image}" title="${fn:escapeXml(item.name)}" alt="${fn:escapeXml(item.name)}">
			</a>
		</c:forEach>
	</div>
	</c:forEach>
</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>