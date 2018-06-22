package semi.dobo.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.dobo.model.vo.DoboInfo;
import semi.dobo.model.vo.DoboReserve;
import semi.enjoy.model.vo.EnjoyComment;

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
				di.setIndexNo(rset.getInt(1));
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
				di.setIndexNo(rset.getInt(1));
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

		StringBuilder sb = new StringBuilder();

		if(needPrev) //시작이 1페이지가 아니라면!
		{
			sb.append("<li> <a href='/doboList?currentPage="+(startNavi-1)+"'> « </a></li>");
		}
		else
		{
			sb.append("<li class='disabled'> <span>«</span></li>");
		}
		for(int i=startNavi;i<=endNavi;i++)
		{
			if(i==currentPage)
			{
				sb.append("<li class='active'><a href='/doboList?currentPage="+i+"'>  "+i+" </a></li>");
			}
			else
			{
				sb.append("<li><a href='/doboList?currentPage="+i+"'> "+i+" </a></li>");
			}
		}
		if(needNext) // 끝 페이지가 아니라면!
		{
			sb.append("<li><a href='/doboList?currentPage="+(endNavi+1)+"'> » </a></li>");
		}
		else
		{
			sb.append("<li class='disabled'> <sapn>»</span> </li>");
		}
		return sb.toString();
	}

	public int addReserve(Connection conn, DoboReserve dr) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query1 = "insert into DOBORESERVE values(DOBORESERVE_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?)";
		String query2 = "insert into DOBORESERVE values(DOBORESERVE_SEQ.NEXTVAL,?,nologinuser_seq.nextval,?,?,?,?,?,?,?)";

		try {
			if(dr.getUserNo()!=-1) {
				pstmt = conn.prepareStatement(query1);
				pstmt.setString(1, dr.getDoboCode());
				pstmt.setInt(2, dr.getUserNo());
				pstmt.setString(3, dr.getDate());
				pstmt.setString(4, dr.getTime());
				pstmt.setString(5, dr.getReserveName());
				pstmt.setString(6, dr.getGender());
				pstmt.setString(7, dr.getNation());
				pstmt.setString(8, dr.getPhone());
				pstmt.setString(9, dr.getComment());
			}else{
				pstmt = conn.prepareStatement(query2);
				pstmt.setString(1, dr.getDoboCode());
				pstmt.setString(2, dr.getDate());
				pstmt.setString(3, dr.getTime());
				pstmt.setString(4, dr.getReserveName());
				pstmt.setString(5, dr.getGender());
				pstmt.setString(6, dr.getNation());
				pstmt.setString(7, dr.getPhone());
				pstmt.setString(8, dr.getComment());
			}
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}

		return result;
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

				"select * from (select Element_Index_Review.*,row_number() over(order by SEQ_REVIEW)as num from Element_Index_Review where SEQ_INDEX_TITLENO = ? )where num between ? and ?";
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
			// TODO Auto-generated catch block
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
