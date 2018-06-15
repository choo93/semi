package ddelete;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.vo.ConcertReserve;
import semi.dobo.model.vo.DoboReserve;
import semi.hotel.model.vo.HotelReserve;

public class LoginService {

	public ArrayList<ConcertReserve> loadConcertReserve(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<ConcertReserve> concertList = new LoginDAO().loadConcertReserve(conn,userNo);
		JDBCTemplate.close(conn);
		return concertList;
	}

	public ArrayList<DoboReserve> loadDoboReserve(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<DoboReserve> doboList = new LoginDAO().loadDoboReserve(conn,userNo);
		JDBCTemplate.close(conn);
		return doboList;
	}

	public ArrayList<HotelReserve> loadHotelReserve(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<HotelReserve> hotelList = new LoginDAO().loadHotelReserve(conn,userNo);
		JDBCTemplate.close(conn);
		return hotelList;
	}

}
