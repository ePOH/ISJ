// JavaScript Document

(function($){
	$(document).ready(function(){
		
		var logoutForm = $(".header .banner2 .nav .logoutForm");
		
		function toggleLogoutForm () {
			logoutForm.slideToggle(500);
		}
		logoutForm.mouseleave(toggleLogoutForm).closest(".nav").find("#hl_logout").click(toggleLogoutForm);
		logoutForm.mouseleave(toggleLogoutForm).closest(".nav").find("#userbanner1_hl_logout").click(toggleLogoutForm);
		
	});
})(jQuery);
