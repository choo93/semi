package semi.travelready.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.travelready.model.dao.FaqDao;
import semi.travelready.model.dao.QnaDao;
import semi.travelready.model.vo.Answer;
import semi.travelready.model.vo.Faq;
import semi.travelready.model.vo.FaqPageData;
import semi.travelready.model.vo.Qna;
import semi.travelready.model.vo.QnaPageData;

public class QnaService {

	public QnaPageData QnaAll(int currentPage) {
		Connection conn=JDBCTemplate.getConnection();
		
		int recordCountPerPage=10;
		int naviCountPerPage=5;
		
		ArrayList<Qna> list=new QnaDao().getCurrentPage(conn,currentPage,recordCountPerPage);
		QnaPageData qpd=new QnaDao().getPageNavi(conn,currentPage,recordCountPerPage,naviCountPerPage);
		
		int resultcurrentPage=qpd.getCurrentPage();
		int endNavi=qpd.getEndNavi();
		int startNavi=qpd.getStartNavi();
		int pageTotalCount=qpd.getPageTotalCount();
		int recordTotalCount=qpd.getRecordTotalCount();
		
		QnaPageData qpd2=null;
		
		if(!list.isEmpty()) {
			qpd2=new QnaPageData();
			qpd2.setNoticelist(list);
			qpd2.setCurrentPage(resultcurrentPage);
			qpd2.setEndNavi(endNavi);
			qpd2.setStartNavi(startNavi);
			qpd2.setPageTotalCount(pageTotalCount);
			qpd2.setRecordTotalCount(recordTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return qpd2;
		
		
	}

	public Qna qnaSelect(int questionNo) {
		Connection conn=JDBCTemplate.getConnection();
		Qna q=new QnaDao().qnaSelect(conn,questionNo);
		JDBCTemplate.close(conn);
		return q;
		
		
	}

	public int hitsUpdate(int questionNo, int hits) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new QnaDao().hitsUpdate(conn,questionNo,hits);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}
		else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return result;
		
	}

	public Answer qnaComment(int questionNo) {
		Connection conn=JDBCTemplate.getConnection();
		Answer an=new QnaDao().qnaComment(conn,questionNo);
		
		JDBCTemplate.close(conn);
		return an;
		
	}

	public int qnaChkUpdate(int questionNo) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new QnaDao().qnaChkUpdate(conn,questionNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return result;
	}

	public int insertQna(String title, String content) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new QnaDao().insertQna(conn,title,content);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return result;
		
	}

	public int answerWrite(String answer, int questionNo) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new QnaDao().answerWrite(conn,answer,questionNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return result;
		
	}

	public QnaPageData searchList(int currentPage, String search) {
		Connection conn=JDBCTemplate.getConnection();
		
		int recordCountPerPage=10;
		int naviCountPerPage=5;
		
		ArrayList<Qna> list=new QnaDao().getSearchCurrentPage(conn,currentPage,recordCountPerPage,search);
		QnaPageData qpd=new QnaDao().getSearchPageNavi(conn,currentPage,recordCountPerPage,naviCountPerPage,search);
		
		int resultcurrentPage=qpd.getCurrentPage();
		int endNavi=qpd.getEndNavi();
		int startNavi=qpd.getStartNavi();
		int pageTotalCount=qpd.getPageTotalCount();
		int recordTotalCount=qpd.getRecordTotalCount();
		
		QnaPageData qpd2=null;
		
		if(!list.isEmpty()) {
			qpd2=new QnaPageData();
			qpd2.setNoticelist(list);
			qpd2.setCurrentPage(resultcurrentPage);
			qpd2.setEndNavi(endNavi);
			qpd2.setStartNavi(startNavi);
			qpd2.setPageTotalCount(pageTotalCount);
			qpd2.setRecordTotalCount(recordTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return qpd2;
	}

}
