package semi.concert.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.vo.ConcertInfo;
import semi.concert.model.vo.ConcertReserve;

public class ConcertDAO {

	public ConcertInfo selectConcert(Connection conn, int indexNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query="select * from concertInfo where SEQ_Index_TitleNo = ?";
		ConcertInfo ci = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ci = new ConcertInfo();
				ci.setIndexNo(rset.getInt(1));
				ci.setConcertCode(rset.getString(2));
				ci.setConcertTitle(rset.getString(3));
				ci.setConcertSummary(rset.getString(4));
				ci.setConcertPhoto(rset.getString(5));
				ci.setConcertDate(rset.getString(6));
				ci.setConcertGanre(rset.getString(7));
				ci.setConcertAddress(rset.getString(8));
				ci.setConcertAge(rset.getString(9));
				ci.setConcertShowTime(rset.getString(10));
				ci.setConcertPrice(rset.getInt(11));
				ci.setConcertExplain(rset.getString(12));
				ci.setConcertPhone(rset.getString(13));
				ci.setConcertSite(rset.getString(14));
				ci.setConcertTraffic(rset.getString(15));
				ci.setConcertLatitude(rset.getDouble(16));
				ci.setConcertLongtitude(rset.getDouble(17));
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return ci;
	}

	public ArrayList<ConcertInfo> selectAllConcert(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from (select concertInfo.*, row_number() over(order by SEQ_Index_TitleNo desc) as num from concertInfo) where num between ? and ?";
		
		ArrayList<ConcertInfo> list = new ArrayList<ConcertInfo>();
		
		int start = (currentPage-1)*recordCountPerPage+1;
		int end = currentPage*recordCountPerPage;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ConcertInfo ci = new ConcertInfo();
				
				ci.setIndexNo(rset.getInt(1));
				ci.setConcertCode(rset.getString(2));
				ci.setConcertTitle(rset.getString(3));
				ci.setConcertSummary(rset.getString(4));
				ci.setConcertPhoto(rset.getString(5));
				ci.setConcertDate(rset.getString(6));
				ci.setConcertGanre(rset.getString(7));
				ci.setConcertAddress(rset.getString(8));
				ci.setConcertAge(rset.getString(9));
				ci.setConcertShowTime(rset.getString(10));
				ci.setConcertPrice(rset.getInt(11));
				ci.setConcertExplain(rset.getString(12));
				ci.setConcertPhone(rset.getString(13));
				ci.setConcertSite(rset.getString(14));
				ci.setConcertTraffic(rset.getString(15));
				ci.setConcertLatitude(rset.getDouble(16));
				ci.setConcertLongtitude(rset.getDouble(17));
				
				list.add(ci);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public String getConcertPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select count(*) as totalCount from concertInfo";
		
		int recordTotalCount = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				recordTotalCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		int pageTotalCount = 0;	
		if(recordTotalCount%recordCountPerPage != 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		}else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		if(currentPage<1) {
			currentPage=1;
		}else if(currentPage>pageTotalCount) {
			currentPage = pageTotalCount;
		}
		
		int startNavi = (((currentPage-1)/naviCountPerPage)*naviCountPerPage + 1);
		
		
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
		
		if(needPrev) {	// 시작이 1페이지가 아니라면!
			sb.append("<a href='/concertList?currentPage=" + (startNavi-1) + "'> < </a>");
		}
		for(int i=startNavi;i<=endNavi;i++) {
			if(i==currentPage) {
				sb.append("<a href='/concertList?currentPage=" + i + "'><B> " + i + " </B></a>");
			}else {
				sb.append("<a href='/concertList?currentPage=" + i + "'> " + i + " </a>");
			}
		}
		if(needNext) {	// 끝페이지가 아니라면!
			sb.append("<a href='/concertList?currentPage=" + (endNavi+1) + "'> > </a>");
		}
		
		return sb.toString();
		
		
	}


	public int addReserve(Connection conn, ConcertReserve cr) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into CONCERTRESERVE values (CONCERTRESERVE_SEQ.NEXTVAL,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cr.getConcertCode());
			pstmt.setInt(2, cr.getConcertPrice());
			pstmt.setString(3, cr.getConcertReserveDate());
			pstmt.setString(4, cr.getConcertReserveTime());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
		
		
	}

}
