package semi.concert.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import semi.concert.model.dao.ConcertDAO;
import semi.concert.model.vo.ConcertInfo;

public class ConcertService {

	public ConcertInfo selectAllInfo(int indexNo) {
		Connection conn = JDBCTemplate.getConnection();
		ConcertInfo ci = new ConcertDAO().selectAllInfo(conn,indexNo);
		JDBCTemplate.close(conn);
		
		return ci;
	}
	
}
