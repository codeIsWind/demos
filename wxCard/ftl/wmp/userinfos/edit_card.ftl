<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>修改名片</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/userinfos/nameCard_modify/css/main.css"/>	
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/userinfos/nameCard_modify/less/main.less"/>	
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/userinfos/nameCard_modify/js/nameCard_modify.js"></script>
	</head>
	<body>
		<div class="modify_wrapper">
			<div class="container people-wrap" id="my-card-page">
                <a href="javascript:;" class="face-image" style="background-image:url(${(userInfo.userAvatar)!})"></a>
                <a  href="/wmp/user/${appConfigId!}/my/card" class="people-data">
                    <div class="name">${(userInfo.userName)!}</div>
                    <div class="other">
                        <span>${(userInfo.userCompany)!}</span>
                        <span>${(userInfo.userPosition)!}</span>
                    </div>
                </a>
				<span id="top-30" class="glyphicon-color"></span>
			</div>
            <div class="data-list">           
                <div class="container padding-rt">
                    <a href="/wmp/user/${appConfigId!}/baseinfo/edit" class="has-boder">基本信息<span class=" glyphicon-color"></span></a>
                    <a href="/wmp/user/${appConfigId!}/introduce/edit" class="has-boder">自我介绍<span class="glyphicon-color"></span></a>
                    <a href="/wmp/user/${appConfigId!}/upload/image/edit">形象照片<span class="glyphicon-color"></span></a>
                </div>       
                <div class="container padding-rt">
                    <a href="/wmp/user/${appConfigId!}/tag/interest/edit" class="has-boder">兴趣爱好<span class="glyphicon-color"></span></a>
                    <a href="/wmp/user/${appConfigId!}/tag/skilled/edit" class="has-boder">擅长领域<span class="glyphicon-color"></span></a>
                    <a href="/wmp/user/${appConfigId!}/tag/find/edit">愿意结识<span class="glyphicon-color"></span></a>
                </div>
            </div>
			<div class="container">
				<a class="btn btn-block btn-success btn-login btn-color" id="" href="/wmp/user/${appConfigId!}/logout">退出登录</a>
			</div>	
		</div>
	</body>
</html>
