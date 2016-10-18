<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title><#if type?? && type="edit">修改名片<#else>创建微名片</#if></title>
		<link rel="stylesheet" href="${staticurl}/pagescript/userinfos/interests/css/main.css"/>	
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/userinfos/interests/less/main.less"/>	
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/userinfos/interests/js/main.js"></script>
	</head>
	<body>
        <input type="hidden" name="type" value="${type!}">
		<div class="container">
			<h1>兴趣爱好</h1>
			<div class="tag-container">
                <#if tagList?? && tagList?size &gt;0>
                    <#list tagList as tag>
                    <#if usertagList?? && usertagList?size &gt;0>
                        <#assign isSame = false/>
                        <#list usertagList as userTag>
                            <#if userTag == tag>
                                <#assign isSame = true/>
                            </#if>
                        </#list>
                    </#if>
                    <a class="tag tag-gold <#if isSame?? && isSame>checked</#if>" href="javascript:;">${tag!}</a>
                    </#list>
                </#if>
			</div>
			<a class="btn btn-block btn-success btn-login" id="submit-btn" href="javascript:;">
            <#if type?? && type="edit">保存<#else>下一步</#if></a>
		</div>
	</body>
</html>
