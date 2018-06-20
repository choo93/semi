package ddelete;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.vo.ConcertReserve;
import semi.dobo.model.vo.DoboReserve;
import semi.hotel.model.vo.HotelReserve;

public class LoginDAO {

	public ArrayList<ConcertReserve> loadConcertReserve(Connection conn,int userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select ci.concertTiltle, cr.concertreserveDate, cr.concertreserveTime, cr.seatNo, ci.concertPrice, ci.concertAddress from " + 
				"concertInfo ci, concertReserve cr where ci.concertCode = cr.concertCode and cr.userNo = ?";
		ArrayList<ConcertReserve> list = new ArrayList<ConcertReserve>();
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ConcertReserve cr = new ConcertReserve();
				
				cr.setConcertTitle(rset.getString(1));
				cr.setConcertReserveDate(rset.getString(2));
				cr.setConcertReserveTime(rset.getString(3));
				cr.setSeatNo(rset.getInt(4));
				cr.setConcertPrice(rset.getString(5));
				cr.setConcertAddress(rset.getString(6));
				
				list.add(cr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public ArrayList<DoboReserve> loadDoboReserve(Connection conn,int userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select di.doboTitle, dr.doboreserveDate, dr.doboreserveTime, di.doboMeet from doboInfo di, doboReserve dr where dr.doboCode = "
				+ "di.doboCode and dr.userNo = ?";
		ArrayList<DoboReserve> list = new ArrayList<DoboReserve>();
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DoboReserve dr = new DoboReserve();
				
				dr.setDoboTitle(rset.getString(1));
				dr.setDate(rset.getString(2));
				dr.setTime(rset.getString(3));
				dr.setDoboMeet(rset.getString(4));
				
				list.add(dr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public ArrayList<HotelReserve> loadHotelReserve(Connection conn,int userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select hi.hotelName, hr.hotelreserveDate, hr.hotelroomNo, hi.hotelAddress from hotelReserve hr, hotelInfo hi where hr.hotelCode = " + 
				"hi.hotelCode and hr.user_no = ?";
		ArrayList<HotelReserve> list = new ArrayList<HotelReserve>();
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				HotelReserve hr = new HotelReserve();
				
				hr.setHotelName(rset.getString(1));
				hr.setReserveDate(rset.getString(2));
				hr.setRoomNo(rset.getInt(3));
				hr.setAddress(rset.getString(4));
				
				list.add(hr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	

}
