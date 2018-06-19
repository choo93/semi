package semi.travelready.model.vo;

import java.sql.Date;

public class SeoulInformationComment {
		private int commentNo;
		private String userName;
		private String content;
		private Date writeDate;
		private int up;
		private int down;
		public int getCommentNo() {
			return commentNo;
		}
		public void setCommentNo(int commentNo) {
			this.commentNo = commentNo;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public Date getWriteDate() {
			return writeDate;
		}
		public void setWriteDate(Date writeDate) {
			this.writeDate = writeDate;
		}
		public int getUp() {
			return up;
		}
		public void setUp(int up) {
			this.up = up;
		}
		public int getDown() {
			return down;
		}
		public void setDown(int down) {
			this.down = down;
		}
		
}
