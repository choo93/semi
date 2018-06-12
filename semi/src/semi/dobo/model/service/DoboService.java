package semi.dobo.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.dobo.model.dao.DoboDAO;
import semi.dobo.model.vo.DoboInfo;
import semi.dobo.model.vo.DoboPageData;
import semi.dobo.model.vo.DoboReserve;

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

	public int addReserve(DoboReserve dr) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new DoboDAO().addReserve(conn,dr);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

}
