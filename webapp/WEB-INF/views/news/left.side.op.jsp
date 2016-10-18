<%@page pageEncoding="UTF-8"%>
<div id="left-side-op-container">	
	<div class="left-side-op-list">
		<ul class="left-side-op-tabs">
			<li class="active">活动公告</li>
			<li>岛亲互需</li>
			<div class="clear"></div>
		</ul>
		<div class="left-side-list-wrap">
			<!-- start 活动公告 -->
			<div id="tab-for-activity" class="scroll-style">
				<c:forEach items="${noticeList}" var="notice">
					<c:forEach items="${notice.list}" var="item">
					<div class="content">
						<div class="middle">
							<p class="blue-dot"><span class="active-class">${fn:escapeXml(notice.name)}</span><span class="active-time">${fn:escapeXml(item.extend['beginTime'])}</span></p>
							<p class="active-name font14">${fn:escapeXml(item.title)}</p>
							<p>
							<span class="font14">${fn:escapeXml(item.extend['beginTime'])}至${fn:escapeXml(item.extend['endTime'])}</span>
							<span class="font14">${fn:escapeXml(item.extend['place'])}</span>
							</p>
							<p class="active-gm"><span class="font14">活动规模${item.extend['totalNum']}人</span><a href="${item.linkUrl}" class="active-details">了解详情</a></p>
						</div>
					</div>
					</c:forEach>
				</c:forEach>
			</div>
			<!-- end 活动公告 -->
			<!-- start 岛亲互需 -->
			<div id="tab-for-need" class="scroll-style">
				<c:forEach items="${mutualNeedsList}" var="need">
					<c:forEach items="${need.list}" var="item">
						<div class="content ">
							<div class="middle">
								<p class="blue-dot"><span class="active-class">${fn:escapeXml(need.name)}</span><span class="active-time"><my:formatDate value="${item.createTime.time}" relative="true" /></span></p>
								<p class="commpany-linkman"><span>${fn:escapeXml(user.base_rank == 400 ? item.extend['com_name'] : '********')}</span><span class="margin-right20">公司</span><span>联系人:</span><span>${fn:escapeXml(user.base_rank == 400 ? item.extend['contact'] : '***')}</span></p>
								<p class="font14">${fn:escapeXml(item.content)}</p>
								<div class="need-details">
								<c:choose>
									<c:when test="${empty user}">
									<a href="/login">登岛了解</a>
									</c:when>
									<c:when test="${empty user.uname && user.base_rank != 400}">
									<a href="/manual/register">登岛了解</a>
									</c:when>
									<c:when test="${!empty user.uname && user.base_rank != 400}">
									<a href="javascript:;">等待岛邻审批</a>
									</c:when>
									<c:when test="${user.base_rank == 400}">
									<a href="${item.linkUrl}">了解详情</a>
									</c:when>
								</c:choose>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:forEach>
			</div>
			<!-- end 岛亲互需 -->
		</div>
	</div>
	<c:forEach items="${posAdvertList}" var="posAdvert">	
	<c:forEach items="${posAdvert.list}" var="item">
		<a href="${item.linkUrl}" class="adv"><img src="${item.image}"></a>
	</c:forEach>	
	</c:forEach>
</div>
