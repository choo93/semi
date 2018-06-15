package semi.festival.model.vo;

import java.util.ArrayList;



public class FestivalPageData {
	private ArrayList<Festival> festivalList;
	private String pageNavi;
	public FestivalPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FestivalPageData(ArrayList<Festival> festivalList, String pageNavi) {
		super();
		this.festivalList = festivalList;
		this.pageNavi = pageNavi;
	}
	public ArrayList<Festival> getFestivalList() {
		return festivalList;
	}
	public void setFestivalList(ArrayList<Festival> festivalList) {
		this.festivalList = festivalList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	
	
	
	
}
