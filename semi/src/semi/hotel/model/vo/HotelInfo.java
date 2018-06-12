package semi.hotel.model.vo;

public class HotelInfo {
	private int indexNum;
	private String hotelCode;
	private String hotelName;
	private String hotelMainPhoto;
	private String hotelSubPhoto1;
	private String hotelSubPhoto2;
	private String hotelSubPhoto3;
	private String hotelSubPhoto4;
	private String hotelAddress;
	private String hotelPhone;
	private String hotelExplain;
	private Double hotelLatitude;
	private Double hotelLongtitude;
	
	
	public HotelInfo() {}
	
	public HotelInfo(int indexNum, String hotelCode, String hotelName, String hotelMainPhoto, String hotelSubPhoto1,
			String hotelSubPhoto2, String hotelSubPhoto3, String hotelSubPhoto4, String hotelAddress, String hotelPhone,
			String hotelExplain, Double hotelLatitude, Double hotelLongtitude) {
		super();
		this.indexNum = indexNum;
		this.hotelCode = hotelCode;
		this.hotelName = hotelName;
		this.hotelMainPhoto = hotelMainPhoto;
		this.hotelSubPhoto1 = hotelSubPhoto1;
		this.hotelSubPhoto2 = hotelSubPhoto2;
		this.hotelSubPhoto3 = hotelSubPhoto3;
		this.hotelSubPhoto4 = hotelSubPhoto4;
		this.hotelAddress = hotelAddress;
		this.hotelPhone = hotelPhone;
		this.hotelExplain = hotelExplain;
		this.hotelLatitude = hotelLatitude;
		this.hotelLongtitude = hotelLongtitude;
	}
	
	
	public int getIndexNum() {
		return indexNum;
	}
	public void setIndexNum(int indexNum) {
		this.indexNum = indexNum;
	}
	public String getHotelCode() {
		return hotelCode;
	}
	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelMainPhoto() {
		return hotelMainPhoto;
	}
	public void setHotelMainPhoto(String hotelMainPhoto) {
		this.hotelMainPhoto = hotelMainPhoto;
	}
	public String getHotelSubPhoto1() {
		return hotelSubPhoto1;
	}
	public void setHotelSubPhoto1(String hotelSubPhoto1) {
		this.hotelSubPhoto1 = hotelSubPhoto1;
	}
	public String getHotelSubPhoto2() {
		return hotelSubPhoto2;
	}
	public void setHotelSubPhoto2(String hotelSubPhoto2) {
		this.hotelSubPhoto2 = hotelSubPhoto2;
	}
	public String getHotelSubPhoto3() {
		return hotelSubPhoto3;
	}
	public void setHotelSubPhoto3(String hotelSubPhoto3) {
		this.hotelSubPhoto3 = hotelSubPhoto3;
	}
	public String getHotelSubPhoto4() {
		return hotelSubPhoto4;
	}
	public void setHotelSubPhoto4(String hotelSubPhoto4) {
		this.hotelSubPhoto4 = hotelSubPhoto4;
	}
	public String getHotelAddress() {
		return hotelAddress;
	}
	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}
	public String getHotelPhone() {
		return hotelPhone;
	}
	public void setHotelPhone(String hotelPhone) {
		this.hotelPhone = hotelPhone;
	}
	public String getHotelExplain() {
		return hotelExplain;
	}
	public void setHotelExplain(String hotelExplain) {
		this.hotelExplain = hotelExplain;
	}
	public Double getHotelLatitude() {
		return hotelLatitude;
	}
	public void setHotelLatitude(Double hotelLatitude) {
		this.hotelLatitude = hotelLatitude;
	}
	public Double getHotelLongtitude() {
		return hotelLongtitude;
	}
	public void setHotelLongtitude(Double hotelLongtitude) {
		this.hotelLongtitude = hotelLongtitude;
	}
	
}
