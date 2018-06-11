package semi.hotel.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import semi.hotel.model.dao.HotelDAO;
import semi.hotel.model.vo.HotelInfo;

public class HotelService {

	public HotelInfo selectAllInfo(int indexNum) {
		Connection conn = JDBCTemplate.getConnection();
		HotelInfo hi = new HotelDAO().selectAllInfo(conn,indexNum);
		JDBCTemplate.close(conn);
		return hi;
	}

}
