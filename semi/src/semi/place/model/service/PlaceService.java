package semi.place.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.place.model.dao.PlaceDao;
import semi.place.model.vo.PlacePageData;
import semi.place.model.vo.PlaceRank;
import semi.place.model.vo.PlaceRankComment;

public class PlaceService {
	public PlacePageData getListData(int currentPage, String search, int type) {
		Connection conn = JDBCTemplate.getConnection();
		
		
		int recordCountPerPage  = 10;  // 한페이지에 보일 개시물의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
		ArrayList<PlaceRank> list = new PlaceDao().getListData(conn,recordCountPerPage,currentPage,search,type);
		
		
		String PageNavi = new PlaceDao().getPageNavi(conn,naviCountPerPage,recordCountPerPage,currentPage,search,type);
		System.out.println(type);
		System.out.println(list.isEmpty());
		System.out.println(PageNavi.isEmpty());
		
		PlacePageData ppd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			ppd = new PlacePageData();
			ppd.setPlaceList(list);
			ppd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return ppd;
	}

	public PlaceRank placeSelect(int titleNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		PlaceRank pr = new PlaceDao().placeSelect(conn,titleNo);
		
		JDBCTemplate.close(conn);
		return pr;
	}

	public ArrayList<PlaceRankComment> selectComment(int titleNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<PlaceRankComment> list = new PlaceDao().selectComment(conn,titleNo);
		System.out.println(list.isEmpty());
		JDBCTemplate.close(conn);
		return list;
	}
	
}
