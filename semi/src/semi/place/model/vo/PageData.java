package semi.place.model.vo;

import java.util.ArrayList;



public class PageData {
	private ArrayList<RankListData> placeList;
	private String pageNavi;
	
	public PageData() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PageData(ArrayList<RankListData> placeList, String pageNavi) {
		super();
		this.placeList = placeList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<RankListData> getPlaceList() {
		return placeList;
	}

	public void setPlaceList(ArrayList<RankListData> placeList) {
		this.placeList = placeList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

	
}
