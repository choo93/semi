package semi.travelready.model.vo;

import java.sql.Date;

public class GuideBookRequest {
	private int orderNo;
	private String name;
	private String email;
	private String phone;
	private String addr;
	private int guideBookNum;
	private int mapNum;
	private Date orderDate;
	private String deliveryCheck;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getGuideBookNum() {
		return guideBookNum;
	}
	public void setGuideBookNum(int guideBookNum) {
		this.guideBookNum = guideBookNum;
	}
	public int getMapNum() {
		return mapNum;
	}
	public void setMapNum(int mapNum) {
		this.mapNum = mapNum;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getDeliveryCheck() {
		return deliveryCheck;
	}
	public void setDeliveryCheck(String deliveryCheck) {
		this.deliveryCheck = deliveryCheck;
	}
}
