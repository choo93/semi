package semi.dobo.model.vo;

public class DoboReserve {
	private int reserveNo;
	private String doboCode;
	private String doboTitle;
	private String date;
	private String time;
	private String reserveName;
	private String gender;
	private String nation;
	private String phone;
	private String comment;
	
	
	
	public DoboReserve() {}



	public int getReserveNo() {
		return reserveNo;
	}



	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}



	public String getDoboCode() {
		return doboCode;
	}



	public void setDoboCode(String doboCode) {
		this.doboCode = doboCode;
	}



	public String getDoboTitle() {
		return doboTitle;
	}



	public void setDoboTitle(String doboTitle) {
		this.doboTitle = doboTitle;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public String getTime() {
		return time;
	}



	public void setTime(String time) {
		this.time = time;
	}



	public String getReserveName() {
		return reserveName;
	}



	public void setReserveName(String reserveName) {
		this.reserveName = reserveName;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getNation() {
		return nation;
	}



	public void setNation(String nation) {
		this.nation = nation;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getComment() {
		return comment;
	}



	public void setComment(String comment) {
		this.comment = comment;
	}



	@Override
	public String toString() {
		return "reserveNo=" + reserveNo + ", doboCode=" + doboCode + ", doboTitle=" + doboTitle + ", date="
				+ date + ", time=" + time + ", reserveName=" + reserveName + ", gender=" + gender + ", nation=" + nation
				+ ", phone=" + phone + ", comment=" + comment;
	}

		
}
