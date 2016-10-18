<!DOCTYPE html>
<html lang="en">
	<head>
		<#include "../inc/meta.ftl">
		<title>正和岛名片</title>

		<link rel="stylesheet" href="${staticurl}/common/cropper-2.2.4/cropper.min.css">
		<link rel="stylesheet" href="${staticurl}/pagescript/userinfos/photo/css/main.css">
		<!--
		<link rel="stylesheet/less" href="${staticurl}/pagescript/userinfos/photo/less/main.less"/>
		<#include "../inc/lessconf.ftl">
		-->
		<#include "../inc/requireconf.ftl">
		<script defer src="${staticurl}/common/require.js" data-main="${staticurl}/pagescript/userinfos/photo/js/main.js"></script>
	</head>
	<body>
    <input type="hidden" name="type" value="${type!}">
		<div class="container">
			<h1>形象照片</h1>
			<div class="photo-container">
				<img class="holder" src="${staticurl}/pagescript/userinfos/photo/img/holder.png">
				<div class="photo" id="photo-preview" data-img-url="${image!}"></div>
				<a class="btn-change-photo" href="javascript:;">点击重新上传</a>
			</div>
			<a class="btn btn-block btn-upload" id="" href="javascript:;">上传您的形象照片</a>
			<a class="btn btn-block btn-success btn-login" id="submit-btn" href="javascript:;"><#if type?? && type=="edit">保存<#else>完成</#if></a>
			<div class="instr">
				<p>上传说明</p>
				<ul>
					<li><span>本人清晰无水印照片，请勿使用合影</span></li>
					<li><span>形象照将展示在您的信用名片及个人主页上</span></li>
				</ul>
			</div>
			<div class="demo">
				<p>示例</p>
				<img src="${staticurl}/pagescript/userinfos/photo/img/demo.png">
			</div>	
			<div id="img-crop-container">
				<div class="img-container">
					<img id="image" src="">
				</div>
				<div class="fixed-btn">
					<a class="btn" id="btn-crop-cancel" href="#">取消</a>
					<a class="btn" id="btn-crop-confirm" href="#">确定</a>
				</div>
			</div>
		</div>
		<div class="loading" id="loading">
			<img src="${staticurl}/pagescript/base/img/img-loading.png" />
		</div>
		
	</body>
</html>
