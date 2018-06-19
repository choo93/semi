package semi.travelready.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.travelready.model.vo.Faq;
import semi.travelready.model.vo.FaqPageData;
import semi.travelready.model.vo.SeoulInformationComment;
import semi.travelready.model.vo.SeoulInformationCommentPageData;

public class SeoulInformationDao {

	public ArrayList<SeoulInformationComment> getCurrentPage(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int start=currentPage*recordCountPerPage-(recordCountPerPage-1);
		
		int end=currentPage*recordCountPerPage;
		
		String query="select * from" +
				"(select seoulinformation.*,row_number() over(order by commentNo desc)as num from seoulinformation)" + 
				"where num between ? and ?";
		
		ArrayList<SeoulInformationComment> list=new ArrayList<SeoulInformationComment>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				SeoulInformationComment sic=new SeoulInformationComment();
				sic.setCommentNo(rset.getInt("commentno"));
				sic.setUserName(rset.getString("username"));
				sic.setContent(rset.getString("content"));
				sic.setWriteDate(rset.getDate("writedate"));
				sic.setUp(rset.getInt("up"));
				sic.setDown(rset.getInt("down"));
				
				list.add(sic);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	public SeoulInformationCommentPageData getPageNavi(Connection conn, int currentPage, int recordCountPerPage,
			int naviCountPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int recordTotalCount=0;
		
		String query="select count(*)as totalCount from seoulinformation";
		
		try {
			pstmt=conn.prepareStatement(query);
			rset=pstmt.executeQuery();
			if(rset.next());{
			recordTotalCount=rset.getInt("totalCount");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		int pageTotalCount=0;
		
		if(recordTotalCount%recordCountPerPage!=0) {
			pageTotalCount=recordTotalCount/recordCountPerPage+1;
		}else {
			pageTotalCount=recordTotalCount/recordCountPerPage;
		}
		
		if(currentPage<1) {
			currentPage=1;
		}else if(currentPage>pageTotalCount) {
			currentPage=pageTotalCount;
		}
		
		int startNavi=((currentPage-1)/naviCountPerPage)*naviCountPerPage+1;
		
		int endNavi=startNavi + naviCountPerPage -1;
		
		if(endNavi>pageTotalCount) {
			endNavi=pageTotalCount;
		}
		
		SeoulInformationCommentPageData sicpd=new SeoulInformationCommentPageData();
		sicpd.setCurrentPage(currentPage);
		sicpd.setEndNavi(endNavi);
		sicpd.setStartNavi(startNavi);
		sicpd.setPageTotalCount(pageTotalCount);
		sicpd.setRecordTotalCount(recordTotalCount);
		
		return sicpd;
		
	}

	public int commentInsert(Connection conn, String content) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="insert into seoulinformation values(seoulinformation_SEQ.nextval,'userName',?,sysdate,0,0)";
		
		try {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1, content);
;
			result=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
}
