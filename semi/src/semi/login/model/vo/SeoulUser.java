package semi.login.model.vo;

import java.sql.Date;

public class SeoulUser {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String userAddr;
	private Date userJoindate;
	private String userActive;
	private Date userModified;
	
	public SeoulUser() {}

	public SeoulUser(int userNo, String userId, String userPwd, String userName, String userEmail, String userPhone,
			String userAddr, Date userJoindate, String userActive, Date userModified) {
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAddr = userAddr;
		this.userJoindate = userJoindate;
		this.userActive = userActive;
		this.userModified = userModified;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public Date getUserJoindate() {
		return userJoindate;
	}

	public void setUserJoindate(Date userJoindate) {
		this.userJoindate = userJoindate;
	}

	public String getUserActive() {
		return userActive;
	}

	public void setUserActive(String userActive) {
		this.userActive = userActive;
	}

	public Date getUserModified() {
		return userModified;
	}

	public void setUserModified(Date userModified) {
		this.userModified = userModified;
	}

	@Override
	public String toString() {
		return "SeoulUser [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userEmail=" + userEmail + ", userPhone=" + userPhone + ", userAddr=" + userAddr + ", userJoindate="
				+ userJoindate + ", userActive=" + userActive + ", userModified=" + userModified + "]";
	}
	
	

}
