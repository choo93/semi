package semi.dobo.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.dobo.model.vo.DoboInfo;
import semi.dobo.model.vo.DoboReserve;

public class DoboDAO {

	public DoboInfo selectInfo(Connection conn, int indexNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		DoboInfo di = null;
		
		String query = "select * from doboInfo where indexNum = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				di = new DoboInfo();
				di.setIndenxNum(rset.getInt(1));
				di.setDoboCode(rset.getString(2));
				di.setDoboTitle(rset.getString(3));
				di.setDoboMainPhoto(rset.getString(4));
				di.setDoboSummary(rset.getString(5));
				di.setDoboMainExplain(rset.getString(6));
				di.setDoboCourse(rset.getString(7));
				di.setDoboTime(rset.getString(8));
				di.setDoboMeet(rset.getString(9));
				di.setDoboSubTitle1(rset.getString(10));
				di.setDoboSubPhoto1(rset.getString(11));
				di.setDoboSubExplain1(rset.getString(12));
				di.setDoboSubTitle2(rset.getString(13));
				di.setDoboSubPhoto2(rset.getString(14));
				di.setDoboSubExplain2(rset.getString(15));
				di.setDoboSubTitle3(rset.getString(16));
				di.setDoboSubPhoto3(rset.getString(17));
				di.setDoboSubExplain3(rset.getString(18));
				di.setDoboSubTitle4(rset.getString(19));
				di.setDoboSubPhoto4(rset.getString(20));
				di.setDoboSubExplain4(rset.getString(21));
				di.setDoboAdditionType(rset.getString(22));
				di.setDoboAddition(rset.getString(23));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return di;
	}

	public ArrayList<DoboInfo> selectAllDobo(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from (select DoboInfo.*, row_number() over(order by indexNum desc) as num from DoboInfo) where num between ? and ?";
		
		ArrayList<DoboInfo> list = new ArrayList<DoboInfo>();
		
		int start = (currentPage-1)*recordCountPerPage+1;
		int end = currentPage*recordCountPerPage;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DoboInfo di = new DoboInfo();
				
				di = new DoboInfo();
				di.setIndenxNum(rset.getInt(1));
				di.setDoboCode(rset.getString(2));
				di.setDoboTitle(rset.getString(3));
				di.setDoboMainPhoto(rset.getString(4));
				di.setDoboSummary(rset.getString(5));
				di.setDoboMainExplain(rset.getString(6));
				di.setDoboCourse(rset.getString(7));
				di.setDoboTime(rset.getString(8));
				di.setDoboMeet(rset.getString(9));
				di.setDoboSubTitle1(rset.getString(10));
				di.setDoboSubPhoto1(rset.getString(11));
				di.setDoboSubExplain1(rset.getString(12));
				di.setDoboSubTitle2(rset.getString(13));
				di.setDoboSubPhoto2(rset.getString(14));
				di.setDoboSubExplain2(rset.getString(15));
				di.setDoboSubTitle3(rset.getString(16));
				di.setDoboSubPhoto3(rset.getString(17));
				di.setDoboSubExplain3(rset.getString(18));
				di.setDoboSubTitle4(rset.getString(19));
				di.setDoboSubPhoto4(rset.getString(20));
				di.setDoboSubExplain4(rset.getString(21));
				di.setDoboAdditionType(rset.getString(22));
				di.setDoboAddition(rset.getString(23));
				
				list.add(di);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public String getDoboNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select count(*) as totalCount from DoboInfo";
		
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
			sb.append("<a href='/doboList?currentPage=" + (startNavi-1) + "'> < </a>");
		}
		for(int i=startNavi;i<=endNavi;i++) {
			if(i==currentPage) {
				sb.append("<a href='/doboList?currentPage=" + i + "'><B> " + i + " </B></a>");
			}else {
				sb.append("<a href='/doboList?currentPage=" + i + "'> " + i + " </a>");
			}
		}
		if(needNext) {	// 끝페이지가 아니라면!
			sb.append("<a href='/doboList?currentPage=" + (endNavi+1) + "'> > </a>");
		}
		
		return sb.toString();
	}

	public int addReserve(Connection conn, DoboReserve dr) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into DOBORESERVE values(DOBORESERVE_SEQ.NEXTVAL,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dr.getDoboCode());
			pstmt.setString(2, dr.getDate());
			pstmt.setString(3, dr.getTime());
			pstmt.setString(4, dr.getReserveName());
			pstmt.setString(5, dr.getGender());
			pstmt.setString(6, dr.getNation());
			pstmt.setString(7, dr.getPhone());
			pstmt.setString(8, dr.getComment());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

}
