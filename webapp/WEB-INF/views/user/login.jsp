<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="用户登录 - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>
<link href="${STATIC_URL}/user/login/css/login.css" rel="stylesheet" type="text/css" />

<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">

	<div id="login-panel">
		<form class="xform" action="/tologin" data-redirect="${empty header.Referer ? '/' : header.Referer}">
			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-account" for="txt-account">用户名</label>
					<div class="flex-cell">
						<input id="txt-account" name="u" type="text" placeholder="" maxlength="20" data-empty-error="用户名不能为空" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-password" for="txt-password">密码</label>
					<div class="flex-cell">
						<input id="txt-password" name="p" type="password" placeholder="" maxlength="50" data-empty-error="密码不能为空" />
					</div>
				</div>
			</div>

			<input type="submit" />
		</form>

		<div class="flex-cell button-container">
			<a id="btn-login" class="button" href="javascript:;" data-toggle-text="正在登录...">登 录</a>
			<div id="addition-links">
				<a href="/findpwd">忘记密码</a>
				<span>|</span>
				<a href="/register">注册</a>
			</div>
		</div>
	</div>

</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<script type="text/javascript" src="${STATIC_URL}/user/login/js/login.js"></script>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>