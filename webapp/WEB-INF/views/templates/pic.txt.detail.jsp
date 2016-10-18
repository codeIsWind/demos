<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>

<div id="app-page">
<c:set var="showSecNav" value="true" />
<%@include file="/WEB-INF/views/inc/header.jsp"%>

<div id="page-content">
<div id="page-content-inner">
	<a class="banner-width-container" href="${themePic.list[0].linkUrl}">
		<img src="${themePic.list[0].image}" alt="${fn:escapeXml(themePic.list[0].content)}">
	</a>

<%@include file="/WEB-INF/views/inc/custom.content.jsp"%>

</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>