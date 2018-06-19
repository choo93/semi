package semi.place.model.vo;

import java.util.ArrayList;



public class PlacePageData {
	private ArrayList<PlaceRank> placeList;
	private String pageNavi;
	
	public PlacePageData() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PlacePageData(ArrayList<PlaceRank> placeList, String pageNavi) {
		super();
		this.placeList = placeList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<PlaceRank> getPlaceList() {
		return placeList;
	}

	public void setPlaceList(ArrayList<PlaceRank> placeList) {
		this.placeList = placeList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

	
}
