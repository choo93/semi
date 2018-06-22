package semi.travelready.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.travelready.model.dao.FaqDao;
import semi.travelready.model.dao.SeoulInformationDao;
import semi.travelready.model.vo.CommentComment;
import semi.travelready.model.vo.Faq;
import semi.travelready.model.vo.FaqPageData;
import semi.travelready.model.vo.SeoulInformationComment;
import semi.travelready.model.vo.SeoulInformationCommentPageData;

public class SeoulInformationService {


	public SeoulInformationCommentPageData commentAll(int currentPage) {
		Connection conn=JDBCTemplate.getConnection();
		
		int recordCountPerPage=10;
		int naviCountPerPage=5;
		
		ArrayList<SeoulInformationComment> list=new SeoulInformationDao().getCurrentPage(conn,currentPage,recordCountPerPage);
		SeoulInformationCommentPageData sicpd=new SeoulInformationDao().getPageNavi(conn,currentPage,recordCountPerPage,naviCountPerPage);
		
		int resultcurrentPage=sicpd.getCurrentPage();
		int endNavi=sicpd.getEndNavi();
		int startNavi=sicpd.getStartNavi();
		int pageTotalCount=sicpd.getPageTotalCount();
		int recordTotalCount=sicpd.getRecordTotalCount();
		SeoulInformationCommentPageData sicpd2=null;
		
		if(!list.isEmpty()) {
			sicpd2=new SeoulInformationCommentPageData();
			sicpd2.setNoticelist(list);
			sicpd2.setCurrentPage(resultcurrentPage);
			sicpd2.setEndNavi(endNavi);
			sicpd2.setStartNavi(startNavi);
			sicpd2.setPageTotalCount(pageTotalCount);
			sicpd2.setRecordTotalCount(recordTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return sicpd2;
		
	}

	public int commentInsert(String content, String userName) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new SeoulInformationDao().commentInsert(conn,content,userName);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
		
	}

	public int insertCommentComment(int commentNo, String content) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new SeoulInformationDao().insertCommentComment(conn,commentNo,content);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
		
	}

	public ArrayList<CommentComment> commentCommentAll() {
		Connection conn=JDBCTemplate.getConnection();
		ArrayList<CommentComment> list=new SeoulInformationDao().commentCommentAll(conn);
		JDBCTemplate.close(conn);
		return list;
		
	}

	public int deleteComment(int commentNo) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new SeoulInformationDao().deleteComment(conn,commentNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
		
	}

	public int deleteCommentComment(int commentNo) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new SeoulInformationDao().deleteCommentComment(conn,commentNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	public int commentUp(int commentNo, int up) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new SeoulInformationDao().commentUp(conn,commentNo,up);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
		
	}

	public int commentDown(int commentNo, int down) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new SeoulInformationDao().commentDown(conn,commentNo,down);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
		
	}

	public SeoulInformationCommentPageData commentArray(int currentPage, String upDown) {
	Connection conn=JDBCTemplate.getConnection();
		
		int recordCountPerPage=10;
		int naviCountPerPage=5;
		
		ArrayList<SeoulInformationComment> list=new SeoulInformationDao().getCurrentPage2(conn,currentPage,recordCountPerPage,upDown);
		SeoulInformationCommentPageData sicpd=new SeoulInformationDao().getPageNavi2(conn,currentPage,recordCountPerPage,naviCountPerPage,upDown);
	
		int resultcurrentPage=sicpd.getCurrentPage();
		int endNavi=sicpd.getEndNavi();
		int startNavi=sicpd.getStartNavi();
		int pageTotalCount=sicpd.getPageTotalCount();
		int recordTotalCount=sicpd.getRecordTotalCount();
		SeoulInformationCommentPageData sicpd2=null;
		
		if(!list.isEmpty()) {
			sicpd2=new SeoulInformationCommentPageData();
			sicpd2.setNoticelist(list);
			sicpd2.setCurrentPage(resultcurrentPage);
			sicpd2.setEndNavi(endNavi);
			sicpd2.setStartNavi(startNavi);
			sicpd2.setPageTotalCount(pageTotalCount);
			sicpd2.setRecordTotalCount(recordTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return sicpd2;
	}

}
