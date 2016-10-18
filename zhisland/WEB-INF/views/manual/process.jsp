<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="上岛流程 - 正和岛" />
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
<c:set var="active" value="process" />
<%@include file="left.column.jsp"%>

<div class="content-column">
	<div class="content-title">上岛流程</div>
	<div class="manual-panel lead process">
		<div class="process-item"><span>1.申请人进行登岛注册申请并提交</span></div>
		<div class="process-item"><span>2.正和岛通过申请人或其助理收集企业及个人相关信息</span></div>
		<div class="process-item"><span>3.会员资格审核委员会通过联系推荐人等相关方式进行资料确认与资格审核</span></div>
		<div class="process-item"><span>4.向申请人发送审核正式通知的书面通知</span></div>
		<div class="process-item"><span>5.申请人缴纳会费</span></div>
		<div class="process-item"><span>6.正和岛发出入会确认书</span></div>
		<div class="process-item"><span>7.申请人正式成为正和岛会员（岛邻）</span></div>
	</div>
	<div class="manual-panel pre-format between process">入会说明：
1. 正和岛会籍费：人民币3万元/年;
2.会员资格审核委员会收到申请表后，将联系申请人本人或助理收集所在企业/机构营业执照副本复印件等相关资料，并与推荐人进行沟通;
3. 本会籍采用实名制，不得转让、继承和更名。</div>
</div>
</div>

</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>