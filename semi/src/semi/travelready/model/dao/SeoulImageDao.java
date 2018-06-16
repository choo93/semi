package semi.travelready.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.travelready.model.vo.Qna;
import semi.travelready.model.vo.QnaPageData;
import semi.travelready.model.vo.SeoulImageFile;
import semi.travelready.model.vo.SeoulImagePageData;

public class SeoulImageDao {

	public int imageUpload(Connection conn, SeoulImageFile sif) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="insert into seoulImage values(SeoulImage_SEQ.nextval,?,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, sif.getTitle());
			pstmt.setString(2, sif.getImageName());
			pstmt.setString(3, sif.getAfterImageName());
			pstmt.setString(4, sif.getImagePath());
			pstmt.setString(5, sif.getImageViewPath());
			pstmt.setTimestamp(6, sif.getImageUploadTime());
			pstmt.setLong(7, sif.getImageFileSize());
			
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
		
	}

	public ArrayList<SeoulImageFile> getCurrentPage(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int start=currentPage*recordCountPerPage-(recordCountPerPage-1);
		
		int end=currentPage*recordCountPerPage;
		
		String query="select * from" +
				"(select SEOULIMAGE.*,row_number() over(order by imageNo desc)as num from SEOULIMAGE)" + 
				"where num between ? and ?";
		
		ArrayList<SeoulImageFile> list=new ArrayList<SeoulImageFile>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				SeoulImageFile sif=new SeoulImageFile();
				sif.setImageN0(rset.getInt("imageno"));
				sif.setTitle(rset.getString("title"));
				sif.setImageName(rset.getString("imageName"));
				sif.setAfterImageName(rset.getString("afterImageName"));
				sif.setImagePath(rset.getString("imagepath"));
				sif.setImageUploadTime(rset.getTimestamp("imageuploadtime"));
				sif.setImageFileSize(rset.getLong("imagefilesize"));
				sif.setImageViewPath(rset.getString("imageviewpath"));
				
				list.add(sif);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	public SeoulImagePageData getPageNavi(Connection conn, int currentPage, int recordCountPerPage,
			int naviCountPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int recordTotalCount=0;
		
		String query="select count(*)as totalCount from seoulimage";
		
		try {
			pstmt=conn.prepareStatement(query);
			rset=pstmt.executeQuery();
			if(rset.next());{
			recordTotalCount=rset.getInt("totalCount");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		int pageTotalCount=0;
		
		if(recordTotalCount%recordCountPerPage!=0) {
			pageTotalCount=recordTotalCount/recordCountPerPage+1;
		}else {
			pageTotalCount=recordTotalCount/recordCountPerPage;
		}
		
		if(currentPage<1) {
			currentPage=1;
		}else if(currentPage>pageTotalCount) {
			currentPage=pageTotalCount;
		}
		
		int startNavi=((currentPage-1)/naviCountPerPage)*naviCountPerPage+1;
		
		int endNavi=startNavi + naviCountPerPage -1;
		
		if(endNavi>pageTotalCount) {
			endNavi=pageTotalCount;
		}
		
		SeoulImagePageData sipd=new SeoulImagePageData();
		sipd.setCurrentPage(currentPage);
		sipd.setEndNavi(endNavi);
		sipd.setStartNavi(startNavi);
		sipd.setPageTotalCount(pageTotalCount);
		sipd.setRecordTotalCount(recordTotalCount);
		
		return sipd;
	}

}
