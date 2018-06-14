package semi.travelready.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.travelready.model.vo.Answer;
import semi.travelready.model.vo.Faq;
import semi.travelready.model.vo.FaqPageData;
import semi.travelready.model.vo.Qna;
import semi.travelready.model.vo.QnaPageData;

public class QnaDao {

	public ArrayList<Qna> getCurrentPage(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int start=currentPage*recordCountPerPage-(recordCountPerPage-1);
		
		int end=currentPage*recordCountPerPage;
		
		String query="select * from" +
				"(select question.*,row_number() over(order by questionNo desc)as num from question)" + 
				"where num between ? and ?";
		
		ArrayList<Qna> list=new ArrayList<Qna>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Qna q=new Qna();
				q.setQuestionNo(rset.getInt("questionNo"));
				q.setWriteDate(rset.getDate("writeDate"));
				q.setHits(rset.getInt("hits"));
				q.setUserName(rset.getString("username"));
				q.setTitle(rset.getString("title"));
				q.setContent(rset.getString("content"));
				q.setUserId(rset.getString("userId"));
				q.setQuestionChk(rset.getString("questionChk"));
				list.add(q);
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

	public QnaPageData getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int recordTotalCount=0;
		
		String query="select count(*)as totalCount from question";
		
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
		
		QnaPageData qpd=new QnaPageData();
		qpd.setCurrentPage(currentPage);
		qpd.setEndNavi(endNavi);
		qpd.setStartNavi(startNavi);
		qpd.setPageTotalCount(pageTotalCount);
		qpd.setRecordTotalCount(recordTotalCount);
		
		return qpd;
		

	}

	public Qna qnaSelect(Connection conn, int questionNo) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="select * from question where questionNo=?";
		Qna q=null;
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, questionNo);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				q=new Qna();
				q.setQuestionNo(rset.getInt("questionNo"));
				q.setWriteDate(rset.getDate("writeDate"));
				q.setHits(rset.getInt("hits"));
				q.setUserName(rset.getString("username"));
				q.setTitle(rset.getString("title"));
				q.setContent(rset.getString("content"));
				q.setUserId(rset.getString("userId"));
				q.setQuestionChk(rset.getString("questionChk"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return q;
	}

	public int hitsUpdate(Connection conn, int questionNo, int hits) {
		PreparedStatement pstmt=null;
		int result=0;
		hits+=1;
		String query="update question set hits=? where questionNo=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, hits);
			pstmt.setInt(2, questionNo);
			result=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
		
		
	}

	public Answer qnaComment(Connection conn, int questionNo) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="select * from answer where questionNo=?";
		Answer an=null;
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, questionNo);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				an=new Answer();
				an.setAnswerNo(rset.getInt("answerNo"));
				an.setContent(rset.getString("content"));
				an.setUserName(rset.getString("username"));
				an.setWriteDate(rset.getDate("writedate"));
				an.setQuestionNo(rset.getInt("questionno"));
				
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return an;
		
	}

	public int qnaChkUpdate(Connection conn, int questionNo) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="update question set questionchk='확인완료'  where questionNo=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, questionNo);
			result=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
		
	}

	public int insertQna(Connection conn, String title, String content) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="insert into question values()";
		
		try {
			pstmt=conn.prepareStatement(query);
		
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
