// JavaScript Document

(function($){
	$(document).ready(function(){
							   
		var currentGallery;
		var defaultHeight = 175;
		
		function toggleListener () {
			
			var selectedGallery = $(this).closest(".accordian").find(".group");
			
			
			if(currentGallery && selectedGallery.attr("height") > defaultHeight){
				if(selectedGallery.height() == selectedGallery.attr("height")){
					selectedGallery.animate({height: defaultHeight}, 500, "linear");
					selectedGallery.closest(".accordian").find(".stats .toggle a").text("SEE ALL");
				}else{
					selectedGallery.animate({height: selectedGallery.attr("height")}, 500);
					selectedGallery.closest(".accordian").find(".stats .toggle a").text("SEE LESS");
				}
				if(currentGallery !== selectedGallery){
					if(currentGallery.height() == currentGallery.attr("height")){
						currentGallery.animate({height: defaultHeight}, 500, "linear");
						currentGallery.closest(".accordian").find(".stats .toggle a").text("SEE ALL");
					}
				}
				currentGallery = selectedGallery;
			}else if(selectedGallery.attr("height") > defaultHeight){
				selectedGallery.animate({height: selectedGallery.attr("height")}, 500);
				$(this).text("SEE LESS");
				currentGallery = selectedGallery;
			}
		}
		
		function setDefaults () {
			$(this).find(".group").attr("height", $(this).height()).css("overflow", "hidden").animate({height: defaultHeight}, 0).end().find(".stats .toggle a").click(toggleListener);
		}
		$(".accordian").each(setDefaults);
		
	});
})(jQuery);
