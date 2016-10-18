<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title><#if type?? && type="edit">修改名片<#else>创建微名片</#if></title>
		<link rel="stylesheet" href="${staticurl}/pagescript/userinfos/contactsintention/css/main.css"/>	
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/userinfos/contactsintention/less/main.less"/>	
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/userinfos/contactsintention/js/main.js"></script>
	</head>
	<body>
        <input type="hidden" name="type" value="${type!}">
		<div class="container">
			<h1>愿意结识</h1>
			<div class="tag-container">
            <#if usertagList?? && usertagList?size &gt;0>
                <#list usertagList as tag>
                    <#if tag?? && tag != ''>
                        <a class="tag tag-green checked" href="javascript:;">${tag!}</a>
                    </#if>
                </#list>
            </#if>
				<a class="tag tag-green" href="javascript:;" id="add-btn"><span class="add-btn"></span> 添加</a>
			</div>
			<a class="btn btn-block btn-success btn-login" id="submit-btn" href="javascript:;">
                <#if type?? && type="edit">保存<#else>下一步</#if>
			</a>
		</div>
		<div class="mask input-window hide">
			<div class="pop-window">
				<div class="title">请输入标签名称</div>
				<div class="form-group tag-name">
					<input class="form-control" maxlength="12" type="text">
				</div>
				<div class="btns">
					<a href="javascript:;" class="col-xs-6 cancel-btn">取消</a>
					<a href="javascript:;" class="col-xs-6 confirm-btn">确定</a>
				</div>
			</div>
		</div>

		<div class="mask del-window hide">
			<div class="pop-window">
				<div class="title">删除标签</div>
				<div class="prompt">
					确认删除当前标签吗？
				</div>
				<div class="btns">
					<a href="javascript:;" class="col-xs-6 cancel-btn">取消</a>
					<a href="javascript:;" class="col-xs-6 confirm-btn">确定</a>
				</div>
			</div>
		</div>
	</body>
</html>
