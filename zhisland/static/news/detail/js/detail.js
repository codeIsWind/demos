$(function () {
	var $share = $(".article-footer-right");
	var $praise = $('.praise-text');

	var init = function () {
		initList();
		initEvent();
		getHeight();
	};
	var initEvent = function () {
		$(".icons-dz").on("click", praiseonClick);
		$share
		.on('click','.share-to-wb',sharewbOnclick)
		.on('click','.share-to-qq',shareQqOnclick)
	};

	var getHeight = function () {
		$(document).ready(function(){
			var height = $('.detail-left-wrap').height();
			$('.detail-wrap').css('min-height',height);
		});

	};

//begin visit event
	var initList = function () {
		$.xNet({
			url: "/visit?newsId=" + parseInt($('.article-title').attr("news-id")) + "",
			type: "post",
			errorCodes: "*",
			data: {
			},
			success: function(result) {
			},
			error: function(result) {
				showMsg(result.message, "error");
			}
		});
	};

//begin praise onclick
	var praiseonClick = function (event) {
		if(!USER){
			showMsg("请您先登录后，再点赞。");
			return false;
		};
		var $button = $(this);
		if ($button.attr("disabled")) {
			return false;
		}
		$.xNet({
			url: "/praise?newsId=" + parseInt($('.article-title').attr("news-id")) + "",
			type: "post",
			errorCodes: "*",
			data: {
			},
			beforeSend: function(xhr) {
				$button.attr("disabled", "disabled");
				toggleText($button);
			},
			success: function(result) {
				var Num = parseInt($('.praise-text').text());
					Num++;
					$('.praise-text').text(Num);
			},
			error: function(result) {
				showMsg(result.message, "error");
			},
			complete: function(result) {
				toggleText($button);
				$button.removeAttr("disabled");
			}
		});
	};

	//begin share 
	var sharewbOnclick = function () {
		var _width = 400;
		var _height = 300;
		var atText = $('.article-all').text().substring(0,100)+"...";
		var _shareUrl = 'http://v.t.sina.com.cn/share/share.php?&appkey=895033136'; 
		    _shareUrl += '&url='+ encodeURIComponent(document.location);     
		    _shareUrl += '&title=' + encodeURIComponent(document.title + atText);   
		    _shareUrl += '&source=' + encodeURIComponent('');
		    _shareUrl += '&sourceUrl=' + encodeURIComponent('');
		    _shareUrl += '&content=' + 'utf-8';   
		    _shareUrl += '&pic=' + encodeURIComponent('');  
		    window.open(_shareUrl,'_blank','toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0,' + 'width=' + _width + ',height=' + _height + ',top=' + (screen.height-_height)/2 + ',left=' + (screen.width-_width)/2);
			};
	var shareQqOnclick = function () {
		var _width = 400;
		var _height = 300;
		var atText = $('.article-all').text().substring(0,100)+"...";
		var excerptsText = $('.article-content-excerpts').text().substring(0,100)+"...";
		var _shareUrl = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?';
		    _shareUrl += 'url=' + encodeURIComponent(document.location);   
		    _shareUrl += '&showcount=' + 0;     
		    _shareUrl += '&desc=' + encodeURIComponent(excerptsText);   
		    _shareUrl += '&summary=' + encodeURIComponent(atText);   
		    _shareUrl += '&title=' + encodeURIComponent(document.title);   
		    _shareUrl += '&site=' + encodeURIComponent('');  
		    _shareUrl += '&pics=' + encodeURIComponent('');   
		    window.open(_shareUrl,'_blank','width='+_width+',height='+_height+',top='+(screen.height-_height)/2+',left='+(screen.width-_width)/2+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
			}; 

	init();
});