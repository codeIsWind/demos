<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>注册正和岛</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/authentication/entry/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/authentication/entry/less/main.less"/>
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/authentication/entry/js/main.js"></script>
	</head>
	<body class="container-full">
    <input type="hidden" name="showTips" value="${showTips!"false"}">
    <div>
			<div class="container-block desc">
				<h1>身份验证</h1>
				<p>正和岛是实名制高端商业社交平台。完成身份验证后，您将享有与企业家面对面的机会。</p>
			</div>
			<div class="container-block ic-auth">
				<a class="auth-entry" href="/wmp/user/${appConfigId}/identity/verify/code">
					<p class="title">免认证通道</p>
					<p class="desc">使用邀请码可免身份验证</p>
				</a>
				<hr class="seperator">
				<a class="no-ic" href="javascript:;">
					<span>没有邀请码？</span>
					<span>向朋友求邀请码</span>
				</a>
			</div>
			<div class="container-block self-auth">
				<div class="content">
					<p class="title">自认证通道</p>
					<p class="desc">提交个人名片等相关信息即可申请验证</p>
				</div>
			</div>			
		</div>

		<div class="mask">
			<div class="tip">
				点击微信右上角 “发送给朋友” 或 “分享到朋友圈” 索取邀请码
			</div>
			<div class="confirm">
				<p>正和岛已经完成您的身份验证</p>
				<a href="/wmp/user/${appConfigId}/identity/verify/success">我知道了</a>
			</div>
		</div>
	</body>
</html>
