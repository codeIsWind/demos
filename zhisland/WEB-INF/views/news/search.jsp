<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="${fn:escapeXml(param.keyword)} 搜索结果 - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<link href="${STATIC_URL}/news/core/css/news.css" rel="stylesheet" type="text/css" />
<link href="${STATIC_URL}/news/search/css/search.css" rel="stylesheet" type="text/css" />
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>

<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">
<div class="search-wrap">
		<!-- end home-img-wrap -->
		<div class="search-container-wrap">
		<!-- tart home-container-left -->
			<div class="search-container-left">
				<!-- <div class="left-panel">
						<div class="column">一级栏目名称<span class="column-count">32</span></div>
						<div id="column-zx" class="column">资&nbsp&nbsp讯<span class="column-count">12</span></div>
						<div class="column">部落社群<span class="column-count">23</span></div>
						<div class="column">部落社群<span class="column-count">111</span></div>
						<div class="column">部落社群<span class="column-count">33</span></div>
						<div class="column">活&nbsp&nbsp动<span class="column-count">12</span></div>
				</div> -->
				 <div class="search-activity-list">
					<%@include file="left.side.op.jsp"%>
				</div>
			</div>
		<!-- end home-container-left -->
			<div class="search-container-right">
				<div class="search-title">
					<span class="search-field">&quot;${fn:escapeXml(param.keyword)}&quot;</span>
					<span>搜索结果</span>
					<p class="search-sum">结果数:<span class="search-num"> ${total}</span></p>
				</div>
				<c:if test="${not empty userList}">
					<c:forEach items="${userList}" var="item">
					<div class="island-pro">
						<p class="pro-data-wrap">
						<span class="pro-data">${fn:escapeXml(item.user.uname)}</span>
						<span class="pro-data">${fn:escapeXml(item.company.com_name)}</span>
						<span class="pro-data">${fn:escapeXml(item.company.position)}</span>
						</p>
						<div class="pro-photo">
							<img src="${searchUser.show_url}">
						</div>
						<p class="island-member"><span id="proName">${fn:escapeXml(item.user.uname)}</span>已经成为正和岛会员！</p>
					</div>
					</c:forEach>
				</c:if>
				<!-- start article-list -->
				<c:if test="${!empty newsList}">
					<div class="search-article-list">
						<ul>
						<%@include file="news.list.jsp"%>
						</ul>
						<c:if test="${totalPage > 1}">
						<div class="search-add-more" data-page="1" data-total="${totalPage}" data-prm="${fn:escapeXml(param.keyword)}">点击加载更多</div>
						</c:if> 
					</div>
				</c:if> 
				<!-- end article-list -->
			</div>
		</div>
	</div>
</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<script type="text/javascript" src="${STATIC_URL}/core/js/highlight/jquery.highlight.js"></script>
<script type="text/javascript" src="${STATIC_URL}/news/core/js/news.js"></script>
<script type="text/javascript" src="${STATIC_URL}/news/search/js/search.js"></script>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>