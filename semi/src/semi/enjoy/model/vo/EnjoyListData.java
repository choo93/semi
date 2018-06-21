package semi.enjoy.model.vo;

import java.sql.Date;

public class EnjoyListData {

	private String list_Element;// 분류
	private int index_TitleNo;// 게시물 번호(시퀀스)PK
	private String index_Title;//게시물 제목
	private String index_BasicInfo; // 기본정보 내용
	private Date index_Ondate; // 작성일
	private String index_Tags;// 태그
	private String index_Image;// 게시물 사진(주소)/
	private int index_Hits; //조회수
	public String getList_Element() {
		return list_Element;
	}
	public void setList_Element(String list_Element) {
		this.list_Element = list_Element;
	}
	public int getIndex_TitleNo() {
		return index_TitleNo;
	}
	public void setIndex_TitleNo(int index_TitleNo) {
		this.index_TitleNo = index_TitleNo;
	}
	public String getIndex_Title() {
		return index_Title;
	}
	public void setIndex_Title(String index_Title) {
		this.index_Title = index_Title;
	}
	public String getIndex_BasicInfo() {
		return index_BasicInfo;
	}
	public void setIndex_BasicInfo(String index_BasicInfo) {
		this.index_BasicInfo = index_BasicInfo;
	}
	public Date getIndex_Ondate() {
		return index_Ondate;
	}
	public void setIndex_Ondate(Date index_Ondate) {
		this.index_Ondate = index_Ondate;
	}
	public String getIndex_Tags() {
		return index_Tags;
	}
	public void setIndex_Tags(String index_Tags) {
		this.index_Tags = index_Tags;
	}
	public String getIndex_Image() {
		return index_Image;
	}
	public void setIndex_Image(String index_Image) {
		this.index_Image = index_Image;
	}
	public int getIndex_Hits() {
		return index_Hits;
	}
	public void setIndex_Hits(int index_Hits) {
		this.index_Hits = index_Hits;
	}
	public EnjoyListData(String list_Element, int index_TitleNo, String index_Title, String index_BasicInfo,
			Date index_Ondate, String index_Tags, String index_Image, int index_Hits) {
		super();
		this.list_Element = list_Element;
		this.index_TitleNo = index_TitleNo;
		this.index_Title = index_Title;
		this.index_BasicInfo = index_BasicInfo;
		this.index_Ondate = index_Ondate;
		this.index_Tags = index_Tags;
		this.index_Image = index_Image;
		this.index_Hits = index_Hits;
	}
	public EnjoyListData() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	
}
