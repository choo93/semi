package semi.travelready.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.JDBCTemplate;
import semi.travelready.model.vo.GuideBookRequest;

public class GuideBookRequestDao {

	public int infoInsert(Connection conn, GuideBookRequest gbr) {
		PreparedStatement pstmt=null;
		int result=0;
		
		String query="insert into GuideBookRequest values(GuideBookRequest_SEQ.nextval,?,?,?,?,?,?,sysdate,'배송전')";
		
		try {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1, gbr.getName());
			pstmt.setString(2, gbr.getEmail());
			pstmt.setString(3, gbr.getPhone());
			pstmt.setString(4, gbr.getAddr());
			pstmt.setInt(5, gbr.getGuideBookNum());
			pstmt.setInt(6, gbr.getMapNum());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
		
	}

}
