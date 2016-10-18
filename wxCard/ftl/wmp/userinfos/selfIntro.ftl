<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>正和岛名片</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/userinfos/selfintro/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/userinfos/selfintro/less/main.less"/>	
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/userinfos/selfintro/js/main.js"></script>
	</head>
	<body>
        <input type="hidden" name="type" value="${type!}">
		<div class="container">
			<h1>自我介绍</h1>
			<div class="intro-container">
				<textarea class="form-control self-intro-text" name="introduce" placeholder="如职业经历、有何种资源以及期待在正和岛获得哪方面的合作/资源等"><#if intro??><@nec intro false/></#if></textarea>
				<div class="counter"></div>
			</div>
			<a class="btn btn-block btn-success btn-login" disabled id="submit-btn" href="javascript:;">
                <#if type?? && type="edit">保存<#else>下一步</#if></a>
		</div>
	</body>
</html>
