require(['jquery', 'wxapi','modules/net/wAjax'], function ($, wx, wAjax) {
	wx.config($.extend({
		debug: DEBUG,
		jsApiList: ['onMenuShareTimeline','onMenuShareAppMessage']
	},WXCONFIG));


	var LETTER_WIDTH = 28;
	var IC_MAX_LENGTH = 6;

	var $mask = $('.mask');
	var $noIcContainer = $('.no-ic');
	var $icInput = $('#ic-input');
	var $submitBtn = $('#validate-ic');
	var $result = $('.result');

	wx.ready(function(){
		wx.onMenuShareTimeline({
			title: SHARE_CONFIG.title, 
			link: SHARE_CONFIG.link, // 分享链接
			imgUrl: SHARE_CONFIG.imgUrl, // 分享图标
			desc: SHARE_CONFIG.desc, // 分享描述
			success: function () { 
				$mask.hide();
			},
			cancel: function () { 
				$mask.hide();
			}
		});
		wx.onMenuShareAppMessage({
			title: SHARE_CONFIG.title,
			link: SHARE_CONFIG.link, // 分享链接
			imgUrl: SHARE_CONFIG.imgUrl, // 分享图标
			desc: SHARE_CONFIG.desc, // 分享描述
			success: function () {
				$mask.hide();
			},
			cancel: function () {
				$mask.hide();
			}
		});
		wx.showOptionMenu();
	});

	var initUI = function() {
		var icInputWidth = $icInput.width();
		var letterSpace = (icInputWidth-LETTER_WIDTH*IC_MAX_LENGTH*2/3)/IC_MAX_LENGTH-1;
		$('#ic-input').css('letter-spacing',letterSpace);
	}

	var icValidate = function() {
		var icInput = $icInput.val();
		if (icInput.length === 6) {
			$submitBtn.removeAttr('disabled');
		}
		else {
			$submitBtn.attr('disabled','');
		}
	}

	initUI();

	//bind event
	$noIcContainer.on('click',function(){
		$mask.show();
	});
	$mask.on('click',function(){
		$mask.hide();
	});

	$icInput.on('input',function(){		
		if($icInput.attr('type') == "password") {
			$icInput.attr('type','text');
		}
		var icInput = $icInput.val().replace(/[^a-zA-Z0-9]/g,'').substring(0,IC_MAX_LENGTH).toUpperCase();
		if(icInput.length === 6) {
			$icInput.blur();
		}
		$icInput.val(icInput);
		$result.hide();
		icValidate();
	});

	$('.container').on('click','#validate-ic:not([disabled])', function(){
		wAjax({
			url: '/wmp/user/'+appConfigId+'/invitation/code/submit',
			data: {
				code: $icInput.val()
			},
			success: function(obj){
				var timestamp = Date.parse(new Date());
				window.location.href = obj['data'] + "?timestamp=" + timestamp;
			},
			error: function(obj) {	
				$result.show();
				$result.html(obj['msg']);
			}
		});
	});

});
