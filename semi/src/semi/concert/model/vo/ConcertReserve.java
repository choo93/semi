package semi.concert.model.vo;

public class ConcertReserve {
	private int concertReserveNo;
	private String concertCode;
	private String concertTitle;
	private int concertPrice;
	private String concertReserveTime;
	private String concertReserveDate;
	
	public ConcertReserve() {}

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

	public int getConcertPrice() {
		return concertPrice;
	}

	public void setConcertPrice(int concertPrice) {
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
