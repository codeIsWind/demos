<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="找回密码 - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>
<link href="${STATIC_URL}/user/register/css/register.css" rel="stylesheet" type="text/css" />

<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">

	<div id="register-panel">
		<form id="form-register" class="xform" action="/dofindpwd" data-redirect="${empty header.Referer ? '/' : header.Referer}">
			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-phone" for="txt-phone" class="not-empty">手机号</label>
					<div id="flex-cell-code" class="flex-cell">
						<input id="txt-phone" name="mobile" type="text" placeholder="" maxlength="20" data-empty-error="手机号不能为空" />
					</div>
					<a id="btn-code" class="button" href="javascript:;" disabled>获取验证码</a>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-code" for="txt-code" class="not-empty">验证码</label>
					<div class="flex-cell">
						<input id="txt-code" name="code" type="text" placeholder="" maxlength="20" data-empty-error="验证码不能为空" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-password" for="txt-password" class="not-empty">设置密码</label>
					<div class="flex-cell">
						<input id="txt-password" name="pwd" type="password" placeholder="" maxlength="50" data-empty-error="密码不能为空" data-check-function="checkPassword" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-password-repeat" for="txt-password-repeat" class="not-empty">重复密码</label>
					<div class="flex-cell">
						<input id="txt-password-repeat" type="password" placeholder="" maxlength="50" data-empty-error="必须再次输入密码" data-check-function="checkPasswordRepeat" />
					</div>
				</div>
			</div>

			<input type="submit" />
		</form>

		<div class="flex-cell button-container">
			<a id="btn-register" class="button" href="javascript:;" data-toggle-text="正在提交...">完 成</a>
		</div>
	</div>

</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<script type="text/javascript" src="${STATIC_URL}/user/register/js/register.js"></script>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>