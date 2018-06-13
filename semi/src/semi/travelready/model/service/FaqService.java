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
		
		FaqPageData fpd2=null;
		
		if(!list.isEmpty()) {
			fpd2=new FaqPageData();
			fpd2.setNoticelist(list);
			fpd2.setCurrentPage(resultcurrentPage);
			fpd2.setEndNavi(endNavi);
			fpd2.setStartNavi(startNavi);
			fpd2.setPageTotalCount(pageTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return fpd2;
	}

}
