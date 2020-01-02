
$(function(){
	$('#content_table tr').find('.conts').parent().hide(); //class가 contents인  tr을 모두 감춘다.  펼쳐질 내용을 감춰두기위한 작업
	$('#content_table .title').parent().click(function() {

		var urls = "qna.do?command=qna_viewcount&qna_no="+$(this).children().eq(5).children().attr("id"); 
		
		/*Toggle Code & ViewCount Code*/
		if($(this).next().is(':visible')){
			$(this).next().hide();
		}else{
			$(this).next().show();
			$.ajax({
				url: urls, 
				dataType:"json",
				success: function(msg){
					$("#"+msg.qna_no).text(msg.qna_view_count);
				},
				error:function(){
				}
			})
		}
		
	})
	
$(".review_menuCategory li").click(function() {
	
	location.href="qna.do?command=qna_list&catd="+$(this).attr("value");

})

})