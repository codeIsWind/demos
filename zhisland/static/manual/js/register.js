$(function() {

$("#form-info").xform({
	buttons: "#btn-info"
});

window.checkEmail = function() {
	var value = $.trim(this.val());
	if (value && !/^([0-9a-z]([-.]*[0-9a-z_+])*@([a-z0-9]([a-z0-9\-]{0,61}[a-z0-9])?\.)+[a-z]{2,6})$/i.test(value)) {
		return this.xformInputError("电子邮箱地址不正确");
	}
}

});