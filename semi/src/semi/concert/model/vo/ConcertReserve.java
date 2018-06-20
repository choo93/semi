package semi.concert.model.vo;

public class ConcertReserve {		// 예약 VO에는 DB에 넣을 때 필요한 정보(컬럼)들과 예약한 목록을 출력할 때 필요한 정보(컬럼)들이 모두 있어야함  
	private int concertReserveNo;
	private String concertCode;
	private String concertTitle;
	private int userNo;
	private String concertPrice;
	private String concertReserveTime;
	private String concertReserveDate;
	private String concertAddress;
	private int seatNo;
	
	public ConcertReserve() {}

	
	
	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public int getSeatNo() {
		return seatNo;
	}



	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}



	public String getConcertAddress() {
		return concertAddress;
	}



	public void setConcertAddress(String concertAddress) {
		this.concertAddress = concertAddress;
	}



	public String getConcertTitle() {
		return concertTitle;
	}

	public void setConcertTitle(String concertTitle) {
		this.concertTitle = concertTitle;
	}

	public int getConcertReserveNo() {
		return concertReserveNo;
	}

	public void setConcertReserveNo(int concertReserveNo) {
		this.concertReserveNo = concertReserveNo;
	}

	public String getConcertCode() {
		return concertCode;
	}

	public void setConcertCode(String concertCode) {
		this.concertCode = concertCode;
	}

	public String getConcertPrice() {
		return concertPrice;
	}

	public void setConcertPrice(String concertPrice) {
		this.concertPrice = concertPrice;
	}

	public String getConcertReserveTime() {
		return concertReserveTime;
	}

	public void setConcertReserveTime(String concertReserveTime) {
		this.concertReserveTime = concertReserveTime;
	}

	public String getConcertReserveDate() {
		return concertReserveDate;
	}

	public void setConcertReserveDate(String concertReserveDate) {
		this.concertReserveDate = concertReserveDate;
	}

	@Override
	public String toString() {
		return "concertReserveNo=" + concertReserveNo + ", concertCode=" + concertCode
				+ ", concertPrice=" + concertPrice + ", concertReserveTime=" + concertReserveTime
				+ ", concertReserveDate=" + concertReserveDate;
	}

	
	
	
	
	
}
