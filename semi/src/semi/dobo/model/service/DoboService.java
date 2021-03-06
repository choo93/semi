package semi.dobo.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.dobo.model.dao.DoboDAO;
import semi.dobo.model.vo.DoboInfo;
import semi.dobo.model.vo.DoboPageData;
import semi.dobo.model.vo.DoboReserve;
import semi.dobo.model.vo.DoboReserveResult;
import semi.enjoy.model.vo.CommentData;
import semi.enjoy.model.vo.EnjoyComment;

public class DoboService {

	public DoboInfo selectInfo(int indexNo) {
		Connection conn = JDBCTemplate.getConnection();
		DoboInfo di = new DoboDAO().selectInfo(conn, indexNo);
		JDBCTemplate.close(conn);
		
		return di;
	}

	public DoboPageData getDoboList(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 8;
		int naviCountPerPage = 5;
		
		ArrayList<DoboInfo> list = new DoboDAO().selectAllDobo(conn,currentPage,recordCountPerPage);
		String pageNavi = new DoboDAO().getDoboNavi(conn, currentPage, recordCountPerPage, naviCountPerPage);
		
		DoboPageData dpd = new DoboPageData();
		dpd.setDoboList(list);
		dpd.setPageNavi(pageNavi);
		
		JDBCTemplate.close(conn);
		
		return dpd;
	}

	public DoboReserveResult addReserve(DoboReserve dr) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new DoboDAO().addReserve(conn,dr);
		
		DoboReserveResult rr = new DoboReserveResult();
		
		rr.setResult(result);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
			int noUserReserveNo = new DoboDAO().loadLatestReserveNo(conn);
			rr.setNoUserReserveNo(noUserReserveNo);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return rr;
	}

	public CommentData getListCommentData(int currentPage, int indexNo) {
		Connection conn = JDBCTemplate.getConnection();		
		int recordCountPerPage  = 5;  // 한페이지에 보일 댓글의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
		
		ArrayList<EnjoyComment> list = new DoboDAO().getListCommentData(conn,recordCountPerPage,currentPage,indexNo);
		
		String PageNavi = new DoboDAO().getPageNaviComment(conn,naviCountPerPage,recordCountPerPage,currentPage,indexNo);
		
		
		
		CommentData cd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			cd = new CommentData();
			cd.setCommentList(list);
			cd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return cd;
	}

	public DoboReserve selectNoUserReserve(int reserveNo) {
		Connection conn = JDBCTemplate.getConnection();
		DoboReserve dr = new DoboDAO().selectNoUserReserve(conn,reserveNo);
		JDBCTemplate.close(conn);
		return dr;
	}

	/*public int loadLatestReserveNo() {
		Connection conn = JDBCTemplate.getConnection();
		int noUserReserveNo = new DoboDAO().loadLatestReserveNo(conn);
		JDBCTemplate.close(conn);
		return noUserReserveNo;
	}*/

}
