<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../../inc/meta.ftl">
		<title>管理机构</title>
		<#--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/org-admin/member/main/less/main.less"/>
		<#include "../../inc/lessconf.ftl">
		-->
		<link rel="stylesheet" href="${staticurl}/pagescript/org-admin/member/main/css/main.css"/>
		<#include "../../inc/requireconf.ftl">
		<script defer src="${staticurl!}/common/require.js" data-main="${staticurl}/pagescript/org-admin/member/main/js/main.js"></script>
	</head>
	<body>
        <input type="hidden" name="orgId" value="${orgId!}">
		<div class="container">
			<div class="title-bar">
				<h1>成员管理</h1>
				<form id="search-form">
					<div class="search">
						<input type="search" id="search-key-word" placeholder="请输入成员姓名">
						<a class="search-btn" href="javascript:;" disabled></a>
					</div>		
				</form>
			</div>
			<div class="item-list" id="item-list"></div>
			<div class="loading" id="loading"></div>
			<div class="prompt-pic search-result-empty">
				<div class="pic"></div>
				<div class="prompt">没有找到该成员</div>
			</div>
			<div class="prompt-pic member-list-empty">
				<div class="pic"></div>
				<div class="prompt">还没有机构成员，请先添加</div>
			</div>
			<div class="list-footer">
				<a class="btn btn-primary btn-block" id="add-member-btn" href="/wz/org/${appConfigId}/member/info?type=create&orgId=${orgId!}">添加成员</a>
			</div>
		</div>
	</body>
	<template id="member-item-tpl">
		<a class="item" href="/wz/org/${appConfigId!}/member/info?orgId=${orgId!}&uid={{uid}}&type=edit">
	<#noparse>
			<div class="avatar" style="background-image:url({{avatar}});"></div>
			<div class="title">{{name}}</div>
			<div class="desc">{{corpName}} {{position}}</div>
			{% if role.length > 0 %}
			<div class="label gold">{{role}}</div>
			{% endif %}
		</a>
	</template>
	</#noparse>
</html>
