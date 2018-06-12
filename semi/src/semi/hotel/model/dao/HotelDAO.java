package semi.hotel.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.hotel.model.vo.HotelInfo;
import semi.hotel.model.vo.HotelListData;

public class HotelDAO {

	public HotelInfo selectAllInfo(Connection conn, int indexNum) {
		
		return null;
	}
	

	public ArrayList<HotelListData> selectAllHotel(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		
		int end = currentPage*recordCountPerPage;
		
		String query="";
		
		ArrayList<HotelListData> list = new ArrayList<HotelListData>();
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next())
			{
				HotelListData hld = new HotelListData();
				
				list.add(hld);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}


	public String getHotelPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		//게시물 토탈 개수 
		int recordTotalCount = 0;
		
		String query="select count(*) from Member_mgr";
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next())
			{
				recordTotalCount = rset.getInt("");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		int pageTotalCount = 0;
		
		if(recordTotalCount%recordCountPerPage!=0)
		{
			pageTotalCount = recordTotalCount / recordCountPerPage +1;
		}
		else
		{
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		if(currentPage<1)
		{
			currentPage=1;
		}
		else if(currentPage>pageTotalCount)
		{
			currentPage = pageTotalCount;
		}
		
		int startNavi = ((currentPage-1)/naviCountPerPage)*naviCountPerPage+1;
		int endNavi = startNavi + naviCountPerPage -1;
	
		
		if(endNavi>pageTotalCount)
		{
			endNavi = pageTotalCount;
		}
		
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi==1)
		{
			needPrev = false;
		}
		if(endNavi==pageTotalCount)
		{
			needNext=false;
		}
		
		StringBuilder sb = new StringBuilder();
		
		if(needPrev) //시작이 1페이지가 아니라면!
		{
			sb.append("<a href='/notice?currentPage="+(startNavi-1)+"'> < </a>");
		}
		for(int i=startNavi;i<=endNavi;i++)
		{
			if(i==currentPage)
			{
				sb.append("<a href='/notice?currentPage="+i+"'> <B> "+i+" </B></a>");
			}
			else
			{
				sb.append("<a href='/notice?currentPage="+i+"'> "+i+" </a>");
			}
		}
		if(needNext) // 끝 페이지가 아니라면!
		{
			sb.append("<a href='/notice?currentPage="+(endNavi+1)+"'> > </a>");
		}
		return sb.toString();
	}

}
