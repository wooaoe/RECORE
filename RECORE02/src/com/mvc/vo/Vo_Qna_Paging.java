package com.mvc.vo;

public class Vo_Qna_Paging {
	private int page = 1; //현재 페이지(get)
	private int totalCount; //row 전체의 수 (get)
	private int beginPage; //출력 시작
	private int endPage; //출력 끝
	private int displayRow = 10; //한 페이지에 몇 개의 로우인지 (선택 set)
	private int displayPage = 10; //한 페이지에 몇 개의 페이지 (선택 set)
	private int startNum;
	private int endNum;
	boolean prev; //prev 버튼이 보일건지 안보일건지
	boolean next; //next 버튼이 보일건지 안보일건지
	
	public int getPage() {
		return page;
	}
	
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public void setTotalCount(int totalCount) {
		//setTotalCount()를 꼭 호출해야 paging이 되기 때문에
		//paging() 함수를 setTotalCount()를 호출했을 때 자동으로 호출되게 한다.
		
		this.totalCount = totalCount;
		paging();
	}
	
	public int getDisplayRow() {
		return displayRow;
	}
	
	public void setDisplayRow(int displayRow) {
		this.displayRow = displayRow;
	}
	
	public int getDisplayPage() {
		return displayPage;
	}
	
	public void setDisplayPage(int displayPage) {
		this.displayPage = displayPage;
	}
	
	public int getBeginPage() {
		return beginPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public boolean isPrev() {
		return prev;
	}
	
	public boolean isNext() {
		return next;
	}
	
	private void paging() {
		//private int page = 1; //현재 페이지(get)
		//private int totalCount; //row 전체의 수 (get)
		//private int beginPage; //출력 시작
		//private int endPage; //출력 끝
		//private int displayRow = 10; //한 페이지에 몇 개의 로우인지 (선택 set)
		//private int displayPage = 10; //한 페이지에 몇 개의 페이지 (선택 set)
		
		endPage = ((int)Math.ceil(page/(double)displayPage))*displayPage;
		System.out.println("****endPage: " + endPage);
		System.out.println("page: "+page);
		System.out.println("endPage: " + endPage);
		
		beginPage = endPage - (displayPage-1);
		System.out.println("beginPage: " + beginPage);
		
		int totalPage = (int)Math.ceil(totalCount/(double)displayRow);

		
		if(totalPage <= endPage) {
			endPage = totalPage;
			next = false;
		}else {
			next = true;
		}
		
		prev = (beginPage==1)? false:true;
		System.out.println("endPage: " + endPage + " totalPage:" + totalPage + "startnum:"+ startNum + " endNum:" + endNum);
	}

	public int getStartNum() {
		startNum = (page-1)*displayRow+1;
		return startNum;
	}

	public int getEndNum() {
		endNum = page*displayRow;
		return endNum;
	}
	
}
