// JavaScript Document

(function($){
	$(document).ready(function(){
							   
		var percentProgress = $("#percent").text();
		var imageHeight = $(".donate .progressBar").height();
		var heightValue = ((100 - percentProgress)/ 100) * imageHeight;
		
		$(".donate .progressBar").animate({height: heightValue}, 2000);
		
	});
})(jQuery);
