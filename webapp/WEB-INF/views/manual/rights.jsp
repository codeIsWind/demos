<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="岛邻权益 - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>
<link href="${STATIC_URL}/manual/css/manual.css" rel="stylesheet" type="text/css" />

<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">

<a class="banner-width-container" href="/register">
	<img src="${STATIC_URL}/core/img/banner-default.jpg">
</a>

<div class="c2-wrap manual wrapper">
<c:set var="active" value="rights" />
<%@include file="left.column.jsp"%>

<div class="content-column">
	<div class="content-title">岛邻权益</div>
	<div class="manual-panel pre-format lead rights"><div class="rights-title green">绿色岛邻权益</div>
1. 基于互联网及移动互联网，每天获得最具判断力的导师团、专家学者和企业家会员推荐提供的高选择性、高价值浓度资讯；
2. 每月免费获取正和岛为会员专属的全推荐制出版物《决策参考》；
3. 基于互联网及移动互联网，每天参与决策人群最关注的重要问题讨论，并从中获取价值；
4. 参加正和岛组织的以国内国际政商要员、企业领袖、权威专家为分享嘉宾的高端聚会的机会；
5. 参加正和岛组织的专题游学、岛民互访以及政策解读、行业分析、艺术鉴赏等系列主题沙龙、论坛的机会；
6. 享有需求发起权。会员根据正和岛相关规则，可以在岛内平台提出特定议题和需求，寻求正和岛平台及其他会员的支持与帮助；
7. 会员根据正和岛相关规则，可以在正和岛平台上组建“部落”，发起活动，结交同道、朋友；
8. 通过理性规则的设计，帮助正和岛会员拥有与顶级决策者直接沟通交流的机会。

<hr>
<div class="rights-title blue">蓝色岛邻权益</div>
1.	享有绿色岛民的各项权益；
2.	以自身的专业水平和行业地位得到会员的尊重；
3.	规则制定的建议权；
4.	重大原则性争议的咨询权；
5.	行业话题或倡议的发起权；
6.	蓝色岛民享受免费待遇。
</div>

</div>
</div>

</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>