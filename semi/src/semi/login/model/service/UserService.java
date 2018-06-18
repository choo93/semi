package semi.login.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.login.model.dao.UserDao;
import semi.login.model.vo.SeoulUser;

public class UserService {

	public SeoulUser selectOne(String userId, String userPwd) {
		Connection conn = JDBCTemplate.getConnection();
		SeoulUser su = new UserDao().selectOne(conn,userId,userPwd);
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

	public int deleteUser(String userId, String userPwd) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new UserDao().deleteUser(conn,userId,userPwd);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
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

}
