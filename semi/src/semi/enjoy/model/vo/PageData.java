package semi.enjoy.model.vo;

import java.util.ArrayList;

public class PageData {

	private ArrayList<EnjoyListData> EnjoyList;
	private String pageNavi;
	public ArrayList<EnjoyListData> getEnjoyList() {
		return EnjoyList;
	}
	public void setEnjoyList(ArrayList<EnjoyListData> enjoyList) {
		EnjoyList = enjoyList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	public PageData() {
		
		// TODO Auto-generated constructor stub
	}
	public PageData(ArrayList<EnjoyListData> enjoyList, String pageNavi) {
		super();
		EnjoyList = enjoyList;
		this.pageNavi = pageNavi;
	}
	
	
	
}
