// JavaScript Document

(function ($) {
    $(document).ready(function () {

        var loginForm = $(".header .banner2 .nav .loginForm");

        function toggleLoginForm() {
            loginForm.slideToggle(500);
            loginForm.show()
        }
        loginForm.mouseleave(toggleLoginForm).closest(".nav").find("#userbanner1_openLogin").click(toggleLoginForm);
        loginForm.mouseleave(toggleLoginForm).closest(".nav").find("#openLogin").click(toggleLoginForm);

    });
})(jQuery);
