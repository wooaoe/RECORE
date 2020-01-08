
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
