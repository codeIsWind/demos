<%@page pageEncoding="UTF-8"%>
<c:forEach items="${contentList}" var="object">
<c:choose>
<c:when test="${object.enName == 'bigPic'}">
	<a class="banner-width-container" href="${object.list[0].linkUrl}">
		<img src="${object.list[0].image}" alt="${fn:escapeXml(object.list[0].summary)}">
	</a>
</c:when>
<c:when test="${object.enName == 'text'}">
	<div class="text-container-wrapper" style="${object.list[0].style}">
	<div class="text-container wrapper">${object.list[0].content}</div>
	</div>
</c:when>
<c:when test="${object.enName == 'picText'}">
	<div class="sildes-container box wrapper">
		<div class="slides-viewport" data-time="3">
			<div class="slides-pages">
				<c:forEach items="${object.list}" var="item">
				<a class="slide-page" href="${item.linkUrl}">
					<img src="${item.image}">
					<div class="block-ellipsis">${item.content}</div>
				</a>
				</c:forEach>
			</div>
		</div>

		<a class="slide-move slide-move-left" href="javascript:;"></a>
		<a class="slide-move slide-move-right" href="javascript:;"></a>
	</div>
</c:when>
<c:when test="${object.enName == 'subColumn'}">
	<c:if test="${!empty object.list}">
	<div class="column-container inline-container wrapper">
		<c:forEach items="${object.list}" var="item">
		<div class="column-item">
			<a class="column-item-pic" href="${item.linkUrl}" target="_blank">
				<img src="${item.image}">
			</a>
			<a class="column-item-title line-ellipsis" href="${item.linkUrl}" target="_blank">${fn:escapeXml(item.title)}</a>
			<div class="column-item-text block-ellipsis line-6">${fn:escapeXml(item.summary)}</div>
		</div>
		</c:forEach>
	</div>
	<c:if test="${object.totalPage > 1}">
	<a class="btn-column-more" href="javascript:;" data-toggle-text="正在加载，请稍候..." data-id="${object.id}" data-page="1" data-total="${object.totalPage}">点击继续浏览</a>
	</c:if>
	</c:if>
</c:when>
<c:when test="${object.enName == 'video'}">
	<div id="sec-${object.id}" class="hash-holder wrapper">${fn:escapeXml(object.list[0].name)}</div>
	<div class="video-container" style="background-image:url(${object.list[0].image})">
		<embed src="${object.list[0].linkUrl}" allowFullScreen="true" quality="high" width="800" height="600" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
	</div>
</c:when>
<c:when test="${object.enName == 'textCoverPic'}">
	<div id="sec-${object.id}" class="hash-holder wrapper">${fn:escapeXml(object.name)}</div>
	<div class="sildes-container txt-cover-box wrapper">
		<div class="slides-viewport" data-time="3">
			<div class="slides-pages">
				<c:forEach items="${object.list}" var="item">
				<a class="slide-page" href="${item.linkUrl}">
					<img src="${item.image}">
					<!-- <div class="line-ellipsis">${fn:escapeXml(item.name)}</div> -->
				</a>
				</c:forEach>
			</div>
		</div>
	</div>
</c:when>
</c:choose>
</c:forEach>