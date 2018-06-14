package semi.travelready.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.travelready.model.vo.Faq;
import semi.travelready.model.vo.FaqPageData;

public class FaqDao {

	public ArrayList<Faq> getCurrentPage(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int start=currentPage*recordCountPerPage-(recordCountPerPage-1);
		
		int end=currentPage*recordCountPerPage;
		
		String query="select * from" +
				"(select faq.*,row_number() over(order by faqNo desc)as num from Faq)" + 
				"where num between ? and ?";
		
		ArrayList<Faq> list=new ArrayList<Faq>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Faq f=new Faq();
				f.setFaqNo(rset.getInt("faqno"));
				f.setTitle(rset.getString("title"));
				f.setCategory(rset.getString("category"));
				f.setAnswer(rset.getString("answer"));
				
				list.add(f);
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

	public FaqPageData getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int recordTotalCount=0;
		
		String query="select count(*)as totalCount from faq";
		
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
		
		FaqPageData fpd=new FaqPageData();
		fpd.setCurrentPage(currentPage);
		fpd.setEndNavi(endNavi);
		fpd.setStartNavi(startNavi);
		fpd.setPageTotalCount(pageTotalCount);
		fpd.setRecordTotalCount(recordTotalCount);
		
		return fpd;
		

	}

	public ArrayList<Faq> getSearchCurrentPage(Connection conn, int currentPage, int recordCountPerPage, String search) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int start=currentPage*recordCountPerPage-(recordCountPerPage-1);
		
		int end=currentPage*recordCountPerPage;
		
	
		String query="select * from" +
				"(select faq.*,row_number() over(order by faqNo desc)as num from Faq where title like ?)" + 
				"where num between ? and ?";


		
		ArrayList<Faq> list=new ArrayList<Faq>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, '%'+search+'%');
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Faq f=new Faq();
				f.setFaqNo(rset.getInt("faqno"));
				f.setTitle(rset.getString("title"));
				f.setCategory(rset.getString("category"));
				f.setAnswer(rset.getString("answer"));
				
				list.add(f);
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

	public FaqPageData getSearchPageNavi(Connection conn, int currentPage, int recordCountPerPage,
			int naviCountPerPage, String search) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int recordTotalCount=0;
	
		String query="select count(*)as totalCount from faq where title like ?";

		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, '%'+search+'%');
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
		
		FaqPageData fpd=new FaqPageData();
		fpd.setCurrentPage(currentPage);
		fpd.setEndNavi(endNavi);
		fpd.setStartNavi(startNavi);
		fpd.setPageTotalCount(pageTotalCount);
		fpd.setRecordTotalCount(recordTotalCount);
		
		return fpd;
	}

	public ArrayList<Faq> getSearchCurrentPage2(Connection conn, int currentPage, int recordCountPerPage,
			String search) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int start=currentPage*recordCountPerPage-(recordCountPerPage-1);
		
		int end=currentPage*recordCountPerPage;
		
	
		String query="select * from" +
				"(select faq.*,row_number() over(order by faqNo desc)as num from Faq where category like ?)" + 
				"where num between ? and ?";


		
		ArrayList<Faq> list=new ArrayList<Faq>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, '%'+search+'%');
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Faq f=new Faq();
				f.setFaqNo(rset.getInt("faqno"));
				f.setTitle(rset.getString("title"));
				f.setCategory(rset.getString("category"));
				f.setAnswer(rset.getString("answer"));
				
				list.add(f);
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

	public FaqPageData getSearchPageNavi2(Connection conn, int currentPage, int recordCountPerPage,
			int naviCountPerPage, String search) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int recordTotalCount=0;
	
		String query="select count(*)as totalCount from faq where category like ?";

		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, '%'+search+'%');
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
		
		FaqPageData fpd=new FaqPageData();
		fpd.setCurrentPage(currentPage);
		fpd.setEndNavi(endNavi);
		fpd.setStartNavi(startNavi);
		fpd.setPageTotalCount(pageTotalCount);
		fpd.setRecordTotalCount(recordTotalCount);
		
		return fpd;
	}

}
