package com.mvc.vo;

public class Vo_ProdPaging {

	// 한 페이지 당 게시물의 수
	public static final int PAGE_SCALE = 12;
	// 화면 당 페이지의 개수
	public static final int BLOCK_SCALE = 10;

	private int currPage; // 현재 페이지
	private int prevPage; // 이전 페이지
	private int nextPage; // 다음 페이지
	private int totalPage; // 전체 페이지 개수
	private int totalBlock; // 전체 페이지 블록 개수
	private int currBlock; // 현재 페이지 블록
	private int prevBlock; // 이전 페이지 블록
	private int nextBlock; // 다음 페이지 블록

	private int pageBegin; // start
	private int pageEnd; // end

	private int blockBegin; // 현재 페이지 블록의 시작 번호
	private int blockEnd; // 현재 페이지 블록의 끝 번호

	public Vo_ProdPaging(int count, int currPage) {
		
		currBlock = 1;
		this.currPage = currPage;
		setTotalPage(count);
		setPageRange();
		setTotalBlock(count);
		setBlockRange();
	}

	public void setPageRange() {

		pageBegin = (currPage - 1) * PAGE_SCALE + 1;
		pageEnd = pageBegin + PAGE_SCALE - 1;
	}

	public void setBlockRange() {

		// 현재 페이지가 몇 번째 페이지 블록에 속하는지 계산
		currBlock = (int) Math.ceil((currPage - 1) / BLOCK_SCALE) + 1;
		blockBegin = (currBlock - 1) * BLOCK_SCALE + 1;
		blockEnd = blockBegin + BLOCK_SCALE - 1;

		if (blockEnd > totalPage) {
			blockEnd = totalPage;
			prevPage = currPage - 1;
			nextPage = currPage + 1;
		}
		if (nextPage >= totalPage) {
			nextPage = totalPage;
		}
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int count) {
		// 실수 올림 처리
		totalPage = (int) Math.ceil(count * 1.0 / PAGE_SCALE);
	}

	public int getTotalBlock() {
		return totalBlock;
	}

	public void setTotalBlock(int count) {
		totalBlock = (int) Math.ceil(count / BLOCK_SCALE);
	}

	public int getCurrBlock() {
		return currBlock;
	}

	public void setCurrBlock(int currBlock) {
		this.currBlock = currBlock;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}

	public int getNextBlock() {
		return nextBlock;
	}

	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}

	public int getPageBegin() {
		return pageBegin;
	}

	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	public int getBlockBegin() {
		return blockBegin;
	}

	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}

}
