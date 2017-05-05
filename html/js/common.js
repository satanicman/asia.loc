$(function () {
	$('.sl').slick();
});

$(document).ready(function() {
 
	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			$('.footer__btn').fadeIn();
		} else {
			$('.footer__btn').fadeOut();
		}
});
 
$('.footer__btn').click(function() {
	$("html, body").animate({ scrollTop: 0 }, 600);
		return false;
		});
 });

$(document).ready(function($) {
   $('.popup-content').magnificPopup({
       type: 'inline'
   });
});

