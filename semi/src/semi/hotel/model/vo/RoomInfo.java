package semi.hotel.model.vo;

public class RoomInfo {
    private String roomCode;
    private int roomPrice;
    private String roomExplain;
    private String roomFixedNumber;
	public RoomInfo() {

	}
	public RoomInfo(String roomCode, int roomPrice, String roomExplain, String roomFixedNumber) {
		super();
		this.roomCode = roomCode;
		this.roomPrice = roomPrice;
		this.roomExplain = roomExplain;
		this.roomFixedNumber = roomFixedNumber;
	}
	public String getRoomCode() {
		return roomCode;
	}
	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getRoomExplain() {
		return roomExplain;
	}
	public void setRoomExplain(String roomExplain) {
		this.roomExplain = roomExplain;
	}
	public String getRoomFixedNumber() {
		return roomFixedNumber;
	}
	public void setRoomFixedNumber(String roomFixedNumber) {
		this.roomFixedNumber = roomFixedNumber;
	}
    
	
    
}
