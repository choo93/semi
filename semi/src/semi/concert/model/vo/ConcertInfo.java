package semi.concert.model.vo;

public class ConcertInfo {
	private int indexNo;
	private String concertCode;
	private String concertSummary;
	private String concertPhoto;
	private String concertDate;
	private String concertGanre;
	private String concertAddress;
	private String concertAge;
	private String concertPrice;
	private String concertExplain;
	private String concertPhone;
	private String concertSite;
	private String concertTraffic;
	private String concertLatitude;
	private String concertLongtitude;
	
	
	public ConcertInfo() {}
	
	
	
	
	public ConcertInfo(int indexNo, String concertCode, String concertSummary, String concertPhoto, String concertDate,
			String concertGanre, String concertAddress, String concertAge, String concertPrice, String concertExplain,
			String concertPhone, String concertSite, String concertTraffic, String concertLatitude,
			String concertLongtitude) {
		this.indexNo = indexNo;
		this.concertCode = concertCode;
		this.concertSummary = concertSummary;
		this.concertPhoto = concertPhoto;
		this.concertDate = concertDate;
		this.concertGanre = concertGanre;
		this.concertAddress = concertAddress;
		this.concertAge = concertAge;
		this.concertPrice = concertPrice;
		this.concertExplain = concertExplain;
		this.concertPhone = concertPhone;
		this.concertSite = concertSite;
		this.concertTraffic = concertTraffic;
		this.concertLatitude = concertLatitude;
		this.concertLongtitude = concertLongtitude;
	}




	public int getIndexNo() {
		return indexNo;
	}
	public void setIndexNo(int indexNo) {
		this.indexNo = indexNo;
	}
	public String getConcertCode() {
		return concertCode;
	}
	public void setConcertCode(String concertCode) {
		this.concertCode = concertCode;
	}
	public String getConcertSummary() {
		return concertSummary;
	}
	public void setConcertSummary(String concertSummary) {
		this.concertSummary = concertSummary;
	}
	public String getConcertPhoto() {
		return concertPhoto;
	}
	public void setConcertPhoto(String concertPhoto) {
		this.concertPhoto = concertPhoto;
	}
	public String getConcertDate() {
		return concertDate;
	}
	public void setConcertDate(String concertDate) {
		this.concertDate = concertDate;
	}
	public String getConcertGanre() {
		return concertGanre;
	}
	public void setConcertGanre(String concertGanre) {
		this.concertGanre = concertGanre;
	}
	public String getConcertAddress() {
		return concertAddress;
	}
	public void setConcertAddress(String concertAddress) {
		this.concertAddress = concertAddress;
	}
	public String getConcertAge() {
		return concertAge;
	}
	public void setConcertAge(String concertAge) {
		this.concertAge = concertAge;
	}
	public String getConcertPrice() {
		return concertPrice;
	}
	public void setConcertPrice(String concertPrice) {
		this.concertPrice = concertPrice;
	}
	public String getConcertExplain() {
		return concertExplain;
	}
	public void setConcertExplain(String concertExplain) {
		this.concertExplain = concertExplain;
	}
	public String getConcertPhone() {
		return concertPhone;
	}
	public void setConcertPhone(String concertPhone) {
		this.concertPhone = concertPhone;
	}
	public String getConcertSite() {
		return concertSite;
	}
	public void setConcertSite(String concertSite) {
		this.concertSite = concertSite;
	}
	public String getConcertTraffic() {
		return concertTraffic;
	}
	public void setConcertTraffic(String concertTraffic) {
		this.concertTraffic = concertTraffic;
	}
	public String getConcertLatitude() {
		return concertLatitude;
	}
	public void setConcertLatitude(String concertLatitude) {
		this.concertLatitude = concertLatitude;
	}
	public String getConcertLongtitude() {
		return concertLongtitude;
	}
	public void setConcertLongtitude(String concertLongtitude) {
		this.concertLongtitude = concertLongtitude;
	}


	@Override
	public String toString() {
		return "indexNo=" + indexNo + ", concertCode=" + concertCode + ", concertSummary=" + concertSummary
				+ ", concertPhoto=" + concertPhoto + ", concertDate=" + concertDate + ", concertGanre=" + concertGanre
				+ ", concertAddress=" + concertAddress + ", concertAge=" + concertAge + ", concertPrice=" + concertPrice
				+ ", concertExplain=" + concertExplain + ", concertPhone=" + concertPhone + ", concertSite="
				+ concertSite + ", concertTraffic=" + concertTraffic + ", concertLatitude=" + concertLatitude
				+ ", concertLongtitude=" + concertLongtitude;
	}
	
	
	
}
