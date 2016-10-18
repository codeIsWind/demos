<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../../inc/meta.ftl">
		<title>管理机构</title>
		<link rel="stylesheet" href="${staticurl!}/pagescript/org-admin/org/intro/css/main.css">
		<#--
		<link rel="stylesheet/less" href="${staticurl!}/pagescript/org-admin/org/intro/less/main.less"/>
		<#include "../../inc/lessconf.ftl">
		-->
		<#include "../../inc/requireconf.ftl">
		<script defer src="${staticurl!}/common/require.js" data-main="${staticurl}/pagescript/org-admin/org/intro/js/main.js"></script>
	</head>
	<body>
        <input type="hidden" name="orgId" value="${(orgView.getOrg_id())!}">
		<div class="container">
			<h1>机构简介</h1>
			<div class="intro-container">
				<textarea class="intro-text" placeholder="请简单介绍一下机构"><#if (orgView.getOrg_desc())??>${orgView.getOrg_desc()?replace('<p>', '')?replace('</p>', '\n')}</#if></textarea>
				<div class="counter"></div>
			</div>
			<a class="btn btn-block btn-primary" disabled id="submit" href="javascript:;">保存</a>
		</div>
	</body>
</html>
