package semi.concert.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class ConcertReserve {
	private int concertReserveNo;
	private String concertTitle;
	private int concertPrice;
	private Timestamp concertReserveTime;
	private Date concertReserveDate;
	
	public ConcertReserve() {}
	
	public int getConcertReserveNo() {
		return concertReserveNo;
	}
	public void setConcertReserveNo(int concertReserveNo) {
		this.concertReserveNo = concertReserveNo;
	}
	public String getConcertTitle() {
		return concertTitle;
	}
	public void setConcertTitle(String concertTitle) {
		this.concertTitle = concertTitle;
	}
	public int getConcertPrice() {
		return concertPrice;
	}
	public void setConcertPrice(int concertPrice) {
		this.concertPrice = concertPrice;
	}
	public Timestamp getConcertReserveTime() {
		return concertReserveTime;
	}
	public void setConcertReserveTime(Timestamp concertReserveTime) {
		this.concertReserveTime = concertReserveTime;
	}
	public Date getConcertReserveDate() {
		return concertReserveDate;
	}
	public void setConcertReserveDate(Date concertReserveDate) {
		this.concertReserveDate = concertReserveDate;
	}
	
	@Override
	public String toString() {
		return "concertReserveNo=" + concertReserveNo + ", concertTitle=" + concertTitle
				+ ", concertPrice=" + concertPrice + ", concertReserveTime=" + concertReserveTime
				+ ", concertReserveDate=" + concertReserveDate;
	}
	
	
}
