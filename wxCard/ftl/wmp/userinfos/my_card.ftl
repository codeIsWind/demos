<!DOCTYPE html>
<html lang="en">
<head>
<#include "../inc/meta.ftl">
	<title> <#if changeCard?? && changeCard>TA的名片<#else>我的名片</#if></title>
	<link rel="stylesheet" href="${staticurl}/pagescript/userinfos/nameCard/css/main.css"/>
	<!--          
	<link rel="stylesheet/less" href="${staticurl}/pagescript/userinfos/nameCard/less/main.less"/>
	<#include "../inc/lessconf.ftl">
	-->
	<#include "../inc/requireconf.ftl">
	<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/userinfos/nameCard/js/nameCard.js"></script>
</head>
<body>
<input type="hidden" name="key" value="${key!}">
<input type="hidden" name="uid" value="${(userinfo.userId)!}">
<div class="container">
    <div class="mycard-wrap">
        <div class="image-photo-box">
			<img class="holder" src="${staticurl}/pagescript/userinfos/nameCard/img/holder.png">
            <a  class="image-photo" data-bg-img="${(userinfo.figure)!}"></a>
            <div class="cover-linear-gradient ">
                <div class="personal-data">
                    <div class="personal-name">${(userinfo.userName)!}</div>
                    <span class="com-name">${(userinfo.userCompany)!}</span>
                    <span class="com-position">${(userinfo.userPosition)!}</span>
                </div>
            </div>
        </div>
        <div class="introduction-box">
            <div class="introduction"><#if (userinfo.introduce)??><@nec (userinfo.introduce) true/></#if></div>
            <div class="hobby-box">
                <span class="tag tag-gold checked">${(userinfo.industry.value)!}</span>
            <#if userTags?? && userTags?size &gt; 0>
                <#list userTags as userTag>
                    <#if userTag_index < 2>
                        <span class="tag tag-gold checked">${userTag!}</span>
                    </#if>
                </#list>
            </#if>
            <#if needSize?? && interestTags?? && interestTags?size &gt; 0>
                 <#list interestTags as tag>
                     <#if tag_index < needSize>
                         <span class="tag tag-gold checked">${tag!}</span>
                     </#if>
                 </#list>
            </#if>
            </div>
        </div>
    </div>
    <#if changeCard?? && changeCard>
        <div class="fixed-footer">
            <a class="btn btn-success btn-login double-btn create-card" id="createCard" href="javascript:;">创建我的名片</a>
            <a class="btn btn-success btn-login double-btn change-btn btn-write" id="changeCard" href="javascript:;">交换名片</a>
        </div>
    <#else>
        <div class="fixed-footer">
           <a class="btn btn-success btn-login double-btn" id="editCard" href="javascript:;">修改名片</a>
            <a class="btn btn-success btn-login double-btn send-card" id="sendCard" href="javascript:;">分享名片</a>
        </div>
    </#if>
    <div id="covered" class="closeEvent"></div>
    <div id="sendGuide" class="closeEvent">将名片“发送给好友”或“分享至朋友圈”</div>
    <div class="popup-style barcode-2d closeEvent">
        <p class="popup-txt">请先长按二维码</p>
        <p class="popup-txt">关注"正和岛微站"</p>
        <div id="popup-img"><img src="${qrCode!"https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEq7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL0sweUV2ZmptTW9wTGNBcWN2V1RiAAIEDEVdVgMEAAAAAA%3D%3D"}" alt=""></div>
    </div>
    <div class="popup-style exchange-prompt closeEvent">
        <p class="popup-txt">交换名片功能即将推出</p>
        <p class="popup-txt">敬请期待</p>
        <img  id="exchange-bg" src="${staticurl}/pagescript/userinfos/nameCard/img/img_exchange_namecard.png" alt="">
    </div>
</div>
</body>
</html>
