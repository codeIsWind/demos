<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="${fn:escapeXml(news.title)} - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>
<link href="${STATIC_URL}/news/core/css/news.css" rel="stylesheet" type="text/css" />
<link href="${STATIC_URL}/news/detail/css/detail.css" rel="stylesheet" type="text/css" />
<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">

<div class="detail-wrap">
<!-- 	start detail-left-wrap -->
	<div class="detail-left-wrap">
		<div class="top10-wrap">
			<p class="top10-title-text">上周TOP10故事</p>
			<ul class="top10-story-list">
				<c:forEach items="${toplist}" var="item">
					<li class="story-wrap">
						<a href="/news/detail?id=${item.id}" class="article-picture">
							<img src="${item.image}" alt="">
						</a>
						<a href="/news/detail?id=${item.id}" class="article-intro">${fn:escapeXml(item.title)}</a>
					</li>
				</c:forEach>
			</ul>
		</div>
<%@include file="left.side.op.jsp"%>
	</div>
<!-- end detail-left-wrap -->

<!--start detail-right-wrap -->
	<div class="detail-right-wrap">
		<div class="right-article-content">
			<div class="top-path">
				<a href="/news">资讯 &gt;</a>
				<c:if test="${!empty category.name}">
				<a href="/news?id=${category.id}">${fn:escapeXml(category.name)} &gt;</a>
				</c:if>
				<span>${fn:escapeXml(news.title)}</span>
			</div>
			<h1 news-id="${news.id}" class="article-title">${fn:escapeXml(news.title)}</h1>
			<div class="release-people">
				<a  href="/news?id=${category.id}" class="column-tittle-name">${fn:escapeXml(category.name)}</a>
				<span class="name">&middot;&nbsp;${fn:escapeXml(news.publisher)}</span>
				<span class="time">&middot;&nbsp;<fmt:formatDate value="${news.publishTime}" pattern="yyyy-MM-dd HH:mm"/></span>
			</div>
			<a class="article-img-bg">
				<img src="${news.image}" alt="">
			</a>
			<p class="article-content-excerpts">${fn:escapeXml(news.summary)}</p>
			<div class="article-all text-container">${news.content}</div>
			<p class="mg-top60">*<span class="other-from">${fn:escapeXml(news.sourceFrom)}</span></p>

			<div class="article-footer">
				<div class="article-footer-left">
					<span class="article-icons"><span class="for-icons-num"><i class="triangle-1"></i><i class="triangle-2"></i>${visitCount}</span></span>
					<span class="article-icons icons-dz"><span class="for-icons-num praise-text"><i class="triangle-1"></i><i class="triangle-2"></i>${praiseCount}</span></span>
			<!-- <span class="article-icons icons-pl"><span class="for-icons-num"><i class="triangle-1"></i><i class="triangle-2"></i>8</span></span> -->
				</div>
				<div class="article-footer-right">
					<span class="share-to">分享到</span>
					<!-- <span class="share-to-wx share"></span> -->
					<span class="share-to-wb share"></span>
					<span  class="share-to-qq share"></span>
					<span id="add-share" class="share"></span>
				</div>
			</div>
		</div>
	</div>
	<!--end detail-right-wrap -->
</div>
</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<script type="text/javascript" src="${STATIC_URL}/news/core/js/news.js"></script>
<script type="text/javascript" src="${STATIC_URL}/news/detail/js/detail.js"></script>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>