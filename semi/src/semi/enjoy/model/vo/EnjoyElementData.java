package semi.enjoy.model.vo;

import java.util.ArrayList;

import semi.enjoy.model.service.EnjoyService;

public class EnjoyElementData {

	private EnjoyListData ELD;		
	private EnjoyDetailData1 edd1;
	private CommentData cd ;
	private String count;
	public EnjoyListData getELD() {
		return ELD;
	}
	public void setELD(EnjoyListData eLD) {
		ELD = eLD;
	}
	public EnjoyDetailData1 getEdd1() {
		return edd1;
	}
	public void setEdd1(EnjoyDetailData1 edd1) {
		this.edd1 = edd1;
	}
	public CommentData getCd() {
		return cd;
	}
	public void setCd(CommentData cd) {
		this.cd = cd;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public EnjoyElementData(EnjoyListData eLD, EnjoyDetailData1 edd1, CommentData cd, String count) {
		super();
		ELD = eLD;
		this.edd1 = edd1;
		this.cd = cd;
		this.count = count;
	}
	public EnjoyElementData() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}
