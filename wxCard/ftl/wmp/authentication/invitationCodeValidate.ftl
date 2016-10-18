<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>注册正和岛</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/authentication/icValidate/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/authentication/icValidate/less/main.less"/>
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/authentication/icValidate/js/main.js"></script>
	</head>
	<body>
		<div class="container">
			<h1>免认证通道</h1>
			<div class="ic-container">
				<input type="password" id="ic-input" maxlength="6">
				<span class="result"></span>
			</div>
			<a class="btn btn-block btn-primary" disabled id="validate-ic" href="javascript:;">验证邀请码</a>
			<a class="no-ic" href="javascript:;">
					<span>没有邀请码？</span>
					<span>向朋友求邀请码</span>
			</a>
		</div>

		<div class="mask">
			<div class="tip">
				点击微信右上角 “发送给朋友” 或 “分享到朋友圈” 索取邀请码
			</div>
		</div>
	</body>
</html>
