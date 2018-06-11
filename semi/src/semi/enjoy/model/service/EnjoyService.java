package semi.enjoy.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.enjoy.model.dao.Enjoydao;
import semi.enjoy.model.vo.EnjoyListData;
import semi.enjoy.model.vo.PageData;

public class EnjoyService {

	public ArrayList<EnjoyListData> getAllData() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<EnjoyListData> list = new Enjoydao().getAllData(conn);
		
		JDBCTemplate.close(conn);
		
		
		
		return list;
	}

	public PageData getListData(int currentPage, String search) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		
		int recordCountPerPage  = 10;  // 한페이지에 보일 개시물의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
//		ArrayList<EnjoyListData> list = new Enjoydao().getAllData(conn);
		ArrayList<EnjoyListData> list = new Enjoydao().getListData(conn,recordCountPerPage,currentPage,search);
		
		String PageNavi = new Enjoydao().getPageNavi(conn,naviCountPerPage,recordCountPerPage,currentPage,search);
		
		
		
		PageData pd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			pd = new PageData();
			pd.setEnjoyList(list);
			pd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return pd;
	}
}
