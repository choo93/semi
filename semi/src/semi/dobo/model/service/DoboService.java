package semi.dobo.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import semi.dobo.model.dao.DoboDAO;
import semi.dobo.model.vo.DoboInfo;

public class DoboService {

	public DoboInfo selectInfo(int indexNo) {
		Connection conn = JDBCTemplate.getConnection();
		DoboInfo di = new DoboDAO().selectInfo(conn, indexNo);
		JDBCTemplate.close(conn);
		
		return di;
	}

}
