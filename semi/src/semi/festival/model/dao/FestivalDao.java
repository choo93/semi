package semi.festival.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.festival.model.vo.Festival;
import semi.festival.model.vo.FestivalComment;


public class FestivalDao {

	public ArrayList<Festival> getListData(Connection conn, int recordCountPerPage, int currentPage, String search,
			String season) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Festival> list = new ArrayList<Festival>();
		// 시작 게시물 계산
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);

		// 끝 게시물 계산
		int end = currentPage * recordCountPerPage;

		String query = "select * from (select festival.*,row_number() over(order by Index_titleNo)as num from festival where festival_season = ?) where num between ? and ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, season);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);	
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Festival f = new Festival();
				f.setFestivalNo(rset.getInt("festival_index"));
				f.setFestivalSeason(rset.getString("festival_season"));
				f.setFestivalTitle(rset.getString("festival_title"));
				f.setTitleNo(rset.getInt("Index_TitleNo"));
				f.setFestivalBasicInfo(rset.getString("festival_basicinfo"));
				f.setFestivalDetailInfo(rset.getString("festival_detailinfo"));
				f.setFestivalWriteDate(rset.getDate("festival_writeDate"));
				f.setFestivalPeriod(rset.getString("festival_period"));
				f.setFestivalAddr(rset.getString("festival_addr"));
				f.setFestivalOntime(rset.getString("festival_ontime"));
				f.setFestivalTell(rset.getString("festival_tell"));
				f.setFestivalNotice(rset.getString("festival_notice"));
				f.setFestivalUtility(rset.getString("festival_utility"));
				f.setFestivalSite(rset.getString("festival_site"));
				f.setFestivalPayment(rset.getString("festival_payment"));
				f.setFestivalTag(rset.getString("festival_tag"));
				f.setFestivalLatitude(rset.getDouble("festival_latitude"));
				f.setFestivalLongtitude(rset.getDouble("festival_longtitude"));
				f.setFestivalMainImg(rset.getString("festival_mainimg"));
				f.setFestivalSubImg1(rset.getString("festival_subimg1"));
				f.setFestivalSubImg2(rset.getString("festival_subimg2"));
				
				list.add(f);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return list;
	}

	public String getPageNavi(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage,
			String search, String season) {
		System.out.println("안녕"+season);
		// 게시물의 토탈 개수를 구해야 함
		int recordTotalCount = 0;
		// 총 게시물 개수 저장 변수 (정보가 없으므로 초기값은 0)
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println(season);
		String query = "SELECT count(*)AS totalCount FROM FESTIVAL where FESTIVAL_SEASON = ? ";
		//String query = "SELECT count(*)AS totalCount FROM List_Element where contents like ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, season);			
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
			sb.append("<li> <a href='/festivalList?currentPage=" + (startNavi - 1) +"&season="+season+  "'> « </a> </li>");
		} else { // 시작 페이지가 1페이지라면 !
			sb.append("<li class='disabled'> <span>«</span> </li>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<li class='active'><a href='/festivalList?currentPage=" + i +"&season="+season+ "'>" + i + "</a></li>");
			} else {
				sb.append("<li> <a href='/festivalList?currentPage=" + i +"&season="+season+  "'> " + i + " </a> </li>");
			}
		}
		if (needNext) { // 끝페이지가 아니라면!
			sb.append("<li><a href='/festivalList?currentPage=" + (endNavi + 1) +"&season="+season+  "'> » </a></li>");
		}else {
			sb.append("<li class='disabled'> <span>»</span> </li>");
		}

		return sb.toString();
	}

	public Festival festivalSelect(Connection conn, int titleNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from festival where index_titleno = ?";
		Festival f = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, titleNo);
			
			rset = pstmt.executeQuery();
			if(rset.next())
			{
				f = new Festival();
				f.setFestivalNo(rset.getInt("festival_index"));
				f.setFestivalSeason(rset.getString("festival_season"));
				f.setFestivalTitle(rset.getString("festival_title"));
				f.setTitleNo(rset.getInt("Index_TitleNo"));
				f.setFestivalBasicInfo(rset.getString("festival_basicinfo"));
				f.setFestivalDetailInfo(rset.getString("festival_detailinfo"));
				f.setFestivalWriteDate(rset.getDate("festival_writeDate"));
				f.setFestivalPeriod(rset.getString("festival_period"));
				f.setFestivalAddr(rset.getString("festival_addr"));
				f.setFestivalOntime(rset.getString("festival_ontime"));
				f.setFestivalTell(rset.getString("festival_tell"));
				f.setFestivalNotice(rset.getString("festival_notice"));
				f.setFestivalUtility(rset.getString("festival_utility"));
				f.setFestivalSite(rset.getString("festival_site"));
				f.setFestivalPayment(rset.getString("festival_payment"));
				f.setFestivalTag(rset.getString("festival_tag"));
				f.setFestivalLatitude(rset.getDouble("festival_latitude"));
				f.setFestivalLongtitude(rset.getDouble("festival_longtitude"));
				f.setFestivalMainImg(rset.getString("festival_mainimg"));
				f.setFestivalSubImg1(rset.getString("festival_subimg1"));
				f.setFestivalSubImg2(rset.getString("festival_subimg2"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return f;
	}

	public int insertComment(Connection conn, FestivalComment fc) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query="INSERT INTO ELEMENT_INDEX_REVIEW VALUES(?,?,?,'',?,ELEMENT_INDEX_REVIEW_SEQ.NEXTVAL,SYSDATE,0,0,'')";
		System.out.println(fc.getTitle());
		System.out.println(fc.getTitleNo());
		System.out.println(fc.getUserId());
		System.out.println(fc.getUserComment());
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, fc.getTitleNo());
			pstmt.setString(2, fc.getTitle());
			pstmt.setString(3, fc.getUserId());
			pstmt.setString(4, fc.getUserComment());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public ArrayList<FestivalComment> selectComment(Connection conn, int titleNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<FestivalComment> list = new ArrayList<FestivalComment>();
		String query="SELECT * FROM ELEMENT_INDEX_REVIEW WHERE SEQ_Index_TitleNo=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, titleNo);
			rset = pstmt.executeQuery();
			
			while (rset.next())
			{
				FestivalComment fc = new FestivalComment();
				fc.setTitleNo(rset.getInt("SEQ_INDEX_TITLENO"));
				fc.setUserId(rset.getString("USER_ID"));
				fc.setUserImage(rset.getString("USER_IMAGE"));
				fc.setUserComment(rset.getString("USER_COMMENT"));
				fc.setReviewNo(rset.getInt("SEQ_REVIEW"));
				fc.setWriteDate(rset.getDate("WRITE_DATE"));
			
				
				list.add(fc);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public int commentDelete(Connection conn, int reviewNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query="delete from element_index_review where seq_review = ?";
		

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reviewNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

}
