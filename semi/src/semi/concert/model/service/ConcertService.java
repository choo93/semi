package semi.concert.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.dao.ConcertDAO;
import semi.concert.model.vo.ConcertInfo;
import semi.concert.model.vo.ConcertPageData;
import semi.concert.model.vo.ConcertReserve;

public class ConcertService {

	public ConcertInfo selectAllInfo(int indexNo) {
		Connection conn = JDBCTemplate.getConnection();
		ConcertInfo ci = new ConcertDAO().selectConcert(conn,indexNo);
		JDBCTemplate.close(conn);
		
		return ci;
	}

	public ConcertPageData getConcertList(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 8;
		int naviCountPerPage = 5;
		
		ArrayList<ConcertInfo> list = new ConcertDAO().selectAllConcert(conn,currentPage,recordCountPerPage);
		String pageNavi = new ConcertDAO().getConcertPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage);
		
		ConcertPageData cpd = new ConcertPageData();
		cpd.setConcertList(list);
		cpd.setPageNavi(pageNavi);
		
		JDBCTemplate.close(conn);
		
		return cpd;
	}


	public int addReserve(ConcertReserve cr) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new ConcertDAO().addReserve(conn, cr);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	public ArrayList<String> loadSeat(ConcertReserve cr) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<String> list = new ConcertDAO().loadSeat(conn,cr);
		JDBCTemplate.close(conn);
		return list;
	}
	
}
