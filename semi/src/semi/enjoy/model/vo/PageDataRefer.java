package semi.enjoy.model.vo;

import java.util.ArrayList;

public class PageDataRefer {

	
	private ArrayList<EnjoyInforData> EnjoyInforData;
	private String pageNavi;
	public ArrayList<EnjoyInforData> getEnjoyInforData() {
		return EnjoyInforData;
	}
	public void setEnjoyInforData(ArrayList<EnjoyInforData> enjoyInforData) {
		EnjoyInforData = enjoyInforData;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	public PageDataRefer(ArrayList<semi.enjoy.model.vo.EnjoyInforData> enjoyInforData, String pageNavi) {
		super();
		EnjoyInforData = enjoyInforData;
		this.pageNavi = pageNavi;
	}
	public PageDataRefer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
