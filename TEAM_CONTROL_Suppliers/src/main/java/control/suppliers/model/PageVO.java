package control.suppliers.model;

public class PageVO {
	
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private CriteriaVO cri;
	private int total;
	
	public PageVO(CriteriaVO cri, int total) {
		this.cri = cri;
		this.total = total;
		
		//끝 번호 식 : 현재 페이지 / 10(올림) * 10
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10;
		
		// 시작번호 식 : 끝 번호 - 9
		this.startPage = this.endPage - 9;
		
		// 제일 마지막 페이지 번호는 전체 건수를 고려해야한다.
		// 제일 마짐가 끝 번호 식 : 전체 건수(올림) / 페이지당 게시물 갯수
		//		123 * 1.0 = 123.0(올림) / 10 ==> 130/10 = 13
		int realEnd = (int)(Math.ceil((total * 1.0)/cri.getAmount()));
		
		// 13(real End) < 20(endPage) 면
		// realEnd가 적용되게 함.
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		// startPage가 1보다 크면 이전 버튼 활성화
		this.prev = this.startPage > 1;
		
		// endPage가 realEnd 보다 작으면
		this.next = this.endPage < realEnd;
		
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

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public CriteriaVO getCri() {
		return cri;
	}

	public void setCri(CriteriaVO cri) {
		this.cri = cri;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
	@Override
	public String toString() {
		return "PageVO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", cri=" + cri + ", total=" + total + "]";
	}

}
