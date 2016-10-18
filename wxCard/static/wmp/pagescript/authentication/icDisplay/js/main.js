require(['jquery', 'modules/net/wAjax','wxapi'], function ($, wAjax, wx) {
	wx.config($.extend({
		debug: DEBUG,
		jsApiList: ['onMenuShareTimeline','onMenuShareAppMessage']
	},WXCONFIG));
	wx.ready(function(){
		wx.onMenuShareTimeline({
			title: SHARE_CONFIG.title, 
			link: SHARE_CONFIG.link, // 分享链接
			imgUrl: SHARE_CONFIG.imgUrl, // 分享图标
			desc: SHARE_CONFIG.desc, // 分享描述
			success: function () { 
			},
			cancel: function () { 
			}
		});
		wx.onMenuShareAppMessage({
			title: SHARE_CONFIG.title,
			link: SHARE_CONFIG.link, // 分享链接
			imgUrl: SHARE_CONFIG.imgUrl, // 分享图标
			desc: SHARE_CONFIG.desc, // 分享描述
			success: function () {
			},
			cancel: function () {
			}
		});
		wx.showOptionMenu();
	});

    var $window = $(window);
    var $html = $("html");

    $window.on("load resize", function() {
        $html.css("fontSize", $window.width() / 640 * 28 + "px");
    });

    var $mask = $('.mask');
	var $qr = $('.mask .qr');
	var $register = $('.footer .btn, .bottom-footer');

	
	$register.on('click',function(){		
		wAjax({
			url: '/wmp/user/'+appConfigId+'/isfocus?r='+Math.random(),
			type: 'get',
			success: function(obj){
				var timestamp = Date.parse(new Date());
				window.location.href = "/wmp/user/"+appConfigId+"/register"+'?timestamp='+timestamp;    
			},
			error: function(obj) {				
				$mask.children().hide();
				$qr.show();
				$mask.show();
		    }
		});	
	});

	$qr.on('click',function(e){
		e.stopPropagation();
	});
	$mask.on('click',function(){
		$mask.hide();
	});
});