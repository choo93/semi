package semi.concert.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.vo.ConcertInfo;
import semi.concert.model.vo.ConcertReserve;
import semi.enjoy.model.vo.EnjoyComment;

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
				ci.setConcertPhoto(rset.getString(4));
				ci.setConcertGanre(rset.getString(5));
				ci.setConcertDate(rset.getString(6));
				ci.setConcertAddress(rset.getString(7));
				ci.setConcertAge(rset.getString(8));
				ci.setConcertShowTime(rset.getString(9));
				ci.setConcertPrice(rset.getString(10));
				ci.setConcertExplain(rset.getString(11));
				ci.setConcertPhone(rset.getString(12));
				ci.setConcertSite(rset.getString(13));
				ci.setConcertTraffic(rset.getString(14));
				ci.setConcertLatitude(rset.getDouble(15));
				ci.setConcertLongtitude(rset.getDouble(16));
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
				ci.setConcertPhoto(rset.getString(4));
				ci.setConcertGanre(rset.getString(5));
				ci.setConcertDate(rset.getString(6));
				ci.setConcertAddress(rset.getString(7));
				ci.setConcertAge(rset.getString(8));
				ci.setConcertShowTime(rset.getString(9));
				ci.setConcertPrice(rset.getString(10));
				ci.setConcertExplain(rset.getString(11));
				ci.setConcertPhone(rset.getString(12));
				ci.setConcertSite(rset.getString(13));
				ci.setConcertTraffic(rset.getString(14));
				ci.setConcertLatitude(rset.getDouble(15));
				ci.setConcertLongtitude(rset.getDouble(16));

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

		if(needPrev) //시작이 1페이지가 아니라면!
		{
			sb.append("<li> <a href='/concertList?currentPage="+(startNavi-1)+"'> « </a></li>");
		}
		else
		{
			sb.append("<li class='disabled'> <span>«</span></li>");
		}
		for(int i=startNavi;i<=endNavi;i++)
		{
			if(i==currentPage)
			{
				sb.append("<li class='active'><a href='/concertList?currentPage="+i+"'>  "+i+" </a></li>");
			}
			else
			{
				sb.append("<li><a href='/concertList?currentPage="+i+"'> "+i+" </a></li>");
			}
		}
		if(needNext) // 끝 페이지가 아니라면!
		{
			sb.append("<li><a href='/concertList?currentPage="+(endNavi+1)+"'> » </a></li>");
		}
		else
		{
			sb.append("<li class='disabled'> <sapn>»</span> </li>");
		}
		return sb.toString();


	}


	public int addReserve(Connection conn, ConcertReserve cr) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into CONCERTRESERVE values (CONCERTRESERVE_SEQ.NEXTVAL,?,?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cr.getConcertCode());
			pstmt.setInt(2, cr.getUserNo());
			pstmt.setString(3, cr.getConcertPrice());
			pstmt.setString(4, cr.getConcertReserveDate());
			pstmt.setString(5, cr.getConcertReserveTime());
			pstmt.setInt(6, cr.getSeatNo());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}

		return result;


	}

	public ArrayList<String> loadSeat(Connection conn, ConcertReserve cr) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select seatNo from concertReserve where concertCode = ? and concertReserveTime = ? and concertReserveDate = ?";
		ArrayList<String> list = new ArrayList<String>();

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cr.getConcertCode());
			pstmt.setString(2, cr.getConcertReserveTime());
			pstmt.setString(3, cr.getConcertReserveDate());

			rset = pstmt.executeQuery();

			while(rset.next()) {
				list.add(rset.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return list;
	}

	public ArrayList<EnjoyComment> getListCommentData(Connection conn, int recordCountPerPage, int currentPage,
			 int indexNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		// 시작 게시물 계산
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);

		// 끝 게시물 계산
		int end = currentPage * recordCountPerPage;

		String query = 

				"select * from (select Element_Index_Review.*,row_number() over(order by SEQ_REVIEW desc)as num from Element_Index_Review where SEQ_INDEX_TITLENO = ? )where num between ? and ?";
		ArrayList<EnjoyComment> list = new ArrayList<EnjoyComment>();
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);	
			rset = pstmt.executeQuery();
			while (rset.next()) {
				EnjoyComment EC = new EnjoyComment();
				EC.setSEQ_INDEX_TITLENO(rset.getInt(1));
				EC.setINDEX_TITLE(rset.getString(2));
				EC.setUSER_ID(rset.getString(3));
				EC.setUSER_IMAGE(rset.getString(4));
				EC.setUSER_COMMNET(rset.getString(5));
				EC.setSEQ_REIVEW(rset.getInt(6));
				EC.setWrite_Date(rset.getDate(7));

				list.add(EC);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}


		return list;
	}

	public String getPageNaviComment(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage,
			 int indexNo) {
		// 게시물의 토탈 개수를 구해야 함
		int recordTotalCount = 0;
		// 총 게시물 개수 저장 변수 (정보가 없으므로 초기값은 0)
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "SELECT count(*)AS totalCount FROM Element_Index_Review where SEQ_INDEX_TITLENO = ? ";
		//String query = "SELECT count(*)AS totalCount FROM List_Element where contents like ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);			
			rset = pstmt.executeQuery();
			if (rset.next()) {
				recordTotalCount = rset.getInt("totalCount");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		// 124 -> navi 13

		int pageTotalCount = 0; // navi 토탈 카운트
		// 페이지당 10개씩 보이게 만들어서 navi list를 만들려면?
		// 토탈 게시물이 124개 라고 했을때 124%10을 한후 +1 만큼
		// 만들어야 함
		// 만약 나머지가 0으로 떨어 진다면 +1을 하지 않음
		if (recordTotalCount % recordCountPerPage != 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
		boolean needPrev = true;
		boolean needNext = true;
		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}
		
		
		StringBuilder sb = new StringBuilder(); // 오랜만이야..


		if (needPrev) { // 시작이 1페이지가 아니라면!
			//sb.append("<a href='/concertInfo?currentPage=" + (startNavi - 1) +"&serarch="+search+"&indexNo="+indexNo+  "'> < </a>");
			sb.append("<a onclick ='pp(" + (startNavi - 1) + "," +  indexNo + ");'> < </a>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				//sb.append("<a href='/concertInfo?currentPage=" + i +"&serarch="+search+"&indexNo="+indexNo+ "'><B> " + i + " </B></a>");
				sb.append("<a onclick ='pp(" + i + "," +  indexNo + ");'><b>" + i + "</b></a>");
			} else {
				//sb.append("<a href='/concertInfo?currentPage=" + i +"&serarch="+search+"&indexNo="+indexNo+  "'> " + i + " </a>");
				sb.append("<a onclick ='pp(" + i + "," +  indexNo + ");'>" + i + "</a>");
			}
		}
		if (needNext) { // 끝페이지가 아니라면!
			//sb.append("<a href='/concertInfo?currentPage=" + (endNavi + 1) +"&serarch="+search+"&indexNo="+indexNo+  "'> > </a>");
			sb.append("<a onclick ='pp(" + (endNavi + 1) + ","  + indexNo + ");'> > </a>");
		}

		return sb.toString();
		
		
	}

}
