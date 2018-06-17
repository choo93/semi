package semi.concert.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.dao.ConcertDAO;
import semi.concert.model.vo.ConcertInfo;
import semi.concert.model.vo.ConcertPageData;
import semi.concert.model.vo.ConcertReserve;
import semi.enjoy.model.dao.Enjoydao;
import semi.enjoy.model.vo.CommentData;
import semi.enjoy.model.vo.EnjoyComment;

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

	public CommentData getListCommentData(int currentPage, String search, int indexNo) {
		Connection conn = JDBCTemplate.getConnection();		
		int recordCountPerPage  = 5;  // 한페이지에 보일 댓글의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
		
		ArrayList<EnjoyComment> list = new ConcertDAO().getListCommentData(conn,recordCountPerPage,currentPage,search,indexNo);
		
		String PageNavi = new ConcertDAO().getPageNaviComment(conn,naviCountPerPage,recordCountPerPage,currentPage,search,indexNo);
		
		
		
		CommentData cd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			cd = new CommentData();
			cd.setCommentList(list);
			cd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return cd;
	}
	
}
