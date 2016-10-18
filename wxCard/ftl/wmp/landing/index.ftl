<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>正和岛微站</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/landing/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/landing/less/main.less"/>
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/landing/js/main.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="img-container">
				<ul class="clearfix">
					<li><img src="${staticurl}/pagescript/landing/img/img_greeting_a.png" alt="" /></li>
					<li><img src="${staticurl}/pagescript/landing/img/img_greeting_b.png" alt="" /></li>
				</ul>
			</div>
			<div class="bullet-container">
				<ul class="clearfix">
					<li class="bullet bullet-selected"></li>
					<li class="bullet"></li>
            </div>
           	<div class="fixed-footer">
	            <a class="btn btn-block btn-primary" href="/wmp/user/${appConfigId}/register/form">注册正和岛</a>
	            <a class="link link-block link-default" href="/wmp/user/${appConfigId}/login/form">会员登录</a>
	        </div>
		</div>
	</body>
</html>
