<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../../inc/meta.ftl">
		<title>管理机构</title>
		<script>
		</script>
		<#--
		<link rel="stylesheet/less" href="${staticurl!}/pagescript/org-admin/org/list/less/main.less"/>
		<#include "../../inc/lessconf.ftl">
		-->
		<link rel="stylesheet" href="${staticurl!}/pagescript/org-admin/org/list/css/main.css"/>
		<#include "../../inc/requireconf.ftl">
		<script defer src="${staticurl!}/common/require.js" data-main="${staticurl!}/pagescript/org-admin/org/list/js/main.js"></script>
	</head>

	<body>
		<div class="container">
			<div class="title-bar">
				<h1>管理机构</h1>
			</div>
			<div class="item-list" id="item-list">
			</div>
			<div class="loading" id="loading"></div>
			<div id="empty-prompt" class="prompt-pic org-manage">
				<div class="pic"></div>
				<div class="prompt">您尚未获得管理权限</div>
			</div>
		</div>
	</body>
	<template id="institute-item-tpl">
		<a class="item" href="/wz/org/${appConfigId!}/manage/index?orgId={{orgId}}">
			<#noparse>
				<div class="avatar" style="background-image:url({{logo}});"></div>
				<div class="title">{{name}}</div>
				<div class="desc">{{type}}</div>
				{% if memberNum != 0 %}
				<div class="more-info">{{memberNum}}位成员</div>
				{% endif %}
			</#noparse>
		</a>
	</template>
</html>
