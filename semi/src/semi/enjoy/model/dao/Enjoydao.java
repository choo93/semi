package semi.enjoy.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.enjoy.model.vo.EnjoyComment;
import semi.enjoy.model.vo.EnjoyDetailData1;
import semi.enjoy.model.vo.EnjoyFestival;
import semi.enjoy.model.vo.EnjoyInforData;
import semi.enjoy.model.vo.EnjoyInforDataDetail;
import semi.enjoy.model.vo.EnjoyListData;


public class Enjoydao {

	public ArrayList<EnjoyListData> getAllData(Connection conn) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String Query = "select * from List_Element";
		ArrayList<EnjoyListData> list = new ArrayList<EnjoyListData>();

		try {
			pstmt = conn.prepareStatement(Query);
			rset = pstmt.executeQuery();

			EnjoyListData ELD = null;
			while (rset.next()) {
				ELD = new EnjoyListData();
				ELD.setIndex_BasicInfo(rset.getString("index_basicInfo"));
				ELD.setIndex_Image(rset.getString("index_image"));
				ELD.setIndex_Title(rset.getString("index_title"));
				ELD.setIndex_Ondate(rset.getDate("index_Ondate"));
				ELD.setIndex_TitleNo(rset.getInt("index_TitleNo"));
				ELD.setIndex_Tags(rset.getString("index_Tags"));
				ELD.setList_Element(rset.getString("list_Element"));
				ELD.setIndex_Hits(rset.getInt("Index_Hits"));

				list.add(ELD);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return list;
	}

	public ArrayList<EnjoyListData> getListData(Connection conn, int recordCountPerPage, int currentPage,
			String search, String type, String option) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		// 시작 게시물 계산
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);

		// 끝 게시물 계산
		int end = currentPage * recordCountPerPage;
		String query = "";
		
		if(option.equals("title"))
		{
		query = "select * from (select list_element.*,row_number() over(order by INDEX_TITLE)as num from List_Element where List_Element = ?) where num between ? and ?";
		}
		else if(option.equals("dayOfIssue")) 
		{
			query = "select * from (select list_element.*,row_number() over(order by INDEX_ONDATE desc)as num from List_Element where List_Element = ?) where num between ? and ?";
		}else if(option.equals("hits"))
		{
			query = "select * from (select list_element.*,row_number() over(order by INDEX_HITS desc)as num from List_Element where List_Element = ?) where num between ? and ?";
		}
		else
		{
		query = "select * from (select list_element.*,row_number() over(order by Index_titleNo)as num from List_Element where List_Element =? ) where num between ? and ?";
		}
		ArrayList<EnjoyListData> list = new ArrayList<EnjoyListData>();
		try {
			pstmt = conn.prepareStatement(query);
			if(option.equals("")) {pstmt.setString(1, type);}
			else {pstmt.setString(1, type);}
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);	
			rset = pstmt.executeQuery();
			while (rset.next()) {
				EnjoyListData ELD = new EnjoyListData();
				ELD.setIndex_BasicInfo(rset.getString("index_basicInfo"));
				ELD.setIndex_Image(rset.getString("index_image"));
				ELD.setIndex_Title(rset.getString("index_title"));
				ELD.setIndex_Ondate(rset.getDate("index_Ondate"));
				ELD.setIndex_TitleNo(rset.getInt("index_TitleNo"));
				ELD.setIndex_Tags(rset.getString("index_Tags"));
				ELD.setList_Element(rset.getString("list_Element"));
				ELD.setIndex_Hits(rset.getInt("Index_Hits"));

				list.add(ELD);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return list;

	}

