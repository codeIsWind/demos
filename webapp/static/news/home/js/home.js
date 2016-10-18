$(function(doc,win) {
	var $columnListWrap = $('.home-container-right');
	var $columnNavWrap = $columnListWrap.find('.column-tab-wrap');
	var $columnTab = $columnNavWrap.find('li');
	var $articleListWrap = $columnListWrap.find('.article-list');
	var $articleUl = $articleListWrap.find('ul');
	var $fixedNav = $('#columnNav');
	var $articleList = $(".article-list");
	var topHeight = $fixedNav.offset().top;

	//begin init;
	var init = function () {
		initEvent();
		swithTab();
		getHeight();
		imgHighLightHover();
	};
	//end init;

	//begin initEvent;
	var initEvent = function () {
		$(win).on('scroll',winOnScroll);
		$columnTab.on('click',columnNavOnclick);
		$(".add-more").on("click", addMoreOnClick);
	};
	//end initEvent;

	// begin add more;
	var addMoreOnClick = function (event) {
		var $button = $(this);
		if ($button.attr("disabled")) {
			return false;
		}

		var id = $button.attr("data-id");
		$.xNet({
			url: "/news/load" + (id ? "?categoryId=" + id : ""),
			type: "post",
			errorCodes: "*",
			data: {
				cp: parseInt($button.attr("data-page")) + 1
			},
			beforeSend: function(xhr) {
				$button.attr("disabled", "disabled");
				toggleText($button);
			},
			success: function(result) {
				var data = result.data.newsList;
				var html = buildNewsList(data);

				if (!$button.data("init")) {
					$button.attr("data-total", result.data.totalPage);
				}

				if (data.length) {
					$button.before(html);
					var index = parseInt($button.attr("data-page")) + 1;
					var total = parseInt($button.attr("data-total"));
					$button.attr("data-page", index);
					if (index >= total) {
						$button.hide();
					}
				}
				else {
					$button.hide();
				}

				$button.data("init", true);
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

	//begin the column-nav switch;
	var columnNavOnclick = function () {
		var $this = $(this);
		if ($this.attr("disabled")) {
			return false;
		}

		var index = $this.index();
		$this.addClass('active').children().show().end().siblings().removeClass('active').children().hide();
		$articleListWrap.children().eq(index).show().siblings().not($("#addMore")).hide();

		var top = $(".home-container-right").offset().top;
		var $window = $(win);
		var scrollTop = $window.scrollTop();
		if (scrollTop > top) {
			$window.scrollTop(top);
		}

		var id = $this.attr("data-id");
		if (id) {
			var $button = $("#btn-more-" + id);
			if (!$button.data("init")) {
				$button.trigger("click");
			}
		}
	};

	//trigger click for detail Page jump;
	var swithTab = function () {
		var id = $.uget("id");
		if (id) {
			$("#tab-" + id).trigger("click");
		}
	}

	//begin the img high light animate;
	var imgHighLightHover = function () {
		var $homeImgWrap = $('.home-img-wrap');
		var $img = $homeImgWrap.find('img');
		$img.hover(
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

	//begin tab nav fixed event
	var winOnScroll = function () {
		var $this = $(this);
		var scrollTop = $this.scrollTop();
		if (scrollTop >= topHeight){
			$fixedNav.add($articleList).addClass('fixed');
		} else {
			$fixedNav.add($articleList).removeClass('fixed');
		}		
	};

	//beginget height;
	var getHeight = function () {
		$(document).ready(function(){
			var height = $('.home-container-left').height();
			$('.home-container-wrap').css('min-height',height);
		});
	};

	init();//the init Wrapper;

}(window,document));