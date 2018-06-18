package semi.search.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.search.model.vo.MainSearch;

public class MainSearchDao {

	public ArrayList<MainSearch> getCurrentPage(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int start = currentPage*recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage*recordCountPerPage;
		
		String query = "select * from (select seoul_search.*, row_number() over(order by search_no desc) as num from seoul_search) where num between ? and ?";
		ArrayList<MainSearch> list = new ArrayList<MainSearch>();
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				MainSearch ms = new MainSearch();
				ms.setSearchNo(rset.getInt("search_no"));
				ms.setSearchImg(rset.getString("search_img"));
				ms.setSearchTitle(rset.getString("search_title"));
				ms.setSearchDesc(rset.getString("search_desc"));
				ms.setSearchDate(rset.getDate("search_date"));
				list.add(ms);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	public String getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		int recordTotalCount = 0;
		String query = "select count(*) as totalCount from seoul_search";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			rset.next();
			recordTotalCount = rset.getInt("totalCount");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		int pageTotalCount = 0;
		
		if(recordTotalCount%recordCountPerPage!=0) {
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		}else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		if(currentPage<1) {
			currentPage=1;
		}else if(currentPage>pageTotalCount) {
			currentPage = pageTotalCount;
		}
		
		int startNavi = ((currentPage-1)/naviCountPerPage)*naviCountPerPage+1;
		int endNavi = startNavi + naviCountPerPage - 1;
		
		if(endNavi>pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi==1) {
			needPrev = false;
		}
		if(endNavi==pageTotalCount) {
			needNext = false;
		}
		
		StringBuilder sb = new StringBuilder();
		
		if(needPrev) {
			sb.append("<a href='/mainSearch?currentPage="+(startNavi-1)+"'> < </a>");
		}
		for(int i=startNavi; i<=endNavi; i++) {
			if(i==currentPage) {
				sb.append("<a href='/mainSearch?currentPage="+i+"'><b> "+i+" </b></a>");
			}else {
				sb.append("<a href='/mainSearch?currentPage="+i+"'> "+i+" </a>");
			}
		}
		if(needNext) {
			sb.append("<a href='/mainSearch?currentPage="+(endNavi+1)+"'> > </a>");
		}
		
		return sb.toString();
	}

}