	public String getPageNavi(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage,
			String search, String type, String option) {

		// 게시물의 토탈 개수를 구해야 함
		int recordTotalCount = 0;
		// 총 게시물 개수 저장 변수 (정보가 없으므로 초기값은 0)
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "SELECT count(*)AS totalCount FROM List_Element where list_element = ? ";
		//String query = "SELECT count(*)AS totalCount FROM List_Element where contents like ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, type);			
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

		// 사용자가 현재 페이지가 1페이지 인데 더 아래 페이지를 요청할 경우
		// 혹은 마지막 페이지가 120 페이지 인데 다음 페이지를
		// 요청할 경우에 대한 에러 방지 설정
		// 1보다 아래를 요청하면 1로 셋팅
		// 마지막보다 다음 페이지를 요청하면 마지막 페이지 값으로 셋팅
		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}

		// 현재 페이지를 기점으로 시작 navi와 끝 navi를 만들어야 함
		// 현재 페이지가 1이라면? 1~5
		// 현재 페이지가 3이라면? 1~5
		// 현재 페이지가 7이라면? 6~10
		// 현재 페이지가 12라면? 11~15
		// 시작 페이지 구하는 공식은?
		// -> ((현재페이지-1)/리스트개수)*리스트개수+1
		// 만약 1페이지 라면?
		// -> ((1-1)/5)*5+1 => 시작 페이지는 1
		// 만약 3페이지 라면?
		// -> ((3-1)/5)*5+1 => 시작 페이지는 1
		// 만약 7페이지 라면?
		// -> ((7-1)/5)*5+1 => 시작 페이지는 6
		// 만약 12페이지 라면?
		// -> ((12-1)/5)*5+1 => 시작 페이지는 11

		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;

		// 끝 navi 구하는 공식 (쉬움)
		// 시작navi + 보여줄 navi 개수 - 1;
		// 만약 시작 navi 1이라면?
		// 1 + 5 -1 => 5

		int endNavi = startNavi + naviCountPerPage - 1;

