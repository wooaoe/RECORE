
$(function(){
	$('#content_table tr').find('.conts').parent().hide(); //class가 contents인  tr을 모두 감춘다.  펼쳐질 내용을 감춰두기위한 작업
	$('#content_table .title').parent().click(function() {

		$(this).next().toggle();
		
		var urls = "qna.do?command=qna_viewcount&qna_no="+$(this).children().eq(0).text();
		
		$.ajax({
				url: urls, 
				dataType:"json",
				success: function(msg){
					$("#"+msg.qna_no).text(msg.qna_view_count);
				},
				error:function(){
				}
			})
		
	})

	
	$(".review_menuCategory li").click(function() {
		
		//location.href="qna.do?command=qna_list&catd="+$(this).attr("value");
		var url = "qna.do?command=qna_list&catd="+$(this).attr("value");
		var te = $(this).attr("value");
		alert("???");
		$.ajax({
			url: url, 
			dataType:"json",
			success: function(msg){
				
				$("#"+te).addClass("selected");
			},
			error:function(){
				alert("실패");
			}
		})
/*		
		$(".review_menuCategory li").addClass("selected");
		$(this).removeClass("selected");*/
		
		/*var catd_text = $(this).children().find("#catd_text").text();
		alert(catd_text);*/
	})
	

})