package semi.dobo.model.vo;

import java.util.ArrayList;

public class DoboPageData {
	private ArrayList<DoboInfo> doboList;
	private String pageNavi;
	
	public DoboPageData() {}
	
	public ArrayList<DoboInfo> getDoboList() {
		return doboList;
	}
	public void setDoboList(ArrayList<DoboInfo> doboList) {
		this.doboList = doboList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	@Override
	public String toString() {
		return "doboList=" + doboList + ", pageNavi=" + pageNavi;
	}
	
	
}
