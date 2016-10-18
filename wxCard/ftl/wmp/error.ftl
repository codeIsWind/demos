<!DOCTYPE html>
<html lang="en">
    <#if !staticurl?? || staticurl =="">
        <#assign staticurl="/static/wmp/">
    </#if>
	<head>
		<#include "inc/meta.ftl">
		<title>出错了</title>
		<link rel="stylesheet" href="${staticurl!}/pagescript/error/css/main.css"/>
		<!--
		<link rel="stylesheet/less" href="${staticurl!}/pagescript/error/less/main.less"/>
		<#include "inc/lessconf.ftl">
		-->
		<#include "inc/requireconf.ftl">
		<script defer src="${staticurl!}/common/require.js" data-main="${staticurl}/pagescript/error/js/main.js"></script>
	</head>
	<body>
		<div class="error">
            <div class="error-img">
                <#if flag?? && flag = "500">
                    <img src="${staticurl!}/pagescript/error/img/img_5xx.png" alt="">
          	  	<#elseif flag?? && flag =="1">
                    <img src="${staticurl!}/pagescript/error/img/img_wechat.png" alt="">
                <#else>
                    <img src="${staticurl!}/pagescript/error/img/img_404.png" alt="">
                </#if>
            </div>
            <#if flag?? && flag == "1">
                <div class="error-txt">请在微信客户端打开链接</div>
            <#elseif flag?? && flag =="500">
                <div class="error-txt">服务器开小差中...</div>
            <#else>
                <div class="error-txt">呃...页面找不到了</div>
            </#if>
		</div>
	</body>
</html>