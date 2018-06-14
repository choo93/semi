package semi.hotel.model.vo;

import java.util.ArrayList;

public class HotelPageData {
	private ArrayList<HotelInfo> hotelList;
	private String pageNavi;
	
	public HotelPageData() {}
	
	public HotelPageData(ArrayList<HotelInfo> hotelList, String pageNavi) {
		this.hotelList = hotelList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<HotelInfo> getHotelList() {
		return hotelList;
	}

	public void setHotelList(ArrayList<HotelInfo> hotelList) {
		this.hotelList = hotelList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	
	
}
