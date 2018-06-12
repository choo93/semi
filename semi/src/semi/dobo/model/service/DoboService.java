package semi.dobo.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.dobo.model.dao.DoboDAO;
import semi.dobo.model.vo.DoboInfo;
import semi.dobo.model.vo.DoboPageData;

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

}
