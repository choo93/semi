package semi.hotel.model.vo;

public class HotelReserve {
	private int reserveNo;
	private String hotelCode;
	private String hotelName;
	private int userNo;
	private int roomNo;
	private String roomCode;
	private String reserveDate;
	private int price;
	private String address;
	
	public HotelReserve() {}
	
	

	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getHotelName() {
		return hotelName;
	}



	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}



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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "reserveNo=" + reserveNo + ", hotelCode=" + hotelCode + ", userNo=" + userNo + ", roomNo="
				+ roomNo + ", roomCode=" + roomCode + ", reserveDate=" + reserveDate + ", price=" + price;
	}
	
	
	
}
