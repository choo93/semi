package semi.enjoy.model.vo;

import java.sql.Date;

public class EnjoyComment {	
	
	private int SEQ_INDEX_TITLENO;
	private String INDEX_TITLE;
	private String USER_ID;
	private String USER_IMAGE;
	private String USER_COMMNET;
	private int SEQ_REIVEW;
	private Date Write_Date;
	public int getSEQ_INDEX_TITLENO() {
		return SEQ_INDEX_TITLENO;
	}
	public void setSEQ_INDEX_TITLENO(int sEQ_INDEX_TITLENO) {
		SEQ_INDEX_TITLENO = sEQ_INDEX_TITLENO;
	}
	public String getINDEX_TITLE() {
		return INDEX_TITLE;
	}
	public void setINDEX_TITLE(String iNDEX_TITLE) {
		INDEX_TITLE = iNDEX_TITLE;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_IMAGE() {
		return USER_IMAGE;
	}
	public void setUSER_IMAGE(String uSER_IMAGE) {
		USER_IMAGE = uSER_IMAGE;
	}
	public String getUSER_COMMNET() {
		return USER_COMMNET;
	}
	public void setUSER_COMMNET(String uSER_COMMNET) {
		USER_COMMNET = uSER_COMMNET;
	}
	public int getSEQ_REIVEW() {
		return SEQ_REIVEW;
	}
	public void setSEQ_REIVEW(int sEQ_REIVEW) {
		SEQ_REIVEW = sEQ_REIVEW;
	}
	
	public Date getWrite_Date() {
		return Write_Date;
	}
	public void setWrite_Date(Date write_Date) {
		Write_Date = write_Date;
	}
	public EnjoyComment(int sEQ_INDEX_TITLENO, String iNDEX_TITLE, String uSER_ID, String uSER_IMAGE,
			String uSER_COMMNET, int sEQ_REIVEW, Date write_Date) {
		super();
		SEQ_INDEX_TITLENO = sEQ_INDEX_TITLENO;
		INDEX_TITLE = iNDEX_TITLE;
		USER_ID = uSER_ID;
		USER_IMAGE = uSER_IMAGE;
		USER_COMMNET = uSER_COMMNET;
		SEQ_REIVEW = sEQ_REIVEW;
		Write_Date = write_Date;
	}
	public EnjoyComment() {
		// TODO Auto-generated constructor stub
	}
	
	
		
	
}
