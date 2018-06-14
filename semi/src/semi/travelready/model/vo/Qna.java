package semi.travelready.model.vo;

import java.sql.Date;

public class Qna {
		private int questionNo;
		private Date writeDate;
		private int hits;
		private String userName;
		private String title;
		private String content;
		private String userId;
		private String questionChk;
		
		public String getQuestionChk() {
			return questionChk;
		}
		public void setQuestionChk(String questionChk) {
			this.questionChk = questionChk;
		}
		public int getQuestionNo() {
			return questionNo;
		}
		public void setQuestionNo(int questionNo) {
			this.questionNo = questionNo;
		}
		public Date getWriteDate() {
			return writeDate;
		}
		public void setWriteDate(Date writeDate) {
			this.writeDate = writeDate;
		}
		public int getHits() {
			return hits;
		}
		public void setHits(int hits) {
			this.hits = hits;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
}
