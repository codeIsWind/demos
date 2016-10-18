<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../../../inc/meta.ftl">
		<title>管理机构</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/org-admin/member/profile/css/main.css">
		<#--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/org-admin/member/profile/less/main.less"/>
		<#include "../../../inc/lessconf.ftl">
		-->
		<#include "../../../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/org-admin/member/profile/js/main.js"></script>
	</head>
	<body>
        <#--隐藏域中type的值为create 或 edit， 表明是添加还是编辑成员信息， 提交数据的时候需提交该参数-->
        <input type="hidden" name="type" value="${type!}">
        <input type="hidden" name="uid" value="${(member.getUid())!}">
        <input type="hidden" name="orgId" value="${orgId!}">
		<div class="container">
			<div class="title-bar">
				<h1><#if type?? && type="create">添加成员<#else>成员信息</#if></h1>
				<#if type?? && type="edit"><span class="kick-out">踢出成员</span></#if>
			</div>
			<div class="main-wrapper">
				<div class="form-group">
						<label class="control-label">姓名</label>
						<input readonly="readonly" type="text" class="form-control" placeholder="请选择要添加的岛邻" name="uname" value="${(member.getUname())!}">
						<#if type?? && type="create"><div class="icon-arrow-right"></div></#if>
				</div>
				<div class="form-group">
						<label class="control-label">职务</label>
						<input type="text" class="form-control" placeholder="请填写机构职务，最多8个字" name="role" maxlength="8" value="${(member.getOrg_role())!}">
				</div>
				<div class="set-top">
                    <#--如果隐藏域中weight 的值为0 checkbox 不选中， 否则选中，并展示响应的值-->
                    <input type="hidden" name="weight" value="${(member.getWeight())!0}">
                    <div class="checkbox-container" id="chk-top">
				        <span class="checkbox"></span><span>置顶成员</span>
			        </div>
			        <div class="position">
			        	位置显示在第
			        	<span class="number-operator-container">
				        	<span class="minus"></span>
				        	<span class="number">1</span>
				        	<span class="plus"></span>
			        	</span>
			        	位		        	
			        </div>
				</div>
                <#if (orgView.getUse_badge())?? && orgView.getUse_badge() == 1>
                    <#if (orgView.getBadge_img_standard())?? && (orgView.getBadge_img_standard())!='' && (orgView.getBadge_img_honor())?? && (orgView.getBadge_img_honor())!=''>
                        <#assign badgeSize = 2>
                    <#elseif ((orgView.getBadge_img_standard())?? && (orgView.getBadge_img_standard())!='')>
                        <#assign isStandard = true/>
                        <#assign badgeSize = 1>
                    <#elseif ((orgView.getBadge_img_honor())?? && (orgView.getBadge_img_honor())!='')>
                        <#assign isStandard = false/>
                        <#assign badgeSize = 1>
                    </#if>
                <#else>
                    <#assign badgeSize = 0>
                </#if>
                <#if badgeSize &gt;0>
                    <div class="set-badge">
                        <#--如果隐藏域中badgeLevel 的值为0 checkbox 不选中，否则选中，并展示响应的勋章，值为10 的是标准徽章， 20的是荣誉徽章-->
                        <input type="hidden" name="badge" value="${(member.getBadge_level())!0}">
                        <div class="checkbox-container" id="chk-badge">
                            <span class="checkbox"></span><span>授予机构徽章</span>
                        </div>
                        <#if badgeSize == 2>
                            <div class="badge radio-group">
                                <div class="badge-container">
                                    <div class="radio-container left">
                                        <span class="radio" value="10"></span><span class="badge-detail">
                                            <img src="${(orgView.getBadge_img_standard())!}"/>
                                            <span class="badge-title">标准徽章</span>
                                        </span>
                                    </div>
                                    <div class="radio-container right">
                                        <span class="radio" value="20"></span><span class="badge-detail">
                                            <img src="${(orgView.getBadge_img_honor())!}"/>
                                            <span class="badge-title">荣誉徽章</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        <#elseif badgeSize == 1>
                            <div class="badge radio-group">
                                <div class="badge-container">
                                    <div class="radio-container left">
                                        <span class="radio" value="<#if isStandard?? && isStandard>10<#else>20</#if>"></span><span class="badge-detail">
                                            <img src="<#if isStandard?? && isStandard>${(orgView.getBadge_img_standard())!}<#else>${(orgView.getBadge_img_honor())!}</#if>"/>
                                            <span class="badge-title"><#if isStandard?? && isStandard>标准徽章<#else>荣誉徽章</#if></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </#if>
                    </div>
                </#if>
			</div>
			<div class="list-footer">
				<a class="btn btn-block btn-primary" disabled id="submit" href="javascript:;"><#if type?? && type="create">确定添加<#else>确认修改</#if></a>
			</div>
		</div>

        <div class="popup">
            <div class="pop-window">
                <div class="title">确定踢出用户</div>
                <div class="prompt">
                    踢出后其会从成员列表中删除。
                </div>
                <div class="btns">
                    <a href="javascript:;" class="btn-cancel">取消</a>
                    <a href="javascript:;" class="btn-confirm">确定</a>
                </div>
            </div>
        </div>

	</body>
</html>
