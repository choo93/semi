package semi.concert.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import semi.concert.model.vo.ConcertInfo;

public class ConcertDAO {

	public ConcertInfo selectAllInfo(Connection conn, int indexNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query="select * from concertInfo where SEQ_Index_TitleNo = ?";
		ConcertInfo ci = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ci = new ConcertInfo();
				ci.setIndexNo(rset.getInt(1));
				ci.setConcertCode(rset.getString(2));
				ci.setConcertTitle(rset.getString(3));
				ci.setConcertSummary(rset.getString(4));
				ci.setConcertPhoto(rset.getString(5));
				ci.setConcertDate(rset.getString(6));
				ci.setConcertGanre(rset.getString(7));
				ci.setConcertAddress(rset.getString(8));
				ci.setConcertAge(rset.getString(9));
				ci.setConcertPrice(rset.getInt(10));
				ci.setConcertExplain(rset.getString(11));
				ci.setConcertPhone(rset.getString(12));
				ci.setConcertSite(rset.getString(13));
				ci.setConcertTraffic(rset.getString(14));
				ci.setConcertLatitude(rset.getInt(15));
				ci.setConcertLongtitude(rset.getInt(16));
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return ci;
	}

}
