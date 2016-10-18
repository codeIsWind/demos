<%@page pageEncoding="UTF-8"%>
<div id="page-header">
<div id="page-header-inner">
	<div id="header-nav-container">
		<div class="header-nav-item">
			<a href="/">首页</a>
		</div>
		<c:forEach items="${navigationList}" var="item">
		<div class="header-nav-item">
			<a href="${item.linkUrl}">${fn:escapeXml(item.cnName)}</a>
			<c:if test="${!empty item.list}">
			<ul class="header-nav-menu">
				<c:forEach items="${item.list}" var="sub">
				<li class="nav-item2">
					<c:if test="${!empty sub.list}">
						<a class="nav-icon" href="#">></a>	
					</c:if>
					<a href="${sub.linkUrl}">${fn:escapeXml(sub.cnName)}</a>
					<div class="header-nav-menu2">
						<c:forEach items="${sub.list}" var="sub3">
							<a href="${sub3.linkUrl}">${fn:escapeXml(sub3.cnName)}</a>
						</c:forEach>
					</div>
				</li>
				</c:forEach>
			</ul>
			</c:if>
		</div>
		</c:forEach>
		<div class="header-nav-item">
			<a href="/news">资讯</a>
		</div>
	</div>
	<div id="header-right-container">
		<div id="header-search-container">
			<input id="header-search" type="text" placeholder="请输入要找的人或信息">
		</div>
		<div id="header-user-container">
			<c:if test="${empty user}">
				<div><a href="/login">登录</a> / <a href="/register">注册</a>&nbsp;&nbsp;&nbsp;<a href="http://en.zhisland.com">English</a></div>
			</c:if>
			<c:if test="${!empty user}">
				<div>${fn:escapeXml(empty user.uname ? user.mobile : user.uname)} / <a href="/logout">退出</a></div>
				<c:choose>
					<c:when test="${empty user.uname && user.base_rank != 400}">
					<a href="/manual/register">申请成为岛邻</a>
					</c:when>
					<c:when test="${!empty user.uname && user.base_rank != 400}">
					<a href="javascript:;">岛邻审核</a>
					</c:when>
					<c:when test="${user.base_rank == 400}">
					
					</c:when>
				</c:choose>
			</c:if>
		</div>
	</div>
</div>
</div>

<c:if test="${showSubNav == 'true'}">
<div id="sub-nav">
<div id="sub-nav-inner">
	<c:forEach items="${currentNavigation}" var="item">
	<a href="${item.linkUrl}"${item.current ? ' class="active"' : ''}>${fn:escapeXml(item.cnName)}</a>
	</c:forEach>
</div>
</div>
</c:if>

<c:if test="${showSecNav == 'true'}">
<div id="sec-nav">
<div id="sec-nav-inner">
	<div>
		<c:forEach items="${contentList}" var="object">
		<c:if test="${object.enName == 'textCoverPic'}">
		<a href="#sec-${object.id}">${fn:escapeXml(object.name)}</a>
		</c:if>
		</c:forEach>
	</div>
</div>
</div>
</c:if>