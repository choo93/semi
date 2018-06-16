package semi.travelready.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.travelready.model.dao.QnaDao;
import semi.travelready.model.dao.SeoulImageDao;
import semi.travelready.model.vo.Qna;
import semi.travelready.model.vo.QnaPageData;
import semi.travelready.model.vo.SeoulImageFile;
import semi.travelready.model.vo.SeoulImagePageData;

public class SeoulImageService {

	public int imageUpload(SeoulImageFile sif) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new SeoulImageDao().imageUpload(conn,sif);
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

	public SeoulImagePageData imageAll(int currentPage) {
Connection conn=JDBCTemplate.getConnection();
		
		int recordCountPerPage=10;
		int naviCountPerPage=5;
		
		ArrayList<SeoulImageFile> list=new SeoulImageDao().getCurrentPage(conn,currentPage,recordCountPerPage);
		SeoulImagePageData sipd=new SeoulImageDao().getPageNavi(conn,currentPage,recordCountPerPage,naviCountPerPage);
		
		int resultcurrentPage=sipd.getCurrentPage();
		int endNavi=sipd.getEndNavi();
		int startNavi=sipd.getStartNavi();
		int pageTotalCount=sipd.getPageTotalCount();
		int recordTotalCount=sipd.getRecordTotalCount();
		
		SeoulImagePageData sipd2=null;
		
		if(!list.isEmpty()) {
			sipd2=new SeoulImagePageData();
			sipd2.setNoticelist(list);
			sipd2.setCurrentPage(resultcurrentPage);
			sipd2.setEndNavi(endNavi);
			sipd2.setStartNavi(startNavi);
			sipd2.setPageTotalCount(pageTotalCount);
			sipd2.setRecordTotalCount(recordTotalCount);
			
		}
		JDBCTemplate.close(conn);
		return sipd2;
		
	}

}
