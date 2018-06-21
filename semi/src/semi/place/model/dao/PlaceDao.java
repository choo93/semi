package semi.place.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.place.model.vo.PlaceRank;
import semi.place.model.vo.PlaceRankComment;

public class PlaceDao {

	public ArrayList<PlaceRank> getListData(Connection conn, int recordCountPerPage, int currentPage, String search,
			int type) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		// 시작 게시물 계산
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);

		// 끝 게시물 계산
		int end = currentPage * recordCountPerPage;

		String query = "select * from (select placerank.*,row_number() over(order by Index_titleNo)as num from placerank where place_type =? ) where num between ? and ?";
		ArrayList<PlaceRank> list = new ArrayList<PlaceRank>();
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, type);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				PlaceRank pr = new PlaceRank();
				pr.setPlaceNo(rset.getInt("Place_no"));
				pr.setPlaceType(rset.getInt("Place_type"));
				pr.setPlaceTitle(rset.getString("Place_title"));
				pr.setTitleNo(rset.getInt("Index_TitleNo"));
				pr.setPlaceBasicInfo(rset.getString("Place_basicinfo"));
				pr.setPlaceDetailInfo(rset.getString("Place_detailinfo"));
				pr.setPlaceWriteDate(rset.getDate("Place_writeDate"));
				pr.setPlacePeriod(rset.getString("Place_period"));
				pr.setPlaceAddr(rset.getString("Place_addr"));
				pr.setPlaceOntime(rset.getString("Place_ontime"));
				pr.setPlaceTell(rset.getString("Place_tell"));
				pr.setPlaceNotice(rset.getString("Place_notice"));
				pr.setPlaceUtility(rset.getString("Place_utility"));
				pr.setPlaceSite(rset.getString("Place_site"));
				pr.setPlacePayment(rset.getString("Place_payment"));
				pr.setPlaceTag(rset.getString("Place_tag"));
				pr.setPlaceLatitude(rset.getDouble("Place_latitude"));
				pr.setPlaceLongtitude(rset.getDouble("Place_longtitude"));
				pr.setPlaceMainImg(rset.getString("Place_mainimg"));
				pr.setPlaceSubImg1(rset.getString("Place_subimg1"));
				pr.setPlaceSubImg2(rset.getString("Place_subimg2"));

				list.add(pr);
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
			String search, int type) {
		// 게시물의 토탈 개수를 구해야 함
		int recordTotalCount = 0;
		// 총 게시물 개수 저장 변수 (정보가 없으므로 초기값은 0)
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "SELECT count(*)AS totalCount FROM placerank where place_type = ? ";
		// String query = "SELECT count(*)AS totalCount FROM List_Element where contents
		// like ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, type);
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
			sb.append("<li> <a href='/placeRankList?currentPage=" + (startNavi - 1) + "&type="
					+ type + "'> « </a> </li>");
		} else { // 시작 페이지가 1페이지라면 !
			sb.append("<li class='disabled'> <span>«</span> </li>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<li class='active'><a href='/place RankList?currentPage=" + i + "&type=" + type + "'>" + i + "</a></li>");
			} else {
				sb.append("<li> <a href='/placeRankList?currentPage=" + i + "&type=" + type
						+ "'> " + i + " </a> </li>");
			}
		}
		if (needNext) { // 끝페이지가 아니라면!
			sb.append("<li><a href='/placeRankList?currentPage=" + (endNavi + 1) + "&type="	+ type + "'> » </a></li>");
		} else {
			sb.append("<li class='disabled'> <span>»</span> </li>");
		}

		return sb.toString();
	}

	public PlaceRank placeSelect(Connection conn, int titleNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from placerank where index_titleno = ?";
		PlaceRank pr = null;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, titleNo);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				pr = new PlaceRank();
				pr.setPlaceNo(rset.getInt("Place_no"));
				pr.setPlaceType(rset.getInt("Place_type"));
				pr.setPlaceTitle(rset.getString("Place_title"));
				pr.setTitleNo(rset.getInt("Index_TitleNo"));
				pr.setPlaceBasicInfo(rset.getString("Place_basicinfo"));
				pr.setPlaceDetailInfo(rset.getString("Place_detailinfo"));
				pr.setPlaceWriteDate(rset.getDate("Place_writeDate"));
				pr.setPlacePeriod(rset.getString("Place_period"));
				pr.setPlaceAddr(rset.getString("Place_addr"));
				pr.setPlaceOntime(rset.getString("Place_ontime"));
				pr.setPlaceTell(rset.getString("Place_tell"));
				pr.setPlaceNotice(rset.getString("Place_notice"));
				pr.setPlaceUtility(rset.getString("Place_utility"));
				pr.setPlaceSite(rset.getString("Place_site"));
				pr.setPlacePayment(rset.getString("Place_payment"));
				pr.setPlaceTag(rset.getString("Place_tag"));
				pr.setPlaceLatitude(rset.getDouble("Place_latitude"));
				pr.setPlaceLongtitude(rset.getDouble("Place_longtitude"));
				pr.setPlaceMainImg(rset.getString("Place_mainimg"));
				pr.setPlaceSubImg1(rset.getString("Place_subimg1"));
				pr.setPlaceSubImg2(rset.getString("Place_subimg2"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return pr;
	}

	public ArrayList<PlaceRankComment> selectComment(Connection conn, int titleNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<PlaceRankComment> list = new ArrayList<PlaceRankComment>();
		String query="SELECT * FROM ELEMENT_INDEX_REVIEW WHERE SEQ_INDEX_TITLENO=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, titleNo);
			rset = pstmt.executeQuery();
			
			while (rset.next())
			{
				PlaceRankComment prc = new PlaceRankComment();
				prc.setTitleNo(rset.getInt("SEQ_INDEX_TITLENO"));
				prc.setTitle(rset.getString("INDEX_TITLE"));
				prc.setUserId(rset.getString("USER_ID"));
				prc.setUserImage(rset.getString("USER_IMAGE"));
				prc.setUserComment(rset.getString("USER_COMMENT"));
				prc.setReviewNo(rset.getInt("SEQ_REVIEW"));
				prc.setWriteDate(rset.getDate("WRITE_DATE"));
				
				list.add(prc);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

}
