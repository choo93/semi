package semi.login.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.vo.ConcertReserve;
import semi.dobo.model.vo.DoboReserve;
import semi.hotel.model.vo.HotelReserve;
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
			System.out.println("1. "+query);
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

	public ArrayList<SeoulUser> allSelect(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		String query = "select * from seoul_user";
		ArrayList<SeoulUser> list = new ArrayList<SeoulUser>();
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			while(rset.next()) {
				SeoulUser su = new SeoulUser();
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
				list.add(su);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		return list;
	}

	public int deleteUser(Connection conn, String userId, String userPwd) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "delete from seoul_user where user_id=? and user_pwd=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int insertUser(Connection conn, SeoulUser su) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into seoul_user values(sequence_user.nextval,?,?,?,?,?,?,sysdate,'Y',sysdate)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, su.getUserId());
			pstmt.setString(2, su.getUserPwd());
			pstmt.setString(3, su.getUserName());
			pstmt.setString(4, su.getUserEmail());
			pstmt.setString(5, su.getUserPhone());
			pstmt.setString(6, su.getUserAddr());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int activation(Connection conn, String userActive, String userId) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "update seoul_user set user_active = ? where user_id = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userActive);
			pstmt.setString(2, userId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int updateUser(Connection conn, SeoulUser su) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		boolean changePwd = false;
		String query = "select user_pwd from seoul_user where user_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, su.getUserId());
			rset = pstmt.executeQuery();
			if(rset.next()) {
				if(!(su.getUserPwd().equals(rset.getString("user_pwd")))) {
					changePwd = true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		query = null;
		if(changePwd==true) {
			query = "update seoul_user set user_pwd=?, user_email=?, user_phone=?, user_addr=?, user_modified=sysdate where user_id=?";
		}else {
			query = "update seoul_user set user_pwd=?, user_email=?, user_phone=?, user_addr=? where user_id=?";
		}
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, su.getUserPwd());
			pstmt.setString(2, su.getUserEmail());
			pstmt.setString(3, su.getUserPhone());
			pstmt.setString(4, su.getUserAddr());
			pstmt.setString(5, su.getUserId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public boolean idCheck(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select * from seoul_user where user_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public boolean emailCheck(Connection conn, String userEmail) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select * from seoul_user where user_email=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userEmail);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}


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

