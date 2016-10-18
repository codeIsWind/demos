require(['jquery','modules/net/wAjax','wxapi'],function($,wAjax,wx){
	wx.config($.extend({
		debug: DEBUG,
		jsApiList: ['chooseImage','uploadImage']
	},WXCONFIG));	

	wx.ready(function(){
		wx.hideOptionMenu();
	});
	var INTRO_MAX_LENGTH = 200;
	var $intro = $('textarea');
	var $counter = $('.counter');
	var $submitBtn = $('#submit-btn');
	
	$('.container').on('click','#submit-btn:not([disabled])',function(){
		$intro.val($.trim($intro.val()));
		testEmpty();
		if($intro.val().length == 0) {
			return false;
		}
		wAjax({
			url: '/wmp/user/'+appConfigId+'/save/introduce',
			data: {
				jsonStr: JSON.stringify({introduce:$intro.val()}),
				type: $('[name="type"]').val()
			},
			success: function(obj){
				var timestamp = Date.parse(new Date());
				window.location.href = obj['data'] + "?timestamp=" + timestamp;
			}
		});	
	});

	function testEmpty() {
		$intro.val($intro.val().substring(0,INTRO_MAX_LENGTH));
		var inputCount = $intro.val().length;
		$counter.html(INTRO_MAX_LENGTH-inputCount);
		if(inputCount > 0) {
			$submitBtn.removeAttr('disabled');	
		} else {
			$submitBtn.attr('disabled','');	
		}
	}
	testEmpty();

	$intro.on('input',testEmpty);
	
});
