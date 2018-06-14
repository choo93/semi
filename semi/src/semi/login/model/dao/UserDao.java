package semi.login.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import semi.login.model.vo.SeoulUser;

public class UserDao {

	public SeoulUser selectOne(Connection conn, String userId, String userPwd) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from seoul_user where user_id=? and user_pwd=?";
		SeoulUser su = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			rset = pstmt.executeQuery();
			if(rset.next())
			{
				su = new SeoulUser();
				su.setUserNo(rset.getInt("user_no"));
				su.setUserId(rset.getString("user_id"));
				su.setUserPwd(rset.getString("user_pwd"));
				su.setUserName(rset.getString("user_name"));
				su.setUserEmail(rset.getString("user_email"));
				su.setUserPhone(rset.getString("user_phone"));
				su.setUserAddr(rset.getString("user_addr"));
				su.setUserJoindate(rset.getDate("user_joindate"));
				su.setUserActive(rset.getString("user_active"));
				su.setUserModified(rset.getDate("user_modified"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return su;
	}

	public boolean changePwdCheck(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select floor(sysdate-user_modified) as change_date from seoul_user where userid=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				if(rset.getInt("change_date")>=90) {
					result = true;
				}else {
					result = false;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

}
