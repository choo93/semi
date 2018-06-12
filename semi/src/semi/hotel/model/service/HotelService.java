package semi.hotel.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;

import semi.hotel.model.dao.HotelDAO;
import semi.hotel.model.vo.HotelInfo;
import semi.hotel.model.vo.HotelListData;
import semi.hotel.model.vo.HotelPageData;

public class HotelService {

	public HotelInfo selectAllInfo(int indexNum) {
		Connection conn = JDBCTemplate.getConnection();
		HotelInfo hi = new HotelDAO().selectAllInfo(conn,indexNum);
		JDBCTemplate.close(conn);
		return hi;
	}

	public HotelPageData getHotelList(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 10;
		int naviCountPerPage = 5;
		
		ArrayList<HotelListData> list = new HotelDAO().selectAllHotel(conn,currentPage,recordCountPerPage);
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

}
