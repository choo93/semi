package semi.login.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.vo.ConcertReserve;
import semi.dobo.model.vo.DoboReserve;
import semi.hotel.model.vo.HotelReserve;
import semi.login.model.dao.UserDao;
import semi.login.model.vo.SeoulUser;

public class UserService {

	public SeoulUser selectOne(String userId, String userPwd) {
		Connection conn = JDBCTemplate.getConnection();
		SeoulUser su = new UserDao().selectOne(conn,userId,userPwd);
		JDBCTemplate.close(conn);
		return su;
	}
	
	public SeoulUser myPage() {
		Connection conn = JDBCTemplate.getConnection();
		SeoulUser su = new UserDao().myPage(conn);
		JDBCTemplate.close(conn);
		return su;
		
	}

	public boolean changePwdCheck(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = new UserDao().changePwdCheck(conn,userId);
		JDBCTemplate.close(conn);
		return result;
	}

	public ArrayList<SeoulUser> allSelect() {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<SeoulUser> list = new UserDao().allSelect(conn);
		JDBCTemplate.close(conn);
		return list;
	}

	public int insertUser(SeoulUser su) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new UserDao().insertUser(conn,su);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public int activation(String userActive, String userId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new UserDao().activation(conn,userActive,userId);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public int updateUser(SeoulUser su) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new UserDao().updateUser(conn,su);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public boolean idCheck(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = new UserDao().idCheck(conn,userId);
		JDBCTemplate.close(conn);
		return result;
	}

	public boolean emailCheck(String userEmail) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = new UserDao().emailCheck(conn,userEmail);
		JDBCTemplate.close(conn);
		return result;
	}


	public ArrayList<ConcertReserve> loadConcertReserve(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<ConcertReserve> concertList = new UserDao().loadConcertReserve(conn,userNo);
		JDBCTemplate.close(conn);
		return concertList;
	}

	public ArrayList<DoboReserve> loadDoboReserve(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<DoboReserve> doboList = new UserDao().loadDoboReserve(conn,userNo);
		JDBCTemplate.close(conn);
		return doboList;
	}

	public ArrayList<HotelReserve> loadHotelReserve(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<HotelReserve> hotelList = new UserDao().loadHotelReserve(conn,userNo);
		JDBCTemplate.close(conn);
		return hotelList;
	}

	public SeoulUser idFind(String userName, String userEmail) {
		Connection conn = JDBCTemplate.getConnection();
		SeoulUser su = new UserDao().idFind(conn,userName,userEmail);
		JDBCTemplate.close(conn);
		return su;
	}

	public SeoulUser pwdFind(String userId, String userName, String userEmail) {
		Connection conn = JDBCTemplate.getConnection();
		SeoulUser su = new UserDao().pwdFind(conn,userId,userName,userEmail);
		JDBCTemplate.close(conn);
		return su;
	}

	public int deleteUser(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new UserDao().deleteUser(conn,userId);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

}
