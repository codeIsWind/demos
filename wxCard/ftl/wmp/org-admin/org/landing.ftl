<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../../inc/meta.ftl">
		<title>管理机构</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/org-admin/org/landing/css/main.css">
		<#--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/org-admin/org/landing/less/main.less"/>
		<#include "../../inc/lessconf.ftl">
		-->
		<#include "../../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/org-admin/org/landing/js/main.js"></script>
	</head>
	<body>
		<div class="container">
			<h1>${(orgView.getOrg_name())!}</h1>
		</div>
		<div class="icon-container">
			<a class="icon-org" href="/wz/org/${appConfigId!}/intro?orgId=${(orgView.getOrg_id())!}">
				<img src="${staticurl}/pagescript/org-admin/org/landing/img/ratio-holder.png">
				<span>机构简介</span>
			</a>
			<a class="icon-member" href="/wz/org/${appConfigId!}/list/member/index?orgId=${(orgView.getOrg_id())!}">
				<img src="${staticurl}/pagescript/org-admin/org/landing/img/ratio-holder.png">
				<span>成员管理</span>
			</a>
		</div>
	</body>
</html>
