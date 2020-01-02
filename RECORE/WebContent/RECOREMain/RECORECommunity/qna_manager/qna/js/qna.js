
$(function(){
	$('#content_table tr').find('.conts').parent().hide(); //class가 contents인  tr을 모두 감춘다.  펼쳐질 내용을 감춰두기위한 작업
	$('#content_table .title').parent().click(function() {

		$(this).next().toggle();
	})

	$(".review_menuCategory li").click(function() {

		$(".review_menuCategory li").addClass("selected");
		$(this).removeClass("selected");
	})
})