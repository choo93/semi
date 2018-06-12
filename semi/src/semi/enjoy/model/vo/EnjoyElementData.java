package semi.enjoy.model.vo;

import semi.enjoy.model.service.EnjoyService;

public class EnjoyElementData {

	private EnjoyListData ELD;		
	private EnjoyDetailData1 edd1;
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
	public EnjoyElementData(EnjoyListData eLD, EnjoyDetailData1 edd1) {
		super();
		ELD = eLD;
		this.edd1 = edd1;
	}
	public EnjoyElementData() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
