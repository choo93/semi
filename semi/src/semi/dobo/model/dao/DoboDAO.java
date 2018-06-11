package semi.dobo.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import semi.dobo.model.vo.DoboInfo;

public class DoboDAO {

	public DoboInfo selectInfo(Connection conn, int indexNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		DoboInfo di = null;
		
		String query = "select * from doboInfo where indexNum = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				di = new DoboInfo();
				di.setIndenxNum(rset.getInt(1));
				di.setDoboCode(rset.getString(2));
				di.setDoboTitle(rset.getString(3));
				di.setDoboMainPhoto(rset.getString(4));
				di.setDoboSummary(rset.getString(5));
				di.setDoboMainExplain(rset.getString(6));
				di.setDoboCourse(rset.getString(7));
				di.setDoboTime(rset.getString(8));
				di.setDoboMeet(rset.getString(9));
				di.setDoboSubTitle1(rset.getString(10));
				di.setDoboSubPhoto1(rset.getString(11));
				di.setDoboSubExplain1(rset.getString(12));
				di.setDoboSubTitle2(rset.getString(13));
				di.setDoboSubPhoto2(rset.getString(14));
				di.setDoboSubExplain2(rset.getString(15));
				di.setDoboSubTitle3(rset.getString(16));
				di.setDoboSubPhoto3(rset.getString(17));
				di.setDoboSubExplain3(rset.getString(18));
				di.setDoboSubTitle4(rset.getString(19));
				di.setDoboSubPhoto4(rset.getString(20));
				di.setDoboSubExplain4(rset.getString(21));
				di.setDoboAddition(rset.getString(22));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return di;
	}

}
