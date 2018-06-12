package semi.hotel.model.vo;

import java.util.ArrayList;

public class HotelPageData {
	private ArrayList<HotelListData> HotelList;
	private String pageNavi;
	
	public HotelPageData() {}
	
	public HotelPageData(ArrayList<HotelListData> hotelList, String pageNavi) {
		this.HotelList = hotelList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<HotelListData> getHotelList() {
		return HotelList;
	}

	public void setHotelList(ArrayList<HotelListData> hotelList) {
		HotelList = hotelList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	
	
}
