// JavaScript Document

(function($){
	$(document).ready(function(){
							   
		function openAbout () {
			$("#about").show();
			$(this).css({"background-color": "#e5e6e6", "color": "#000"});
			$("#gallery").hide();
			$("#galleryButton").css({"background-color": "#B2B5A0", color: "#fff"});
		}
		function openGallery () {
			$("#gallery").show();
			$(this).css({"background-color": "#e5e6e6", "color": "#000000"});
			$("#about").hide();
			$("#aboutButton").css({"background-color": "#B2B5A0", "color": "#fff"});
		}
			
		$("#aboutButton").click(openAbout);
		$("#galleryButton").click(openGallery);
		
	});
})(jQuery);
