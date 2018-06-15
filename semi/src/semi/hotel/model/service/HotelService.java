package semi.hotel.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;

import semi.hotel.model.dao.HotelDAO;
import semi.hotel.model.vo.HotelInfo;
import semi.hotel.model.vo.HotelListData;
import semi.hotel.model.vo.HotelPageData;
import semi.hotel.model.vo.HotelRoomInfo;

public class HotelService {

	public HotelInfo selectAllInfo(int indexNum) {
		Connection conn = JDBCTemplate.getConnection();
		HotelInfo hi = new HotelDAO().selectAllInfo(conn,indexNum);
		JDBCTemplate.close(conn);
		return hi;
	}

	public HotelPageData getHotelInfo(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 10;
		int naviCountPerPage = 5;
		
		ArrayList<HotelInfo> list = new HotelDAO().selectAllHotel(conn,currentPage,recordCountPerPage);
		String pageNavi = new HotelDAO().getHotelPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage);
		HotelPageData hpd = null;
		if(!list.isEmpty() &&!pageNavi.isEmpty()) {
		hpd = new HotelPageData();
		hpd.setHotelList(list);
		hpd.setPageNavi(pageNavi);
		}
		
		JDBCTemplate.close(conn);
		
		return hpd;
	}

	public HotelRoomInfo hotelRoomInfo() {
		Connection conn = JDBCTemplate.getConnection();
		HotelRoomInfo hr = new HotelDAO().hotelRoomInfo(conn);
		JDBCTemplate.close(conn);
		
		return hr;
	}

	

	

}
