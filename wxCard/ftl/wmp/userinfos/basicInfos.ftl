<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title><#if type?? && type="edit">修改名片<#else>注册正和岛</#if></title>
		<link  rel="stylesheet" href="${staticurl}/pagescript/userinfos/basicinfos/css/main.css"/>	
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/userinfos/basicinfos/less/main.less"/>	
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/userinfos/basicinfos/js/main.js"></script>
	</head>
	<body>
        <input type="hidden" name="type" value="${type!}">
        <input type="hidden" name="sex" value="${(userInfo.sex)!}">
		<div class="container">
			<h1>基本信息</h1>
			<div class="form">
				<div class="form-group">
					<label class="control-label">姓名</label>
					<input type="text" name="uname" class="form-control" maxlength="20" value="${(userInfo.userName)!}" <#if notModify?? && notModify && (userInfo.userName)?? && (userInfo.userName) != ''>disabled="disabled"</#if>>
				</div>
				<div class="form-group">
					<label class="control-label">性别</label>
	                <#if notModify?? && notModify && (userInfo.sex)??>
	                    <#assign isReadOnly = true>
	                <#else>
	                    <#assign isReadOnly = false>
	                </#if>
	                <div class="form-control no-border">
						<label class="gender"><input type="radio" name="gender" value="male" <#if ((userInfo.sex)?? && userInfo.sex ==0)> checked</#if> <#if isReadOnly?? && isReadOnly>disabled="disabled" </#if>>男</label>
						<label class="gender"><input type="radio" name="gender" value="female" <#if ((userInfo.sex)?? && userInfo.sex ==1)> checked</#if> <#if isReadOnly?? && isReadOnly>disabled="disabled" </#if>>女</label>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label">公司</label>
					<input type="text" name="com_name" class="form-control" maxlength="40" value="${(userInfo.userCompany)!}" <#if notModify?? && notModify && (userInfo.userCompany)?? && userInfo.userCompany != ''>disabled="disabled" </#if>>
				</div>
				<div class="form-group">
					<label class="control-label">职位</label>
					<input type="text" name="position" class="form-control" maxlength="20"  value="${(userInfo.userPosition)!}" <#if notModify?? && notModify && (userInfo.userPosition)?? && userInfo.userPosition != ''>disabled="disabled" </#if>>
				</div>
				<div class="form-group sel">
					<label class="control-label">行业</label>
					<select class="form-control" name="industry">
	                    <option value="0">请选择</option>
	                <#if industryMap?? && industryMap?size &gt; 0>
	                    <#list industryMap?values as dictItem>
	                        <option value="${dictItem.key!}" <#if (userInfo.industry)?? && userInfo.industry.key == dictItem.key>selected</#if>>${dictItem.value!}</option>
	                    </#list>
	                </#if>
					</select>
				</div>
				<div class="form-group location">
					<label class="control-label">城市</label>
					<span class="col-xs-6 sel">
						<select class="form-control" id="province-sel" name="province">
							<option value="0">请选择</option>
	                        <#if provinceMap?? && provinceMap?size &gt; 0>
	                              <#list provinceMap?values as dictItem>
	                                  <option value="${dictItem.key!}" <#if (userInfo.provinceId)?? && (userInfo.provinceId)?string == dictItem.key>selected</#if>>${dictItem.value!}</option>
	                              </#list>
	                        </#if>
						</select>
					</span>
					<span class="col-xs-6 sel">
						<select class="form-control" id="city-sel" data-city-id="${(userInfo.cityId)!}" name="city">
							<option value="0">请选择</option>
						</select>
					</span>
				</div>
				<div class="form-group">
					<label class="control-label">手机</label>
					<input type="tel" maxlength="11" class="form-control" name="mobile" value="${(userInfo.userMobile)!}">
					<span class="phone-tip">仅与您交换过名片的好友可查看</span>
				</div>
			</div>
			<div class="msg">请输入正确的手机号</div>
			<a class="btn btn-block btn-success btn-login" id="submit-btn" disabled="disabled" href="javascript:;">
            <#if type?? && type="edit">保存<#else>下一步</#if></a>
		</div>
	</body>
</html>
