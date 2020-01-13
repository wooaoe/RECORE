var openWin;
function popup(){
	window.name = "parentForm";
	var url    ="qna.do?command=qna_searchboardlist&keyword= ";
	var title  = "childForm";
	var status = "width=617, height=792";
	window.open(url,title,status);
}