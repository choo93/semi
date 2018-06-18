package semi.festival.model.vo;

import java.sql.Date;

public class FestivalComment {
	private int titleNo;
	private String title;
	private String userId;
	private String userImage;
	private String userComment;
	private int reviewNo;
	private Date WriteDate;

	public FestivalComment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FestivalComment(int titleNo, String title, String userId, String userImage, String userComment, int reviewNo,
			Date writeDate) {
		super();
		this.titleNo = titleNo;
		this.title = title;
		this.userId = userId;
		this.userImage = userImage;
		this.userComment = userComment;
		this.reviewNo = reviewNo;
		WriteDate = writeDate;
	}

	public int getTitleNo() {
		return titleNo;
	}

	public void setTitleNo(int titleNo) {
		this.titleNo = titleNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public String getUserComment() {
		return userComment;
	}

	public void setUserComment(String userComment) {
		this.userComment = userComment;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public Date getWriteDate() {
		return WriteDate;
	}

	public void setWriteDate(Date writeDate) {
		WriteDate = writeDate;
	}


}
