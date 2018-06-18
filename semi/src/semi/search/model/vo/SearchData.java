package semi.search.model.vo;

import java.util.ArrayList;

public class SearchData {
	private ArrayList<MainSearch> searchList;
	private String pageNavi;
	
	public SearchData() {}

	public SearchData(ArrayList<MainSearch> searchList, String pageNavi) {
		this.searchList = searchList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<MainSearch> getSearchList() {
		return searchList;
	}

	public void setSearchList(ArrayList<MainSearch> searchList) {
		this.searchList = searchList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
}
