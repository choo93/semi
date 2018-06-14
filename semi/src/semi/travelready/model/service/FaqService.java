package semi.travelready.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.travelready.model.dao.FaqDao;
import semi.travelready.model.vo.Faq;
import semi.travelready.model.vo.FaqPageData;

public class FaqService {

	public FaqPageData faqAll(int currentPage) {
		Connection conn=JDBCTemplate.getConnection();
		
		int recordCountPerPage=10;
		int naviCountPerPage=5;
		
		ArrayList<Faq> list=new FaqDao().getCurrentPage(conn,currentPage,recordCountPerPage);
		FaqPageData fpd=new FaqDao().getPageNavi(conn,currentPage,recordCountPerPage,naviCountPerPage);
		
		int resultcurrentPage=fpd.getCurrentPage();
		int endNavi=fpd.getEndNavi();
		int startNavi=fpd.getStartNavi();
		int pageTotalCount=fpd.getPageTotalCount();
		int recordTotalCount=fpd.getRecordTotalCount();
		
		FaqPageData fpd2=null;
		
		if(!list.isEmpty()) {
			fpd2=new FaqPageData();
			fpd2.setNoticelist(list);
			fpd2.setCurrentPage(resultcurrentPage);
			fpd2.setEndNavi(endNavi);
			fpd2.setStartNavi(startNavi);
			fpd2.setPageTotalCount(pageTotalCount);
			fpd2.setRecordTotalCount(recordTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return fpd2;
	}

	public FaqPageData searchList(int currentPage, String search) {
		Connection conn=JDBCTemplate.getConnection();
		
		int recordCountPerPage=10;
		int naviCountPerPage=5;
		
		ArrayList<Faq> list=new FaqDao().getSearchCurrentPage(conn,currentPage,recordCountPerPage,search);
		FaqPageData fpd=new FaqDao().getSearchPageNavi(conn,currentPage,recordCountPerPage,naviCountPerPage,search);
		
		int resultcurrentPage=fpd.getCurrentPage();
		int endNavi=fpd.getEndNavi();
		int startNavi=fpd.getStartNavi();
		int pageTotalCount=fpd.getPageTotalCount();
		int recordTotalCount=fpd.getRecordTotalCount();
		
		FaqPageData fpd2=null;
		
		if(!list.isEmpty()) {
			fpd2=new FaqPageData();
			fpd2.setNoticelist(list);
			fpd2.setCurrentPage(resultcurrentPage);
			fpd2.setEndNavi(endNavi);
			fpd2.setStartNavi(startNavi);
			fpd2.setPageTotalCount(pageTotalCount);
			fpd2.setRecordTotalCount(recordTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return fpd2;
	}

	public FaqPageData searchList2(int currentPage, String search) {
		Connection conn=JDBCTemplate.getConnection();
		
		int recordCountPerPage=10;
		int naviCountPerPage=5;
		
		ArrayList<Faq> list=new FaqDao().getSearchCurrentPage2(conn,currentPage,recordCountPerPage,search);
		FaqPageData fpd=new FaqDao().getSearchPageNavi2(conn,currentPage,recordCountPerPage,naviCountPerPage,search);
		
		int resultcurrentPage=fpd.getCurrentPage();
		int endNavi=fpd.getEndNavi();
		int startNavi=fpd.getStartNavi();
		int pageTotalCount=fpd.getPageTotalCount();
		int recordTotalCount=fpd.getRecordTotalCount();
		
		FaqPageData fpd2=null;
		
		if(!list.isEmpty()) {
			fpd2=new FaqPageData();
			fpd2.setNoticelist(list);
			fpd2.setCurrentPage(resultcurrentPage);
			fpd2.setEndNavi(endNavi);
			fpd2.setStartNavi(startNavi);
			fpd2.setPageTotalCount(pageTotalCount);
			fpd2.setRecordTotalCount(recordTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return fpd2;
	}

}
