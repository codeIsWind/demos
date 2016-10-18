$(function() {

$("#form-register").xform({
	buttons: "#btn-register"
});

// monitor phone input to enable buttons.
var waiting = false;
$("#txt-phone").on("input", function(event) {
	var $this = $(this);

	if (!waiting) {
		setEnabled($("#btn-code"), hasValue($this));
	}
});


function checkPhoneNumber() {
	var phone = $.trim($("#txt-phone").val());
	return /^\d{11,}$/.test(phone);
}


// send phone checking code by sns.
$("#btn-code").on("click", function(event) {
	var $target = $(this);
	if ($target.attr("disabled")) {
		return false;
	}

	if (!checkPhoneNumber()) {
		showMsg("输入手机号格式不正确");
		return false;
	}

	var phone = $.trim($("#txt-phone").val());
	$.xNet({
		url: "/sendSmsForRegist",
		type: "post",
		errorCodes: "*",
		data: {
			mobile: phone
		},
		beforeSend: function(xhr) {
			waiting = true;
			$target.attr("disabled", "disabled");
		},
		success: function(result) {
			showMsg("验证码已发送至您的注册手机");

			var counter = 60;
			var timer = window.setInterval(function() {
				$target.text("获取验证码 (" + counter + ")");
				if (counter == 0) {
					window.clearInterval(timer);
					$target.removeAttr("disabled").text("获取验证码");
					waiting = false;
				}
				counter--;
			}, 1000);
		},
		error: function(result) {
			showMsg(result.message, "error");
			$target.removeAttr("disabled");
		}
	});
});


// bind with register info form.
window.checkPassword = function() {
	var password = $.trim($("#txt-password").val());
	if (password.length < 6) {
		return this.xformInputError("密码长度至少6个字符");
	}
}

window.checkPasswordRepeat = function() {
	var password = $.trim($("#txt-password").val());
	if ($.trim(this.val()) != password) {
		return this.xformInputError("再次输入的密码不一致");
	}
}

window.checkPhone = function() {
	if (!checkPhoneNumber()) {
		return this.xformInputError("输入手机号格式不正确");
	}
}

});