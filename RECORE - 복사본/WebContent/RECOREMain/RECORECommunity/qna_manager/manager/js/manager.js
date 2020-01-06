$(function(){
	$(".dashboard-menu li a").click(function() {

		$(".dashboard-menu li a").removeClass("active");
		$(this).addClass("active");
	})
})