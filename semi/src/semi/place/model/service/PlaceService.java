package semi.place.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.place.model.dao.PlaceDao;
import semi.place.model.vo.PageData;
import semi.place.model.vo.PlaceDetailData;
import semi.place.model.vo.RankListData;

public class PlaceService {



	public PageData getListData(int currentPage, String search, String type) {
		Connection conn = JDBCTemplate.getConnection();
		
		
		int recordCountPerPage  = 10;  // 한페이지에 보일 개시물의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
		ArrayList<RankListData> list = new PlaceDao().getListData(conn,recordCountPerPage,currentPage,search,type);
		
		
		String PageNavi = new PlaceDao().getPageNavi(conn,naviCountPerPage,recordCountPerPage,currentPage,search,type);
		
		
		
		PageData pd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			pd = new PageData();
			pd.setPlaceList(list);
			pd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return pd;
	}

	public PlaceDetailData placeSelect(int titleNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		PlaceDetailData pdd = new PlaceDao().placeSelect(conn,titleNo);
		
		return null;
	}
	
}
