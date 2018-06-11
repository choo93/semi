package semi.travelready.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

	public ArrayList<GuideBookRequest> RequestList(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		GuideBookRequest gbr=null;
		ArrayList<GuideBookRequest> list=new ArrayList<GuideBookRequest>();
		
		String query="select * from GuideBookRequest";
		
		try {
			pstmt=conn.prepareStatement(query);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				gbr=new GuideBookRequest();
				
				gbr.setOrderNo(rset.getInt("orderno"));
				gbr.setName(rset.getString("name"));
				gbr.setEmail(rset.getString("email"));
				gbr.setPhone(rset.getString("phone"));
				gbr.setAddr(rset.getString("address"));
				gbr.setGuideBookNum(rset.getInt("guidebooknum"));
				gbr.setMapNum(rset.getInt("mapnum"));
				gbr.setOrderDate(rset.getDate("orderdate"));
				gbr.setDeliveryCheck(rset.getString("deliverycheck"));
				list.add(gbr);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
		
		
	}

	public int deliveryCheck(Connection conn, String deliveryCheck, int orderNo) {
		PreparedStatement pstmt=null;
		int result=0;
		
		String query="update GuideBookRequest set deliverycheck=? where orderNo=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, deliveryCheck);
			pstmt.setInt(2, orderNo);
			
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
