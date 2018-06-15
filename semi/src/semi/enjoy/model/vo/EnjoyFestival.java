package semi.enjoy.model.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class EnjoyFestival {
	
	
	private  int festival_index;   
	private  String festival_title;   
	private  int SEQ_Index_TitleNo; 
	private  String festival_period;   
	private  String festival_ontime;
	private  String StartTime;
	private  String EndTime;
	public int getFestival_index() {
		return festival_index;
	}
	public void setFestival_index(int festival_index) {
		this.festival_index = festival_index;
	}
	public String getFestival_title() {
		return festival_title;
	}
	public void setFestival_title(String festival_title) {
		this.festival_title = festival_title;
	}
	public int getSEQ_Index_TitleNo() {
		return SEQ_Index_TitleNo;
	}
	public void setSEQ_Index_TitleNo(int sEQ_Index_TitleNo) {
		SEQ_Index_TitleNo = sEQ_Index_TitleNo;
	}
	public String getFestival_period() {
		return festival_period;
	}
	public void setFestival_period(String festival_period) {
		this.festival_period = festival_period;
	}
	public String getFestival_ontime() {
		return festival_ontime;
	}
	public void setFestival_ontime(String festival_ontime) {
		this.festival_ontime = festival_ontime;
	}
	public String getStartTime() {
		return StartTime;
	}
	public void setStartTime(String startTime) {
		StartTime = startTime;
	}
	public String getEndTime() {
		return EndTime;
	}
	public void setEndTime(String endTime) {
		EndTime = endTime;
	}
	public EnjoyFestival(int festival_index, String festival_title, int sEQ_Index_TitleNo, String festival_period,
			String festival_ontime, String startTime, String endTime) {
		super();
		this.festival_index = festival_index;
		this.festival_title = festival_title;
		SEQ_Index_TitleNo = sEQ_Index_TitleNo;
		this.festival_period = festival_period;
		this.festival_ontime = festival_ontime;
		StartTime = startTime;
		EndTime = endTime;
	}
	public EnjoyFestival() {
		// TODO Auto-generated constructor stub
	}
     
    
	 
}

