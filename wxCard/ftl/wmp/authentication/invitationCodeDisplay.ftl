<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>来自${(userTo.userName)!}的邀请</title>
		<link rel="stylesheet" href="${staticurl}/pagescript/authentication/icDisplay/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/authentication/icDisplay/less/main.less"/>
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/authentication/icDisplay/js/main.js"></script>
	</head>
	<div id="app-page">
		<div class="background">
			<img class="img" src="${staticurl}/pagescript/authentication/icDisplay/img/img_bg@2x.png">
		</div>		

		<div class="envelope">
			<img class="img" src="${staticurl}/pagescript/authentication/icDisplay/img/img_envelope@2x.png">	
		</div>	

		<div class="content content-top">
			<div class="photo-container">
				<div class="photo-circle" >
					<img class="img" src="{(userTo.userAvatar)!}">
				</div>
			</div>
			<div class="name">${(userTo.userName)!}</div>
			<div class="title">${(userTo.userCompany)!}-${(userTo.userPosition)!}</div>
			<div class="divider">
				<hr/>
			</div>
		</div>

		<div class="content content-bottom">
			<div class="invitation-code">
				<div class="code">${code!}</div>
				<div class="desc">建议您先记录邀请码或长按复制</div>
			</div>
		</div>

		<div class="footer">
			<div class="content-inner">
				<div class="btn">注册</div>				
			</div>
		</div>

		<div class="cover">			
			<div class="cover-left">
				<img class="img" src="${staticurl}/pagescript/authentication/icDisplay/img/img_pattern_left@2x.png">
			</div>
			<div class="cover-right">
				<img class="img" src="${staticurl}/pagescript/authentication/icDisplay/img/img_pattern_right@2x.png">
			</div>
		</div>
	<div class="bottom-footer">
		<div class="logo"></div>
		<div class="name">正和岛</div>
		<div class="desc">中国商界第一高端人脉与网络社交平台</div>
		<div class="more">了解更多</div>					
    </div>
    <div class="mask">
			<div class="qr">
				<p>请先长按二维码</p><p>关注“正和岛微站”</p>				
				<img src="${qrCode!}" />
			</div>
		</div>
	</div>
</body>
</html>