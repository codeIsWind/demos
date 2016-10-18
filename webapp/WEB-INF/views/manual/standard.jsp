<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="岛邻资格 - 正和岛" />
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
<c:set var="active" value="standard" />
<%@include file="left.column.jsp"%>

<div class="content-column">
	<div class="content-title">岛邻资格</div>
	<div class="manual-panel pre-format lead standard">　　绿色岛邻包括领袖型企业家和成长型企业家在内的企业决策者，是已经取得巨大成功和代表未来的企业家，是正和岛价值观的践行者与捍卫者，正和岛因绿色岛邻而存在。
　　绿色岛邻作为付费用户，是正和岛资源的主要分享者，在正和岛将享受各项主体服务。</div>
	<div class="manual-panel pre-format between standard">1. 拥有健康、阳光、负责任的价值观，追求成长、热爱学习、乐于分享；
2. 是所在企业的创始人、董事长、CEO、总裁等首要决策者；
3. 所在企业系独立法人企业，成立三年以上，且上一年销售收入须在一亿元人民币以上；投资类企业的管理资金规模须在十亿元人民币以上；或在 新兴产业中具有未来成长性；
4. 所在企业从事对社会有益的产业或事业，登岛前三年内无重大违法、违规记录；
5. 认可并践行《正和岛会员章程》及适用于会员的制度规则。</div>

</div>
</div>

</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>