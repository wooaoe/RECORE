$(function(){
	$(".selectBtn").click(function(){
		var imgSrc = $(this).parent().parent().children().find("img").attr("src");
		var sPrdName = $(this).parent().parent().children().eq(1).text();
		var prod_no = $(this).parent().parent().children().eq(2).children().eq(1).attr("value");
	
		$(opener.document).find("#iPrdImg").attr("src",imgSrc);
		$(opener.document).find("#qna_front_img").attr("value", imgSrc);
		$(opener.document).find("#sPrdName").html(sPrdName); 
		$(opener.document).find("#qna_seq_no").attr("value", prod_no);
		window.close();
	})
})