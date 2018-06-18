package semi.search.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.search.model.dao.MainSearchDao;
import semi.search.model.vo.MainSearch;
import semi.search.model.vo.SearchData;

public class MainSearchService {

	public SearchData searchAll(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		
		int recordCountPerPage = 10;
		int naviCountPerPage = 5;
		
		ArrayList<MainSearch> list = new MainSearchDao().getCurrentPage(conn,currentPage,recordCountPerPage);
		String pageNavi = new MainSearchDao().getPageNavi(conn,currentPage,recordCountPerPage,naviCountPerPage);
		
		SearchData sd = null;
		if(!list.isEmpty() && !pageNavi.isEmpty()) {
			sd = new SearchData();
			sd.setSearchList(list);
			sd.setPageNavi(pageNavi);
		}
		JDBCTemplate.close(conn);
		return sd;
	}

}
