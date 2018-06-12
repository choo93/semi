package semi.travelready.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.concert.model.dao.ConcertDAO;
import semi.concert.model.vo.ConcertInfo;
import semi.travelready.model.dao.GuideBookRequestDao;
import semi.travelready.model.vo.GuideBookDown;
import semi.travelready.model.vo.GuideBookRequest;

public class GuideBookRequestService {

	public int infoInsert(GuideBookRequest gbr) {
		
		Connection conn = JDBCTemplate.getConnection();
		int result=new GuideBookRequestDao().infoInsert(conn,gbr);
		JDBCTemplate.close(conn);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}
		else
		{
			JDBCTemplate.rollback(conn);
		}
		
		return result;
	}

	public ArrayList<GuideBookRequest> RequestList() {
		Connection conn=JDBCTemplate.getConnection();
		ArrayList<GuideBookRequest> list=new GuideBookRequestDao().RequestList(conn);
		JDBCTemplate.close(conn);
		return list;
		
		
	}

	public int deliveryCheck(String deliveryCheck, int orderNo) {
		Connection conn=JDBCTemplate.getConnection();
		int result=new GuideBookRequestDao().deliveryCheck(conn,deliveryCheck,orderNo);
		JDBCTemplate.close(conn);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}
		else {
			JDBCTemplate.rollback(conn);
		}
		return result;
	}

	public ArrayList<GuideBookDown> guideBookDown() {
		Connection conn=JDBCTemplate.getConnection();
		ArrayList<GuideBookDown> list=new GuideBookRequestDao().guideBookDown(conn);
		JDBCTemplate.close(conn);
		return list;
		
	}

	public GuideBookDown pdfDown(int orderNo) {
		Connection conn=JDBCTemplate.getConnection();
		GuideBookDown gbd=new GuideBookRequestDao().pdfDown(conn,orderNo);
		JDBCTemplate.close(conn);
		return gbd;
		
	}

}
