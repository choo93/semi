package semi.hotel.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.hotel.model.vo.HotelInfo;
import semi.hotel.model.vo.HotelListData;
import semi.hotel.model.vo.HotelReserve;

public class HotelDAO {

	public HotelInfo selectAllInfo(Connection conn, int indexNum) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "";
		HotelInfo ci = null;
		
		
		
		return null;
	}
	

	public ArrayList<HotelInfo> selectAllHotel(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		
		int end = currentPage*recordCountPerPage;
		
		String query="select * from(select hotelList.*, row_number() over(order by indexNum desc) as num from hotelList) where num between ? and ?";
		
		ArrayList<HotelInfo> list = new ArrayList<HotelInfo>();
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next())
			{
				HotelInfo hl = new HotelInfo();
				
				hl.setIndexNum(rset.getInt("indexNum"));
				System.out.println(hl.getIndexNum());
				hl.setHotelName(rset.getString("hotelName"));
				System.out.println(hl.getHotelName());
				hl.setHotelExplain(rset.getString("hotelExplain"));
				System.out.println(hl.getHotelExplain());
				hl.setHotelMainPhoto(rset.getString("hotelMainPhoto"));
				System.out.println(hl.getHotelMainPhoto());
				list.add(hl);
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
		
		String query="select count(*) from hotelList";
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next())
			{
				recordTotalCount = rset.getInt("count(*)");
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
			sb.append("<a href='/hotelList?currentPage="+(startNavi-1)+"'> < </a>");
		}
		for(int i=startNavi;i<=endNavi;i++)
		{
			if(i==currentPage)
			{
				sb.append("<a href='/hotelList?currentPage="+i+"'> <B> "+i+" </B></a>");
			}
			else
			{
				sb.append("<a href='/hotelList?currentPage="+i+"'> "+i+" </a>");
			}
		}
		if(needNext) // 끝 페이지가 아니라면!
		{
			sb.append("<a href='/hotelList?currentPage="+(endNavi+1)+"'> > </a>");
		}
		return sb.toString();
	}


	public ArrayList<String> loadRoom(Connection conn, HotelReserve hr) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select hotelRoomNo from HOTELRESERVE where HOTELCODE = ? and hotelreserveDate = ?";
		ArrayList<String> list = new ArrayList<String>();
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, hr.getHotelCode());
			pstmt.setString(2, hr.getReserveDate());
			
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


	public int addReserve(Connection conn, HotelReserve hr) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query="insert into HOTELRESERVE values(HOTELRESERVE_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, hr.getHotelCode());
			pstmt.setInt(2, hr.getUserNo());
			pstmt.setInt(3, hr.getRoomNo());
			pstmt.setString(4, hr.getRoomCode());
			pstmt.setString(5, hr.getReserveDate());
			pstmt.setInt(6, hr.getPrice());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

}
