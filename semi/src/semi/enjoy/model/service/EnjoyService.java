package semi.enjoy.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.enjoy.model.dao.Enjoydao;
import semi.enjoy.model.vo.CommentData;
import semi.enjoy.model.vo.EnjoyComment;
import semi.enjoy.model.vo.EnjoyDetailData1;
import semi.enjoy.model.vo.EnjoyFestival;
import semi.enjoy.model.vo.EnjoyInforData;
import semi.enjoy.model.vo.EnjoyInforDataDetail;
import semi.enjoy.model.vo.EnjoyListData;
import semi.enjoy.model.vo.PageData;
import semi.enjoy.model.vo.PageDataRefer;

public class EnjoyService {
	
	public EnjoyDetailData1 getOneDetailData(int IndexNo){
		Connection conn = JDBCTemplate.getConnection();
		
		EnjoyDetailData1 edd1 = new Enjoydao().getOneDetailData(IndexNo,conn);
		
		JDBCTemplate.close(conn);
		
		return edd1;
		
	}
	

	public ArrayList<EnjoyListData> getAllData() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<EnjoyListData> list = new Enjoydao().getAllData(conn);
		
		JDBCTemplate.close(conn);
		
		
		
		return list;
	}
	public EnjoyListData getOneData(int IndexNo) {
		

		
		Connection conn = JDBCTemplate.getConnection();
		
		EnjoyListData ELD = new Enjoydao().getOneData(IndexNo,conn);
		
		
		
		return ELD;
	}
	
	

	public PageData getListData(int currentPage, String search, String type, String option) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		
		int recordCountPerPage  = 10;  // 한페이지에 보일 개시물의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
//		ArrayList<EnjoyListData> list = new Enjoydao().getAllData(conn);
		ArrayList<EnjoyListData> list = new Enjoydao().getListData(conn,recordCountPerPage,currentPage,search,type,option);
		
		String PageNavi = new Enjoydao().getPageNavi(conn,naviCountPerPage,recordCountPerPage,currentPage,search,type,option);
		
		
		
		PageData pd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			pd = new PageData();
			pd.setEnjoyList(list);
			pd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return pd;
	}


	public int insertReview(String reviewTitle, String reviewContents, int indexNo, String userID) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new Enjoydao().insertReview(conn,reviewTitle,reviewContents,indexNo,userID);
		JDBCTemplate.close(conn);
		return result;
	}


	public ArrayList<EnjoyComment> noticeComment(int sEQ_Index_TitleNo) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<EnjoyComment> list = new Enjoydao().noticeComment(sEQ_Index_TitleNo,conn);
		JDBCTemplate.close(conn);
		return list;
	}


	public CommentData getListCommentData(int currentPage, String search, int indexNo) {
		Connection conn = JDBCTemplate.getConnection();		
		int recordCountPerPage  = 5;  // 한페이지에 보일 댓글의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
		
		ArrayList<EnjoyComment> list = new Enjoydao().getListCommentData(conn,recordCountPerPage,currentPage,search,indexNo);
		
		String PageNavi = new Enjoydao().getPageNaviComment(conn,naviCountPerPage,recordCountPerPage,currentPage,search,indexNo);
		
		
		
		CommentData cd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			cd = new CommentData();
			cd.setCommentList(list);
			cd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return cd;
	}

	public int deleteReview(int commentNo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new Enjoydao().deleteReview(conn,commentNo);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}


	public int updateReview(String commentTitle, String comment, int commentNo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new Enjoydao().updateReview(conn,commentTitle,comment,commentNo);
		if(result>0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	   public ArrayList<EnjoyFestival> AllFestivalData() {
		      Connection conn = JDBCTemplate.getConnection();
		      
		      ArrayList<EnjoyFestival> list =new Enjoydao().AllFestivalData(conn);
		      
		      JDBCTemplate.close(conn);
		      
		      return list;
		   
		      
		   }

		public EnjoyComment searchOneComment(int commentNo) {
			Connection conn = JDBCTemplate.getConnection();
			EnjoyComment EC = new Enjoydao().searchOneComment(conn,commentNo);
			JDBCTemplate.close(conn);
			return EC;
		}


		public PageDataRefer getListData2(int currentPage, String search, String type, String option) {
			Connection conn = JDBCTemplate.getConnection();
			
			// 추천코스에 불러오기
			int recordCountPerPage  = 10;  // 한페이지에 보일 개시물의 갯수
			int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
			
//			ArrayList<EnjoyListData> list = new Enjoydao().getAllData(conn);
			ArrayList<EnjoyInforData> list = new Enjoydao().getListData2(conn,recordCountPerPage,currentPage,search,type,option);
			
			String PageNavi = new Enjoydao().getPageNavi2(conn,naviCountPerPage,recordCountPerPage,currentPage,search,type,option);
			
			
			
			PageDataRefer pd =null;
			if(!list.isEmpty() &&!PageNavi.isEmpty()) {
				pd = new PageDataRefer();
				pd.setEnjoyInforData(list);
				pd.setPageNavi(PageNavi);
			}
			
			
			JDBCTemplate.close(conn);
			
			
			
			return pd;
		}


		public EnjoyInforData getOneData2(int sEQ_Index_TitleNo) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			EnjoyInforData EID = new Enjoydao().getOneData2(sEQ_Index_TitleNo,conn);
			
			
			
			return EID;
		}


		public ArrayList<EnjoyInforDataDetail> getOneDetailData2(int IndexNo) {
			Connection conn = JDBCTemplate.getConnection();
			
			ArrayList<EnjoyInforDataDetail> list = new Enjoydao().getOneDetailData2(IndexNo,conn);

			JDBCTemplate.close(conn);
			
			return list;
		}
		
		public String countComment(int indexNo) {
			Connection conn = JDBCTemplate.getConnection();
			String count = new Enjoydao().countComment(indexNo, conn);
			JDBCTemplate.close(conn);
			return count;
		}
		
		public int countHits(int indexNo) {
			Connection conn = JDBCTemplate.getConnection();
			int result = new Enjoydao().countHits(indexNo, conn);
			if(result>0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
			JDBCTemplate.close(conn);
			return result;
		}

	
}
