package semi.hotel.model.vo;

public class RoomInfo {
	private String roomCode;
	private String roomTitle;
    private String roomPrice;
    private String roomExplain;
    private int roomCapacity;
	public RoomInfo() {}
	
	
	
	
	
	public RoomInfo(String roomCode, String roomTitle, String roomPrice, String roomExplain, int roomCapacity) {
		super();
		this.roomCode = roomCode;
		this.roomTitle = roomTitle;
		this.roomPrice = roomPrice;
		this.roomExplain = roomExplain;
		this.roomCapacity = roomCapacity;
	}

	public String getRoomTitle() {
		return roomTitle;
	}
	public void setRoomTitle(String roomTitle) {
		this.roomTitle = roomTitle;
	}
	public String getRoomCode() {
		return roomCode;
	}
	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getRoomExplain() {
		return roomExplain;
	}
	public void setRoomExplain(String roomExplain) {
		this.roomExplain = roomExplain;
	}
    public int getRoomCapacity() {
		return roomCapacity;
	}
	public void setRoomCapacity(int roomCapacity) {
		this.roomCapacity = roomCapacity;
	}





	@Override
	public String toString() {
		return "roomCode=" + roomCode + ", roomTitle=" + roomTitle + ", roomPrice=" + roomPrice
				+ ", roomExplain=" + roomExplain + ", roomCapacity=" + roomCapacity;
	}
	
	
	
	

    
}
