define(['jquery'],function($) {
	var until = {
		convertParagrapToPTag: function(input) {
			var input = $.trim(input);
			var arrayP = input.split(/\n{1,}/g);
			var result = "";
			for(i in arrayP) {
				result = result + "<p>" + arrayP[i] + "</p>";
			}
			return result;
		}
	}
	return until;
});