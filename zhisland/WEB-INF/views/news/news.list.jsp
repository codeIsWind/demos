<%@page pageEncoding="UTF-8"%>
<c:forEach items="${newsList}" var="item">
	<li class="article-wrap">
		<div class="article-box">
			<a target="_blank" href="/news/detail?id=${item.id}" class="article-img"><img src="${item.image}"></a>
			<span class="column-tittle" style="background-image:url(${item.newsCategory.image})">${fn:escapeXml(item.newsCategory.name)}</span>
		</div>
		<div class="article-intro">
			<a target="_blank" href="/news/detail?id=${item.id}" class="article-title">${fn:escapeXml(item.title)}</a>
			<div class="release-people">
			<!-- <a class="people-picture" ><img src="" alt=""></a> -->
			<span class="name">${fn:escapeXml(item.publisher)}</span>
			<span class="time">&middot; <fmt:formatDate value="${item.publishTime}" pattern="yyyy-MM-dd HH:mm"/></span>
			</div>
			<p class="article-excerpts">${fn:escapeXml(item.summary)}</p>
		</div>
	</li>
</c:forEach>