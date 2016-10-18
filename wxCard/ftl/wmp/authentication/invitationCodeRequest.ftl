<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>求正和岛邀请码</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/authentication/icRequest/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/authentication/icRequest/less/main.less"/>
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/authentication/icRequest/js/main.js"></script>
	</head>
	<body>
		<div class="container-block">
			<img class="bg" src="${staticurl}/pagescript/authentication/base/img/bg.png" />
			<div class="content">
				<div class="profile">
					<img class="portrait" src="${(userTo.userAvatar)!}" />
					<div class="text">我是${(userTo.userName)!}，正在申请注册正和岛线上服务，求正和岛岛亲给一枚注册邀请码。
					</div>
				</div>
				 <a class="btn btn-block btn-warning" id="ic-send" href="http://m.zhisland.com">送<#if (userTo.sex)?? && userTo.sex == 0>他<#else>她</#if>一个邀请码</a>
				 <a class="btn btn-block btn-warning" id="register" href="javascript:;">我也想注册正和岛</a>
			</div>
			<div class="fixed-footer">
				<div class="logo"></div>
				<div class="name">正和岛</div>
				<div class="desc">中国商界第一高端人脉与网络社交平台</div>
				<div class="more">了解更多</div>					
	        </div>
		</div>

		<div class="mask">
			<div class="qr">
				<p>请先长按二维码</p><p>关注“正和岛微站”</p>
				<img src="${qrCode!}" />
			</div>
		</div>
	</body>
</html>
