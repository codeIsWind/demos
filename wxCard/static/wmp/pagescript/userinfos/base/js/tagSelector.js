define(['jquery','modules/net/wAjax','modules/ui/showMsg/js/main'],function($,wAjax,showMsg){
	var checkMax = false;
	return {
		init: function(max){
			if(max != undefined) {
				checkMax = true;
			}
			var $warning = $('<div>最多只能选择'+max+'个标签哦</div>').css({
				display: 'none',
				position: 'fixed',
				left: '0',
				right: '0',
				bottom: '60px',
				color: '#ff6161',
				'font-size': '12px',
				'text-align': 'center'
			}).appendTo($('body'));
			
			$('.tag').on('click',function(){
				var $this = $(this);
				if($this.hasClass('checked')) {
					$(this).removeClass('checked');
					//$warning.hide();
				} else {
					if($('.tag.checked').length >= max && checkMax ) {
						showMsg({msg:'最多只能选择'+max+'个标签哦'});
					} else {
						$(this).addClass('checked');
					}
				}
			});
		},
		save: function(type) {
			var tagsArr = [];
			$('.tag.checked').each(function(){
				tagsArr.push($(this).html());
			});
			wAjax({
				url: '/wmp/user/'+ appConfigId +'/tag/'+type+'/save',
				data: {
					type: $('[name="type"]').val(),
					jsonStr: tagsArr.toString()
				},
				success: function(obj) {
					var timestamp = Date.parse(new Date());
					window.location.href = obj['data'] + "?timestamp=" + timestamp;
				}
			});
		}
	};
});