		// 끝 navi를 구할때 주의 해야 할점
		// 토탈 navi 가 122 라고 할때! (현재 페이지는 121이라고 할때)
		// 시작 navi => ((121-1)/5)*5+1 = 121
		// 끝 navi => 121 + 5 -1 = 125
		// 이렇기 때문에 마지막 navi 부분은 아래 코드를 추가 해야 함
		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}

		// 페이지 navi에서 사용할 '<' 모양과 '>' 모양을 사용하기 위해
		// 필요한 변수 2개 생성 (시작과 끝은 필요 없으므로 !)

		boolean needPrev = true;
		boolean needNext = true;
		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}

		// 여기까지 기본적인 구조는 끝남
		StringBuilder sb = new StringBuilder(); // 오랜만이야..

		if (needPrev) { // 시작이 1페이지가 아니라면!
			sb.append("<li><a style='height:47px;line-height:47px;' href='/enjoyList?currentPage=" + (startNavi - 1) +"&serarch="+search+"&type="+type+"&sort="+option+"'> « </a></li>");
		}
		else { // 시작 페이지가 1페이지라면 !
			sb.append("<li class='disabled'> <span>«</span> </li>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<li class='active'><a href='/enjoyList?currentPage=" + i +"&serarch="+search+"&type="+type+ "&sort="+option+"'> " + i + " </a></li>");
			} else {
				sb.append("<li><a style='height:47px;line-height:47px;' href='/enjoyList?currentPage=" + i +"&serarch="+search+"&type="+type+  "&sort="+option+"'> " + i + " </a></li>");
			}
		}
		if (needNext) { // 끝페이지가 아니라면!
			sb.append("<li><a style='height:47px;line-height:47px;' href='/enjoyList?currentPage=" + (endNavi + 1) +"&serarch="+search+"&type="+type+  "&sort="+option+"'> » </a></li>");
		}else {
			sb.append("<li class='disabled'> <span>»</span> </li>");
		}
		
		

		return sb.toString();
	}

	public EnjoyListData getOneData(int indexNo, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String Query ="select * from list_Element where Index_TitleNo = ? ";
		EnjoyListData ELD = null;
		try {
			pstmt = conn.prepareStatement(Query);
			pstmt.setInt(1, indexNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				
				ELD = new EnjoyListData();
				ELD.setIndex_BasicInfo(rset.getString("index_basicInfo"));
				ELD.setIndex_Image(rset.getString("index_image"));
				ELD.setIndex_Title(rset.getString("index_title"));
				ELD.setIndex_Ondate(rset.getDate("index_Ondate"));
				ELD.setIndex_TitleNo(rset.getInt("index_TitleNo"));
				ELD.setIndex_Tags(rset.getString("index_Tags"));
				ELD.setList_Element(rset.getString("list_Element"));
				ELD.setIndex_Hits(rset.getInt("Index_Hits"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return ELD;
	}

	public EnjoyDetailData1 getOneDetailData(int indexNo, Connection conn) {
		EnjoyDetailData1 edd1 = null;
		PreparedStatement pstmt = null;
		String Query = "select * from Element_Index_detail where SEQ_Index_titleNo = ?";
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(Query);
			pstmt.setInt(1,indexNo);
			rset = pstmt.executeQuery();
			
			if(rset.next())
			{
			edd1 = new EnjoyDetailData1();
			edd1.setSEQ_Index_TitleNo(rset.getInt("seq_index_titleNo"));
			edd1.setIndex_type(rset.getString("index_type"));
			edd1.setDetail_addr(rset.getString("detail_addr"));
			edd1.setDetail_tell(rset.getString("detail_tell"));
			edd1.setDetail_url(rset.getString("detail_url"));
			edd1.setDetail_onTime(rset.getString("detail_onTime"));
			edd1.setDetail_offday(rset.getString("detail_offday"));
			edd1.setDetail_onday(rset.getString("detail_onday"));
			edd1.setDetail_notice(rset.getString("detail_notice"));
			edd1.setDetail_payment(rset.getString("detail_payment"));
			edd1.setDetail_disabled(rset.getString("detail_disabled"));
			edd1.setDetail_utility(rset.getString("detail_utility"));
			edd1.setDetail_traficAddress(rset.getString("detail_traficAddress"));
			edd1.setDetail_traficRoot(rset.getString("detail_traficRoot"));
			edd1.setDetail_Latitue(rset.getDouble("detail_Latitude"));
			edd1.setDetail_Longitude(rset.getDouble("detail_Longitude"));
			
			}
			else {
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		
		}
		
		
		
		return edd1;
	}

	public int insertReview(Connection conn, String reviewTitle, String reviewContents, int indexNo, String userID) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query="insert into Element_Index_Review values(?,?,?,'test',?,Element_Index_Review_SEQ.nextval,sysdate,0,0,null)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			pstmt.setString(2, reviewTitle);
			pstmt.setString(3, userID);//유저id
			/*pstmt.setString(4, );//유저이미지
*/			pstmt.setString(4, reviewContents);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public ArrayList<EnjoyComment> noticeComment(int sEQ_Index_TitleNo, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset= null;
		ArrayList<EnjoyComment> list = new ArrayList<EnjoyComment>();
		
		EnjoyComment EC = null;
		String Query = "select * from Element_Index_Review where SEQ_INDEX_TITLENO = ?";

		try {
			pstmt = conn.prepareStatement(Query);
			pstmt.setInt(1, sEQ_Index_TitleNo);
			rset = pstmt.executeQuery();
			
			
			while(rset.next())
			{
				EC = new EnjoyComment();
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public ArrayList<EnjoyComment> getListCommentData(Connection conn, int recordCountPerPage, int currentPage,
			String search, int indexNo) {
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return list;
	}

	public String getPageNaviComment(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage,
			String search, int indexNo) {
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
					sb.append("<li> <a href='/enjoySelect?currentPage=" + (startNavi - 1) +"&serarch="+search+"&IndexNo="+indexNo+  "'> « </a> </li>");
				}else { // 시작 페이지가 1페이지라면 !
					sb.append("<li class='disabled'> <span>«</span> </li>");
				}
				
				for (int i = startNavi; i <= endNavi; i++) {
					if (i == currentPage) {
						sb.append("<li class='active'><a href='/enjoySelect?currentPage=" + i +"&serarch="+search+"&IndexNo="+indexNo+ "'>" + i + " </a></li>");
					} else {
						sb.append("<li><a href='/enjoySelect?currentPage=" + i +"&serarch="+search+"&IndexNo="+indexNo+  "'> " + i + " </a></li>");
					}
				}
				if (needNext) { // 끝페이지가 아니라면!
					sb.append("<li><a href='/enjoySelect?currentPage=" + (endNavi + 1) +"&serarch="+search+"&IndexNo="+indexNo+  "'> » </a></li>");
				}else {
					sb.append("<li class='disabled'> <span>»</span> </li>");
				}
//				System.out.println(sb.toString());
				return sb.toString();
			}


	public int deleteReview(Connection conn, int commentNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "delete from Element_Index_Review where seq_review=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, commentNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int updateReview(Connection conn, String commentTitle, String comment, int commentNo) {
		PreparedStatement pstmt =null;
		int result = 0;
		
		String query = "update Element_Index_Review set INDEX_TITLE=?, USER_COMMENT=? where SEQ_REVIEW=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, commentTitle);
			pstmt.setString(2, comment);
			pstmt.setInt(3, commentNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public ArrayList<EnjoyFestival> AllFestivalData(Connection conn) {
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      String Query = "select * from festival";
	      ArrayList<EnjoyFestival> list = new ArrayList<EnjoyFestival>();

	      try {
	         pstmt = conn.prepareStatement(Query);
	         rset = pstmt.executeQuery();

	         EnjoyFestival EF = null;
	         while (rset.next()) {
	            EF = new EnjoyFestival();
	            EF.setFestival_index(rset.getInt(1));
	            EF.setFestival_title(rset.getString(3));
	            EF.setSEQ_Index_TitleNo(rset.getInt(4));
	            EF.setFestival_period(rset.getString(8));
	            EF.setFestival_ontime(rset.getString(10));
	            list.add(EF);

	         }

	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }

	      return list;
	      
	      
	   }


	public EnjoyComment searchOneComment(Connection conn, int commentNo) {
		EnjoyComment EC = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select User_Comment from Element_Index_Review where Seq_Review=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, commentNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				EC = new EnjoyComment();
				EC.setUSER_COMMNET(rset.getString("User_Comment"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return EC;
	}

	public ArrayList<EnjoyInforData> getListData2(Connection conn, int recordCountPerPage, int currentPage,
			String search, String type, String option) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		// 시작 게시물 계산
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);

		// 끝 게시물 계산
		int end = currentPage * recordCountPerPage;
		String query = "";
		
		if(option.equals("title"))
		{
		query = "select * from (select Refer_List_Main.*,row_number() over(order by INDEX_LIST_TITLE)as num from Refer_List_Main where List_Element = ?) where num between ? and ?";
		}
		else if(option.equals("dayOfIssue")) 
		{
			query = "select * from (select Refer_List_Main.*,row_number() over(order by INDEX_ONDATE desc)as num from Refer_List_Main where List_Element = ?) where num between ? and ?";
		}
		else if(option.equals("hits"))
		{
		query = "select * from (select Refer_List_Main.*,row_number() over(order by INDEX_HITS desc)as num from Refer_List_Main where List_Element = ?) where num between ? and ?";
		}
		else {
		query = "select * from (select Refer_List_Main.*,row_number() over(order by Index_titleNo)as num from Refer_List_Main where List_Element = ?) where num between ? and ?";
		}
		ArrayList<EnjoyInforData> list = new ArrayList<EnjoyInforData>();
		try {
			pstmt = conn.prepareStatement(query);
			if(option.equals("")) {pstmt.setString(1, type);}
			else {pstmt.setString(1, type);}
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);	
			rset = pstmt.executeQuery();
			while (rset.next()) {
				EnjoyInforData EID = new EnjoyInforData();
				EID.setList_Element(rset.getString(1));
				EID.setIndex_TitleNo(rset.getInt(2));
				EID.setIndex_List_title(rset.getString(3));
				EID.setIndex_List_IntroImage(rset.getString(4));
				EID.setIndex_Ondate(rset.getDate(5));
				EID.setIndex_List_Tags(rset.getString(6));
				EID.setIndex_in_mainText(rset.getString(7));
				EID.setIndex_First_Course_title(rset.getString(8));
				EID.setIndex_first_course_comment(rset.getString(9));
				EID.setIndex_LastComment(rset.getString(10));
				EID.setIndex_LastIamge(rset.getString(11));
				EID.setIndex_Hits(rset.getInt(12));

				list.add(EID);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return list;

	}

	public String getPageNavi2(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage,
			String search, String type, String option) {

		// 게시물의 토탈 개수를 구해야 함
		int recordTotalCount = 0;
		// 총 게시물 개수 저장 변수 (정보가 없으므로 초기값은 0)
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "SELECT count(*)AS totalCount FROM Refer_List_Main where list_element = ? ";
		//String query = "SELECT count(*)AS totalCount FROM List_Element where contents like ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, type);			
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

		// 사용자가 현재 페이지가 1페이지 인데 더 아래 페이지를 요청할 경우
		// 혹은 마지막 페이지가 120 페이지 인데 다음 페이지를
		// 요청할 경우에 대한 에러 방지 설정
		// 1보다 아래를 요청하면 1로 셋팅
		// 마지막보다 다음 페이지를 요청하면 마지막 페이지 값으로 셋팅
		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}

		// 현재 페이지를 기점으로 시작 navi와 끝 navi를 만들어야 함
		// 현재 페이지가 1이라면? 1~5
		// 현재 페이지가 3이라면? 1~5
		// 현재 페이지가 7이라면? 6~10
		// 현재 페이지가 12라면? 11~15
		// 시작 페이지 구하는 공식은?
		// -> ((현재페이지-1)/리스트개수)*리스트개수+1
		// 만약 1페이지 라면?
		// -> ((1-1)/5)*5+1 => 시작 페이지는 1
		// 만약 3페이지 라면?
		// -> ((3-1)/5)*5+1 => 시작 페이지는 1
		// 만약 7페이지 라면?
		// -> ((7-1)/5)*5+1 => 시작 페이지는 6
		// 만약 12페이지 라면?
		// -> ((12-1)/5)*5+1 => 시작 페이지는 11

		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;

		// 끝 navi 구하는 공식 (쉬움)
		// 시작navi + 보여줄 navi 개수 - 1;
		// 만약 시작 navi 1이라면?
		// 1 + 5 -1 => 5

		int endNavi = startNavi + naviCountPerPage - 1;

		// 끝 navi를 구할때 주의 해야 할점
		// 토탈 navi 가 122 라고 할때! (현재 페이지는 121이라고 할때)
		// 시작 navi => ((121-1)/5)*5+1 = 121
		// 끝 navi => 121 + 5 -1 = 125
		// 이렇기 때문에 마지막 navi 부분은 아래 코드를 추가 해야 함
		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}

		// 페이지 navi에서 사용할 '<' 모양과 '>' 모양을 사용하기 위해
		// 필요한 변수 2개 생성 (시작과 끝은 필요 없으므로 !)

		boolean needPrev = true;
		boolean needNext = true;
		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}

		// 여기까지 기본적인 구조는 끝남
		StringBuilder sb = new StringBuilder(); // 오랜만이야..

		if (needPrev) { // 시작이 1페이지가 아니라면!
			sb.append("<li><a style='height:47px;line-height:47px;' href='/enjoyList?currentPage=" + (startNavi - 1) +"&serarch="+search+"&type="+type+"&sort="+option+"'> « </a></li>");
		}
		else { // 시작 페이지가 1페이지라면 !
			sb.append("<li class='disabled'> <span>«</span> </li>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<li class='active'><a style='height:47px;line-height:47px;' href='/enjoyList?currentPage=" + i +"&serarch="+search+"&type="+type+ "&sort="+option+"'> " + i + " </a></li>");
			} else {
				sb.append("<li><a style='height:47px;line-height:47px;' href='/enjoyList?currentPage=" + i +"&serarch="+search+"&type="+type+  "&sort="+option+"'> " + i + " </a></li>");
			}
		}
		if (needNext) { // 끝페이지가 아니라면!
			sb.append("<li><a style='height:47px;line-height:47px;' href='/enjoyList?currentPage=" + (endNavi + 1) +"&serarch="+search+"&type="+type+  "&sort="+option+"'> » </a></li>");
		}else {
			sb.append("<li class='disabled'> <span>»</span> </li>");
		}
		
		

		return sb.toString();
	}

	public EnjoyInforData getOneData2(int sEQ_Index_TitleNo, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String Query ="select * from Refer_List_Main where Index_TitleNo = ? ";
		EnjoyInforData EID = null;
		try {
			pstmt = conn.prepareStatement(Query);
			pstmt.setInt(1, sEQ_Index_TitleNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				
				EID = new EnjoyInforData();
				EID.setList_Element(rset.getString(1));
				EID.setIndex_TitleNo(rset.getInt(2));
				EID.setIndex_List_title(rset.getString(3));
				EID.setIndex_List_IntroImage(rset.getString(4));
				EID.setIndex_Ondate(rset.getDate(5));
				EID.setIndex_List_Tags(rset.getString(6));
				EID.setIndex_in_mainText(rset.getString(7));
				EID.setIndex_First_Course_title(rset.getString(8));
				EID.setIndex_first_course_comment(rset.getString(9));
				EID.setIndex_LastComment(rset.getString(10));
				EID.setIndex_LastIamge(rset.getString(11));
				EID.setIndex_Hits(rset.getInt(12));
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return EID;
	}

	public ArrayList<EnjoyInforDataDetail> getOneDetailData2(int indexNo, Connection conn) {
		EnjoyInforDataDetail EIDD = null;
		PreparedStatement pstmt = null;
		ArrayList<EnjoyInforDataDetail> list = new ArrayList<EnjoyInforDataDetail>();
		String Query = "select * from  Refer_List_Sub where Index_TitleNo = ?";
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(Query);
			pstmt.setInt(1,indexNo);
			rset = pstmt.executeQuery();
			
			while(rset.next())
			{
				EIDD = new EnjoyInforDataDetail();
				EIDD.setIndex_TitleNo(rset.getInt(1));
				EIDD.setIndex_CourseNo(rset.getInt(2));
				EIDD.setIndex_CurrentNo(rset.getInt(3));
				EIDD.setIndex_CourseIcon(rset.getString(4));
				EIDD.setIndex_Title(rset.getString(5));
				EIDD.setIndex_SubTitle(rset.getString(6));
				EIDD.setIndex_Image(rset.getString(7));
				EIDD.setIndex_content(rset.getString(8));
				EIDD.setIndex_utilly_title(rset.getString(9));
				EIDD.setIndex_utilly_addr(rset.getString(10));
				EIDD.setIndex_uitlly_time(rset.getString(11));
				EIDD.setIndex_utilly_phone(rset.getString(12));
				EIDD.setIndex_utilly_weburl(rset.getString(13));
				list.add(EIDD);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		
		}

		return list;
	}
	
	public String countComment(int indexNo, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String count = null;
		
		String query = "SELECT count(*)AS totalCount FROM(select * from Element_Index_Review where SEQ_INDEX_TITLENO=?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getString("totalCount");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return count;
	}

	public int countHits(int indexNo, Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query="update List_Element set Index_Hits=Index_Hits+1 where Index_TitleNo=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int countReferHits(int indexNo, Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "update Refer_List_Main set Index_Hits=Index_Hits+1 where Index_TitleNo=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, indexNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}


	
}

