<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="资讯 - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>
<link href="${STATIC_URL}/news/core/css/news.css" rel="stylesheet" type="text/css" />
<link href="${STATIC_URL}/news/home/css/home.css" rel="stylesheet" type="text/css" />
<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">

	<div class="home-wrap">
		<div class="home-img-wrap">
				<a target="_blank" href="${topAdvert.list[0].linkUrl}" class="img-box home-img-1 home-margin-bottom10">
					<img src="<my:picResize picUrl="${topAdvert.list[0].image}" size="_1170x160" />
" title="${fn:escapeXml(topAdvert.list[0].content)}" alt="${fn:escapeXml(topAdvert.list[0].content)}">
				</a>
			<div class="img-second-row">
				<a target="_blank" href="${topAdvert.list[1].linkUrl}" class="img-box home-img-2">
					<img src="<my:picResize picUrl="${topAdvert.list[1].image}" size="_480x330" />
" title="${fn:escapeXml(topAdvert.list[1].content)}" alt="${fn:escapeXml(topAdvert.list[1].content)}">
				</a>
				<div class="second-row-right home-margin-bottom10">
					<a target="_blank" href="${topAdvert.list[2].linkUrl}" class="img-box home-img-3">
						<img src="<my:picResize picUrl="${topAdvert.list[2].image}" size="_450x160" />
" title="${fn:escapeXml(topAdvert.list[2].content)}" alt="${fn:escapeXml(topAdvert.list[2].content)}">
					</a>
					<a target="_blank" href="${topAdvert.list[3].linkUrl}" class="img-box img-4567 home-img-4">
						<img src="<my:picResize picUrl="${topAdvert.list[3].image}" size="_220x160" />
" title="${fn:escapeXml(topAdvert.list[3].content)}" alt="${fn:escapeXml(topAdvert.list[3].content)}">
					</a>
				</div>
				<div class="second-row-right">
					<a target="_blank" href="${topAdvert.list[4].linkUrl}" class="img-box img-4567 home-img-5">
						<img src="<my:picResize picUrl="${topAdvert.list[4].image}" size="_220x160" />
" title="${fn:escapeXml(topAdvert.list[4].content)}" alt="${fn:escapeXml(topAdvert.list[4].content)}">
					</a>
					<a target="_blank" href="${topAdvert.list[5].linkUrl}" class="img-box img-4567 home-img-6">
						<img src="<my:picResize picUrl="${topAdvert.list[5].image}" size="_220x160" />
" title="${fn:escapeXml(topAdvert.list[5].content)}" alt="${fn:escapeXml(topAdvert.list[5].content)}">
					</a>
					<a target="_blank" href="${topAdvert.list[6].linkUrl}" class="img-box img-4567 home-img-7">
						<img src="<my:picResize picUrl="${topAdvert.list[6].image}" size="_220x160" />
" title="${fn:escapeXml(topAdvert.list[6].content)}" alt="${fn:escapeXml(topAdvert.list[6].content)}">
					</a>
				</div>
			</div>
		</div>


		<div class="home-container-wrap">
			<div class="home-container-left">
				<embed src="${video.list[0].linkUrl}" allowFullScreen="true" quality="high" width="330" height="240" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash">
				</embed>
				
				<div class="activity-list">
					<%@include file="left.side.op.jsp"%>
				</div>
			</div>

			<div class="home-container-right">
				<div id="columnNav" class="column-nav">
					<ul class="column-tab-wrap">
						<li class="active" id="selectAll">全部</li>
						<c:forEach items="${newCategorylist}" var="item">
						<li id="tab-${item.id}" data-id="${item.id}">${fn:escapeXml(item.name)}</li>
						</c:forEach>
					</ul>
				</div>

				<div class="article-list">
					<ul class="block-ul">
						<%@include file="news.list.jsp"%>
						<c:if test="${totalPage > 1}">
						<div class="add-more" data-page="1" data-total="${totalPage}" data-toggle-text="加载中，请稍候...">点击加载更多</div>
						</c:if>
					</ul>

					<c:forEach items="${newCategorylist}" var="item">
					<ul>
						<div id="btn-more-${item.id}" class="add-more" data-id="${item.id}" data-page="0" data-toggle-text="加载中，请稍候...">点击加载更多</div>
					</ul>
					</c:forEach>
				</div>

			</div>
		</div>
	</div>
</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>
<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<script type="text/javascript" src="${STATIC_URL}/news/core/js/news.js"></script>
<script type="text/javascript" src="${STATIC_URL}/news/home/js/home.js"></script>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>