<%@page pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/namespace.jsp"%>
<c:set var="title" value="登岛注册 - 正和岛" />
<%@include file="/WEB-INF/views/inc/page.open.jsp"%>
<%@include file="/WEB-INF/views/inc/common.css.jsp"%>
<link href="${STATIC_URL}/manual/css/manual.css" rel="stylesheet" type="text/css" />

<div id="app-page">
<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div id="page-content">
<div id="page-content-inner">

<a class="banner-width-container" href="/register">
	<img src="${STATIC_URL}/core/img/banner-default.jpg">
</a>

<div class="c2-wrap manual wrapper">
<c:set var="active" value="register" />
<%@include file="left.column.jsp"%>

<div class="content-column">
	<div class="content-title">登岛注册</div>
	<div id="tip2" class="pre-format">请如实填写以下信息，我们将对您填写的个人信息资料严格保密，
仅用于正和岛会员资格申请及日后方便为您提供服务之用。</div>
	<div class="manual-panel register">
		<form id="form-info" class="xform" action="/manual/doRegister" data-redirect="${empty header.Referer ? '/' : header.Referer}">
			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-name" for="txt-name" class="not-empty">姓名</label>
					<div class="flex-cell">
						<input id="txt-name" name="realname" type="text" placeholder="请输入您的真实中文姓名" maxlength="40" data-empty-error="姓名不能为空" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-gender" class="not-empty">性别</label>
					<div id="gender-cell" class="flex-cell">
						<input id="rd-male" name="gender" type="radio" value="1" checked/>
						<label id="lab-male" for="rd-male">男</label>
						<input id="rd-female" name="gender" type="radio" value="2"/>
						<label id="lab-female" for="rd-female">女</label>
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-company" for="txt-company" class="not-empty">公司名称</label>
					<div class="flex-cell">
						<input id="txt-company" name="company" type="text" placeholder="请输入您的公司全称" maxlength="250" data-empty-error="公司名称不能为空" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-post" for="txt-post" class="not-empty">公司职务</label>
					<div class="flex-cell">
						<input id="txt-post" name="position" type="text" placeholder="请输入您在公司的职务" maxlength="250" data-empty-error="公司职务不能为空" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-industry" for="sel-industry" class="not-empty">所属行业</label>
					<div class="flex-cell">
						<select id="sel-industry" name="industry" data-empty-error="请选择您的所属行业">
							<option value="" selected="selected">请选择行业</option>
							<c:forEach items="${industryList}" var="item">
							<option value="${fn:escapeXml(item.key)}">${fn:escapeXml(item.value)}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-turnover" for="sel-turnover" class="not-empty">企业上年<br>度营业额</label>
					<div class="flex-cell">
						<select id="sel-turnover" name="turnover" data-empty-error="请选择您企业上年度营业额">
							<option value="" selected="selected">请选择营业额</option>
							<c:forEach items="${turnoverList}" var="item">
							<option value="${fn:escapeXml(item.key)}">${fn:escapeXml(item.value)}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-province" for="sel-province" class="not-empty">省份</label>
					<div class="flex-cell">
						<select id="sel-province" name="province" data-empty-error="请选择您的省份">
							<option value="" selected="selected">请选择省份</option>
							<c:forEach items="${provinceList}" var="item">
							<option value="${fn:escapeXml(item.key)}">${fn:escapeXml(item.value)}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-other-phone" for="txt-other-phone">联系电话</label>
					<div class="flex-cell">
						<input id="txt-other-phone" name="otherphone" type="text" value="${user.mobile}" placeholder="请输入您真实的联系方式，以便接受正和岛提供的服务" maxlength="20" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-from" for="txt-from">推荐人</label>
					<div class="flex-cell">
						<input id="txt-from" name="from" type="text" placeholder="请填写推荐您加入的正和岛会员姓名，如没有可不填写" maxlength="40" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-assistant" for="txt-assistant">助理姓名</label>
					<div class="flex-cell">
						<input id="txt-assistant" name="assistant" type="text" placeholder="请输入您助理的姓名，以便办理加入正和岛的相关事宜" maxlength="40" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-assistant-phone" for="txt-assistant-phone">助理电话</label>
					<div class="flex-cell">
						<input id="txt-assistant-phone" name="assistantphone" type="text" placeholder="请输入您助理的联系电话" maxlength="20" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-with">
				<div class="input-error"></div>
				<div class="input-row">
					<label id="lab-assistant-email" for="txt-assistant-email">电子邮箱</label>
					<div class="flex-cell">
						<input id="txt-assistant-email" name="assistantemail" type="text" placeholder="请输入您助理的电子邮箱，以便接收相关资料" maxlength="100" data-check-function="checkEmail" />
					</div>
				</div>
			</div>

			<div class="input-bundle label-in-cell">
				<div class="input-error"></div>
				<div class="input-row">
					<div class="flex-cell">
						<input id="chk-agreement" type="checkbox" data-empty-error="请阅读并同意服务条款" />
						<label id="lab-agreement" for="chk-agreement">本人已阅读，并同意<a href="/manual/terms" target="_blank">《正和岛社交网络服务使用协议》</a>服务条款。</label>
					</div>
				</div>
			</div>

			<div class="input-bundle label-in-cell">
				<div class="input-error"></div>
				<div class="input-row">
					<div class="flex-cell">
						<input id="chk-rules" type="checkbox" data-empty-error="请确认您填写信息的真实性" />
						<label id="lab-rules" for="chk-rules">本人确定本次申请登岛填写的内容真实，自愿遵守<a href="/manual/rules" target="_blank">《岛邻公约》</a>。</label>
					</div>
				</div>
			</div>

			<input type="submit" />
		</form>

		<div id="btn-container" class="flex-cell button-container">
			<a id="btn-info" class="button" href="javascript:;" data-toggle-text="正在提交...">完成注册并提交登岛申请</a>
			<div id="hotline-tip" class="pre-format">客服热线　400-101-9737
　　　　　400-100-9737</div>
		</div>
	</div>
</div>
</div>

</div>
</div>
<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</div>

<%@include file="/WEB-INF/views/inc/common.js.jsp"%>
<script type="text/javascript" src="${STATIC_URL}/manual/js/register.js"></script>
<%@include file="/WEB-INF/views/inc/page.close.jsp"%>