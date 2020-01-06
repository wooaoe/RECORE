package com.mvc.vo;

public class Vo_Mypage_Paging {
	private int pageNo; 		//현재 페이지 번호
	private int totalCount; 	//전체 게시글 수
	private int rowContent; 	//페이지당 나타낼 개수
	private int firstPageNo;	//첫번째 페이지 번호 (맨앞으로 때문에)
	private int lastPageNo;		//마지막 페이지 번호
	private int prevPageNo;		//이전 페이지 번호
	private int nextPageNo;		//다음 페이지 번호
	private int startPage; 		//페이지 블락의 시작번호
	private int endPage; 		//페이지 블락의 끝번호
	
	public Vo_Mypage_Paging() {
		super();
	}
	public Vo_Mypage_Paging(int pageNo, int totalCount, int rowContent, int firstPageNo, int lastPageNo, int prevPageNo,
			int nextPageNo, int startPage, int endPage) {
		super();
		this.pageNo = pageNo;
		this.totalCount = totalCount;
		this.rowContent = rowContent;
		this.firstPageNo = firstPageNo;
		this.lastPageNo = lastPageNo;
		this.prevPageNo = prevPageNo;
		this.nextPageNo = nextPageNo;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.paging();
	}
	public int getRowContent() {
		return rowContent;
	}
	public void setRowContent(int rowContent) {
		this.rowContent = rowContent;
	}
	public int getFirstPageNo() {
		return firstPageNo;
	}
	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}
	public int getLastPageNo() {
		return lastPageNo;
	}
	public void setLastPageNo(int lastPageNo) {
		this.lastPageNo = lastPageNo;
	}
	public int getPrevPageNo() {
		return prevPageNo;
	}
	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}
	public int getNextPageNo() {
		return nextPageNo;
	}
	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	private void paging() {
		if(totalCount == 0) {return;} //글이 없을 경우
		if(pageNo == 0) {setPageNo(1);} //페이지 번호가 없을 경우 기본값으로 1설정
		if(rowContent == 0) {setRowContent(5);} //한 페이지에 몇개 보여줄 것인지 기본값 설정
		
		int lastPage = (totalCount + (rowContent - 1)) / rowContent; //마지막 페이지 번호
		setLastPageNo(lastPage); //마지막 페이지 번호 설정
		if(pageNo > lastPage) { //현재 페이지 번호가 마지막 페이지 번호를 넘어설 경우 마지막페이지 번호를 현재 페이지 번호로 설정
			setPageNo(lastPage);
		}
		
		if(pageNo<0 /*|| this.pageNo>lastPage*/) {setPageNo(1);} // 페이지 번호가 범위와 맞지 않을 경우
		
		boolean isNowFirst = pageNo == 1 ? true : false; //전체 페이지 중 첫번째인지 판별
		boolean isNowLast = pageNo == lastPage ? true : false; //전체 페이지 중 마지막인지 판별
		
		System.out.println("vo내에서 pageno" + pageNo);
		int startno = ((pageNo - 1) / 5) * 5 + 1;
		setStartPage(startno); //페이지 블락의 시작번호 지정
		setEndPage(startPage + 4); //페이지 블락의 끝번호 지정
		
		if(endPage > lastPage) {endPage = lastPage;} //페이지 블락의 끝번호가 전체 페이지의 마지막페이지 보다 큰 경우 마지막페이지를 끝번호로 지정
		
		setFirstPageNo(1); //첫번째 페이지 번호 기본값
		
		if(isNowFirst) {
			setPrevPageNo(1); //현재 첫번째 페이지일 경우 이전 페이지 번호를 기본값 1로 설정
		}else {
			setPrevPageNo(pageNo - 1); //현재 첫번째 페이지가 아닐경우 이전 페이지 번호 설정
		}
		
		if(isNowLast){
			setNextPageNo(lastPage); //현재 마지막 페이지일 경우 다음 페이지 번호를 마지막페이지 번호로 설정
		}else {
			setNextPageNo(pageNo + 1); //현재 마지막 페이지가 아닐 경우 다음 페이지 번호 설정
		}
	}

}
