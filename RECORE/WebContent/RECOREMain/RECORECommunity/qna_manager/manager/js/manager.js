
function check(){
	if(searchForm.keyword.value != ""){
		if(searchForm.searchsubject.value == ""){
			alert("검색어 옵션을 선택해 주세요.");
		    searchForm.searchsubject.focus();

		    return false;
		}else{
			return true;
		}
	}else{
		if(searchForm.searchsubject.value != ""){
			alert("검색어를 입력해 주세요.");
			searchForm.keyword.focus();

			   return false;
		}else{
			return true;
		}
	}
}

$(function(){
	
	/*category set code*/
	if(catd=="all"){
		$("select option[id='all']").attr("selected", true);

	}else if(catd=="bag_acc"){
		$("select option[id='bag_acc']").attr("selected", true);

	}else if(catd=="outer"){
		$("select option[id='outer']").attr("selected", true);

	}else if(catd=="top"){
		$("select option[id='top']").attr("selected", true);

	}else if(catd=="bottom"){
		$("select option[id='bottom']").attr("selected", true);

	}else if(catd=="wallet"){
		$("select option[id='wallet']").attr("selected", true);

	}else if(catd=="office"){
		$("select option[id='office']").attr("selected", true);

	}else if(catd=="home"){
		$("select option[id='home']").attr("selected", true);

	}else if(catd=="furniture"){
		$("select option[id='furniture']").attr("selected", true);
	}
	/*searchsubject set*/
	if(searchsubject==null){
		$("select option[id='base']").attr("selected", true);

	}else if(searchsubject=="number"){
		$("select option[id='number']").attr("selected", true);

	}else if(searchsubject=="id"){
		$("select option[id='id']").attr("selected", true);

	}else if(searchsubject=="name"){
		$("select option[id='name']").attr("selected", true);

	}
	
	$('.saveInbtn').click(function() {
		if($(this).parent().parent().children().eq(5).children().eq(0).val()==""){
			alert("수정 재고를 입력해주세요.")
			return;
		}
		if (confirm("변경 사항을 적용하시겠습니까?") == true){   
			//상품아이디
			var prod_id=$(this).parent().parent().children().eq(1).text();
			//수정재고
			var stock = $(this).parent().parent().children().eq(5).children().eq(0).val();
			//url
			var url = "manager.do?command=manager_stock_in&prod_id="+prod_id+"&stock="+stock;
			//수량 set
			$.ajax({
				url: url, 
				dataType:"json",
				success: function(msg){
					$("#"+msg.prod_id).text(msg.prod_stock);
					alert("재고 수정이 완료되었습니다.");
				},
				error:function(){
					alert("재고 수정에 실패하였습니다. 다시 시도해주세요.");
				}
			})
			//수정재고 input reset
			$(this).parent().parent().children().eq(5).children().eq(0).val('');
				
		}else{  
			//수정재고 input reset
			$(this).parent().parent().children().eq(5).children().eq(0).val('');
		    return;
		}

	})
	
	$('.saveOutbtn').click(function() {
		if($(this).parent().parent().children().eq(5).children().eq(0).val()==""){
			alert("수정 재고를 입력해주세요.")
			return;
		}
		if (confirm("변경 사항을 적용하시겠습니까?") == true){    
			//상품아이디
			var prod_id=$(this).parent().parent().children().eq(1).text();
			//수정재고
			var stock = $(this).parent().parent().children().eq(5).children().eq(0).val();
			//url
			var url = "manager.do?command=manager_stock_out&prod_id="+prod_id+"&stock="+stock;
			//수량 set
			$.ajax({
				url: url, 
				dataType:"json",
				success: function(msg){
					$("#"+msg.prod_id).text(msg.prod_stock);
					alert("재고 수정이 완료되었습니다.");
				},
				error:function(){
					alert("재고 수정에 실패하였습니다. 다시 시도해주세요.");
				}
			})
			//수정재고 input reset
			$(this).parent().parent().children().eq(5).children().eq(0).val('');
		}else{   
			//수정재고 input reset
			$(this).parent().parent().children().eq(5).children().eq(0).val('');
		    return;
		}
	})

})