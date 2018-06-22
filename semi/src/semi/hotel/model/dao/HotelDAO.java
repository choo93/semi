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
import semi.hotel.model.vo.RoomInfo;

public class HotelDAO {

	public HotelInfo selectAllInfo(Connection conn, int indexNum) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from hotelInfo where indexNum = ?";
		HotelInfo hi = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNum);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				hi = new HotelInfo();
				hi.setIndexNum(rset.getInt("indexNum"));
				hi.setHotelCode(rset.getString("hotelCode"));
				hi.setHotelName(rset.getString("hotelName"));
				hi.setHotelListMainPhoto(rset.getString("hotelListMainPhoto"));
				hi.setHotelMainPhoto(rset.getString("hotelMainPhoto"));
				hi.setHotelSubPhoto1(rset.getString("hotelSubPhoto1"));
				hi.setHotelSubPhoto2(rset.getString("hotelSubPhoto2"));
				hi.setHotelSubPhoto3(rset.getString("hotelSubPhoto3"));
				hi.setHotelSubPhoto4(rset.getString("hotelSubPhoto4"));
				hi.setHotelAddress(rset.getString("hotelAddress"));
				hi.setHotelPhone(rset.getString("hotelPhone"));
				hi.setHotelExplain(rset.getString("hotelExplain"));
				hi.setHotelBriefDescription(rset.getString("hotelBriefDescription"));
				hi.setHotelRoomPriceExplain(rset.getString("hotelRoomPriceExplain"));
				hi.setHotelCheckInOut(rset.getString("hotelCheckInOut"));
				hi.setHotelLatitude(rset.getDouble("hotelLatitude"));
				hi.setHotelLongtitude(rset.getDouble("hotelLongtitude"));
				hi.setHotelRoomCode(rset.getString("roomcode"));
							
			}
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return hi;
	}
	

	public ArrayList<HotelInfo> selectAllHotel(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		
		int end = currentPage*recordCountPerPage;
		
		String query="select * from(select hotelInfo.*, row_number() over(order by indexNum desc) as num from hotelInfo) where num between ? and ?";
		
		ArrayList<HotelInfo> list = new ArrayList<HotelInfo>();
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next())
			{
				HotelInfo hi = new HotelInfo();
				
				hi.setIndexNum(rset.getInt("indexNum"));
				hi.setHotelCode(rset.getString("hotelCode"));
				hi.setHotelName(rset.getString("hotelName"));
				hi.setHotelListMainPhoto(rset.getString("hotelListMainPhoto"));
				hi.setHotelMainPhoto(rset.getString("hotelMainPhoto"));
				hi.setHotelSubPhoto1(rset.getString("hotelSubPhoto1"));
				hi.setHotelSubPhoto2(rset.getString("hotelSubPhoto2"));
				hi.setHotelSubPhoto3(rset.getString("hotelSubPhoto3"));
				hi.setHotelSubPhoto4(rset.getString("hotelSubPhoto4"));
				hi.setHotelAddress(rset.getString("hotelAddress"));
				hi.setHotelPhone(rset.getString("hotelPhone"));
				hi.setHotelExplain(rset.getString("hotelExplain"));
				hi.setHotelBriefDescription(rset.getString("hotelBriefDescription"));
				hi.setHotelRoomPriceExplain(rset.getString("hotelRoomPriceExplain"));
				hi.setHotelCheckInOut(rset.getString("hotelCheckInOut"));
				hi.setHotelLatitude(rset.getDouble("hotelLatitude"));
				hi.setHotelLongtitude(rset.getDouble("hotelLongtitude"));
				hi.setHotelRoomCode(rset.getString("roomCode"));
				list.add(hi);
				
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
		
		String query="select count(*) from hotelInfo";
		
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
			sb.append("<li> <a style='height:47px;line-height:47px;' href='/hotelList?currentPage="+(startNavi-1)+"'> « </a></li>");
		}
		else
		{
			sb.append("<li class='disabled'> <span>«</span></li>");
		}
		for(int i=startNavi;i<=endNavi;i++)
		{
			if(i==currentPage)
			{
				sb.append("<li class='active'><a style='height:47px;line-height:47px;' href='/hotelList?currentPage="+i+"'> "+i+" </a></li>");
			}
			else
			{
				sb.append("<li><a style='height:47px;line-height:47px;' href='/hotelList?currentPage="+i+"'> "+i+" </a></li>");
			}
		}
		if(needNext) // 끝 페이지가 아니라면!
		{
			sb.append("<li><a style='height:47px;line-height:47px;' href='/hotelList?currentPage="+(endNavi+1)+"'> » </a></li>");
		}
		else
		{
			sb.append("<li class='disabled'> <span>»</span></li>");
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


	public ArrayList<RoomInfo> hotelRoomInfo(Connection conn, int roomCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String query ="";
		if(roomCode==1) {
			query="select * from roomInfo where RoomCode in ('1','2','3','4')";
			
		}else if(roomCode==2) {
			query="select * from roomInfo where RoomCode in ('2','3','4','5')";
		}
		else if(roomCode==3) {
			query="select * from roomInfo where RoomCode in ('3','4','5','6')";
		}
		else if(roomCode==4) {
			query="select * from roomInfo where RoomCode in ('4','5','6','1')";
		}
		else if(roomCode==5) {
			query="select * from roomInfo where RoomCode in ('5','6','1','2')";
		}
		else if(roomCode==6) {
			query="select * from roomInfo where RoomCode in ('6','1','2','3')";
		}
		
		
		
		ArrayList<RoomInfo> list = new ArrayList<RoomInfo>();
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			
			while(rset.next())
			{
				RoomInfo ri = new RoomInfo();
				ri.setRoomCode(rset.getString("roomCode"));
				ri.setRoomTitle(rset.getString("roomTitle"));
				ri.setRoomExplain(rset.getString("roomExplain"));
				ri.setRoomCapacity(rset.getInt("roomCapacity"));
				ri.setRoomPrice(rset.getString("roomPrice"));
				
				
				
				list.add(ri);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return list;
		
	}

}
