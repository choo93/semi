package semi.concert.model.vo;

import java.util.ArrayList;

public class ConcertPageData {
	private ArrayList<ConcertInfo> concertList;
	private String pageNavi;
	
	
	
	public ConcertPageData() {}
	public ArrayList<ConcertInfo> getConcertList() {
		return concertList;
	}
	public void setConcertList(ArrayList<ConcertInfo> concertList) {
		this.concertList = concertList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	@Override
	public String toString() {
		return "concertList=" + concertList + ", pageNavi=" + pageNavi;
	}
	
	
}
