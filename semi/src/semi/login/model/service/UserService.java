package semi.login.model.service;

import java.sql.Connection;

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

}
