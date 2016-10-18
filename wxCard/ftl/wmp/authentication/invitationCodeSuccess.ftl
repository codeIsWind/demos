<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>注册正和岛</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/authentication/icSuccess/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/authentication/icSuccess/less/main.less"/>
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/authentication/icSuccess/js/main.js"></script>
	</head>
	<body>
		<div class="container-block">
			<img class="bg" src="${staticurl}/pagescript/authentication/base/img/bg.png">
			<div class="content">
				<div class="logo"></div>
				<p class="txt-success">恭喜，您已经验证成功！</p>
				<div class="benefit">
					<div class="title"></div>
					<ul>
						<li><span>直接登录正和岛官方APP</span></li>
						<li><span>结识正和岛</span><span style="font-weight:700;">5000+</span><span>企业家</span></li>
						<li><span>参加高端线下活动</span></li>
						<li><span>获取最新商界资讯</span></li>
					</ul>
				</div>
			</div>
			<div class="fixed-footer">
	            <a class="btn btn-block btn-warning" id="download-app" href="http://m.zhisland.com">立即体验官方APP</a>
	            <a class="link link-block" id="view-card" href="/wmp/user/${appConfigId}/my/card"><span>点击查看我的正和岛名片</span></a>
	        </div>
		</div>
	</body>
</html>
