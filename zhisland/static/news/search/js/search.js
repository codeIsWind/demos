$(function() {
	var $container = $(".search-article-list > ul");

	var init = function () {
		getLeftHeight();
		highlight();
		initEvent();
	};

	var initEvent = function () {
		$(".search-add-more").on("click", searchAddmoreOnClick);
	};

	//get container height;
	var getLeftHeight = function () {
		$(document).ready(function(){
			var height = $('.search-container-left').height();
			$('.search-container-right').css('min-height',height);
		});
	};

	//search high light;
	var highlight = function () {
		$container.highlight($.uget("keyword"), {element: "em", className: "keyword"});
	}

	//begin search addmore ;
	var searchAddmoreOnClick = function (event) {
		var $button = $(this);
		if ($button.attr("disabled")) {
			return false;
		}
		$.xNet({
			url: "/search/toSearchMore",
			type: "post",
			errorCodes: "*",
			data: {
				cp: parseInt($button.attr("data-page")) + 1,
				keyword: $button.attr("data-prm")
			},
			beforeSend: function(xhr) {
				$button.attr("disabled", "disabled");
				toggleText($button);
			},
			success: function(result) {
				var data = result.data.newsList;
				var html = buildNewsList(data);

				if (data.length) {
					$container.append(html);
					highlight();
					
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

	init();
});