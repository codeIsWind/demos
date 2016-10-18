<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title><#if type?? && type=="register">注册正和岛<#else>登录正和岛</#if></title>
		<link rel="stylesheet" href="${staticurl}/pagescript/account/login/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/account/login/less/main.less"/>
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/account/login/js/main.js"></script>
	</head>
	<body>
        <input id="postType" type="hidden" name="type" value="${type!}">
		<div class="container">
			<h1><#if type?? && type=="register">手机号注册<#else>手机号登录</#if></h1>
			<div class="form">
				<span class="districtNumber">+86</span>
				<input type="tel" value="" maxlength="11" class="form-control" id="tel-input" placeholder="请输入您的手机号码">
				<div class="validation-code">
					<input type="tel" maxlength="4" class="form-control" id="code-input" placeholder="请输入您的验证码">
					<span class="input-group-btn">
						<a class="btn-send-code" href="javascript:;">发送验证码</a>
					</span>
				</div>
				<div class="msg"></div>
				<a class="btn btn-block btn-success btn-login" disabled id="btn-login" href="javascript:;">
	                <#if type?? && type=="register">注册<#else>登录</#if>
	            </a>
            </div>
		</div>
		<div class="contact">如有任何疑问,请与我们联系 <a href="tel:4001009737">400-100-9737</a></div>
	</body>
</html>
