package semi.search.model.vo;

import java.sql.Date;

public class MainSearch {
	private int searchNo;
	private String searchImg;
	private String searchTitle;
	private String searchDesc;
	private Date searchDate;
	
	public MainSearch() {}

	public MainSearch(int searchNo, String searchImg, String searchTitle, String searchDesc, Date searchDate) {
		this.searchNo = searchNo;
		this.searchImg = searchImg;
		this.searchTitle = searchTitle;
		this.searchDesc = searchDesc;
		this.searchDate = searchDate;
	}

	public int getSearchNo() {
		return searchNo;
	}

	public void setSearchNo(int searchNo) {
		this.searchNo = searchNo;
	}

	public String getSearchImg() {
		return searchImg;
	}

	public void setSearchImg(String searchImg) {
		this.searchImg = searchImg;
	}

	public String getSearchTitle() {
		return searchTitle;
	}

	public void setSearchTitle(String searchTitle) {
		this.searchTitle = searchTitle;
	}

	public String getSearchDesc() {
		return searchDesc;
	}

	public void setSearchDesc(String searchDesc) {
		this.searchDesc = searchDesc;
	}

	public Date getSearchDate() {
		return searchDate;
	}

	public void setSearchDate(Date searchDate) {
		this.searchDate = searchDate;
	}
	
	
	
	
}
