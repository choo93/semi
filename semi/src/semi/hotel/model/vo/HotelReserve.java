package semi.hotel.model.vo;

public class HotelReserve {
	private int reserveNo;
	private String hotelCode;
	private int userNo;
	private int roomNo;
	private String roomCode;
	private String reserveDate;
	private String price;
	
	public HotelReserve() {}

	public int getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}

	public String getHotelCode() {
		return hotelCode;
	}

	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getRoomCode() {
		return roomCode;
	}

	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "reserveNo=" + reserveNo + ", hotelCode=" + hotelCode + ", userNo=" + userNo + ", roomNo="
				+ roomNo + ", roomCode=" + roomCode + ", reserveDate=" + reserveDate + ", price=" + price;
	}
	
	
	
}
