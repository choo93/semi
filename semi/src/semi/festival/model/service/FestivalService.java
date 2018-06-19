package semi.festival.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.festival.model.dao.FestivalDao;
import semi.festival.model.vo.Festival;
import semi.festival.model.vo.FestivalComment;
import semi.festival.model.vo.FestivalDetail;
import semi.festival.model.vo.FestivalPageData;
import semi.place.model.dao.PlaceDao;
import semi.place.model.vo.PlacePageData;
import semi.place.model.vo.PlaceDetailData;

public class FestivalService {



	public FestivalPageData getListData(int currentPage, String search, String season) {
		Connection conn = JDBCTemplate.getConnection();
		
		
		int recordCountPerPage  = 10;  // 한페이지에 보일 개시물의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
		ArrayList<Festival> list = new FestivalDao().getListData(conn,recordCountPerPage,currentPage,search,season);
		
		System.out.println(list.isEmpty());
		String PageNavi = new FestivalDao().getPageNavi(conn,naviCountPerPage,recordCountPerPage,currentPage,search,season);
		System.out.println(PageNavi.isEmpty());
		
		
		FestivalPageData fpd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			fpd = new FestivalPageData();
			fpd.setFestivalList(list);
			fpd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return fpd;
	}


	public Festival festivalSelect(int titleNo) {
		Connection conn = JDBCTemplate.getConnection();
		Festival f = new FestivalDao().festivalSelect(conn,titleNo);
		
		JDBCTemplate.close(conn);
		return f;
	}


	public int insertComment(FestivalComment fc) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new FestivalDao().insertComment(conn,fc);
		if(result>0) 
		{
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
 		JDBCTemplate.close(conn);
		return result;
	}


	public ArrayList<FestivalComment> selectComment(int titleNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<FestivalComment> list = new FestivalDao().selectComment(conn,titleNo);
		JDBCTemplate.close(conn);
		return list;
	}
	
}
