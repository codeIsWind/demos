$(function () {
	var $leftSideWrap = $('.left-side-op-list')
	var $leftSideTabsWrap = $leftSideWrap.find('.left-side-op-tabs');
	var $leftSideTab = $leftSideTabsWrap.find('li');
	var $leftSideListWrap = $leftSideWrap.find('.left-side-list-wrap');

	var init = function () {
		initEvent();
		advImgHover();
	};

	var initEvent = function () {
		$leftSideTab.on('click',leftSideListOnclick);
	};

	var leftSideListOnclick = function () {
			var $this = $(this);
			var index = $this.index();
			$this.addClass('active').siblings().removeClass('active');
			$leftSideListWrap.children().eq(index).show().siblings().hide();
	};

	var advImgHover = function () {
		var $advImg = $('.adv').find('img');
		$advImg.hover(
			function () {
				if(!$(this).parent().hasClass('bg-black')){
					$(this).parent().addClass('bg-black');
				};
				$(this).animate({'opacity':0.7},300);
			},
			function () {
				$(this).animate({'opacity':1},300);
			}
		);
	};

	init();

	// build news html list.
	window.buildNewsList = function(list) {
		var html = '';
		for (var i = 0; i < list.length; i++) {
			html +=
			'<li class="article-wrap">' +
				'<div class="article-box">' +
					'<a href="/news/detail?id=' + list[i]["id"] + '" target="_blank" class="article-img"><img src="' + list[i]["image"] + '"></a>' +
					'<span class="column-tittle" style="background-image:url(' +
					(list[i]["newsCategory"] ? list[i]["newsCategory"]["image"] : '') + ')">' +
					$.htmltune.encode(list[i]["newsCategory"] ? list[i]["newsCategory"]["name"] : '') + '</span>' +
				'</div>' +
				'<div class="article-intro">' +
					'<a href="/news/detail?id=' + list[i]["id"] + '" target="_blank" class="article-title">' + $.htmltune.encode(list[i]["title"]) + '</a>' +
					'<div class="release-people">' +
					//'<a class="people-picture" ><img src="' + list[i]["image"] + '"></a>' +
					'<span class="name">' + $.htmltune.encode(list[i]["publisher"]) + '</span>' +
					'<span class="time">&middot; ' + $.htmltune.encode(list[i]["publishTime"]) + '</span>' +
					'</div>' +
					'<p class="article-excerpts">' + $.htmltune.encode(list[i]["summary"]) + '</p>' +
				'</div>' +
			'</li>';
		}

		return html;
	}
});