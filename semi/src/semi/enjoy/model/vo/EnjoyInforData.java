package semi.enjoy.model.vo;

import java.sql.Date;

public class EnjoyInforData {

	
	private String List_Element;
	private int Index_TitleNo;
	private String Index_List_title;
	private String Index_List_IntroImage;
	private Date Index_Ondate;
	private String Index_List_Tags;
	private String Index_in_mainText;
	private String Index_First_Course_title;
	private String Index_first_course_comment;
	private String Index_LastComment;
	private String Index_LastIamge;
	private int Index_Hits;
	public String getList_Element() {
		return List_Element;
	}
	public void setList_Element(String list_Element) {
		List_Element = list_Element;
	}
	public int getIndex_TitleNo() {
		return Index_TitleNo;
	}
	public void setIndex_TitleNo(int index_TitleNo) {
		Index_TitleNo = index_TitleNo;
	}
	public String getIndex_List_title() {
		return Index_List_title;
	}
	public void setIndex_List_title(String index_List_title) {
		Index_List_title = index_List_title;
	}
	public String getIndex_List_IntroImage() {
		return Index_List_IntroImage;
	}
	public void setIndex_List_IntroImage(String index_List_IntroImage) {
		Index_List_IntroImage = index_List_IntroImage;
	}
	public Date getIndex_Ondate() {
		return Index_Ondate;
	}
	public void setIndex_Ondate(Date index_Ondate) {
		Index_Ondate = index_Ondate;
	}
	public String getIndex_List_Tags() {
		return Index_List_Tags;
	}
	public void setIndex_List_Tags(String index_List_Tags) {
		Index_List_Tags = index_List_Tags;
	}
	public String getIndex_in_mainText() {
		return Index_in_mainText;
	}
	public void setIndex_in_mainText(String index_in_mainText) {
		Index_in_mainText = index_in_mainText;
	}
	public String getIndex_First_Course_title() {
		return Index_First_Course_title;
	}
	public void setIndex_First_Course_title(String index_First_Course_title) {
		Index_First_Course_title = index_First_Course_title;
	}
	public String getIndex_first_course_comment() {
		return Index_first_course_comment;
	}
	public void setIndex_first_course_comment(String index_first_course_comment) {
		Index_first_course_comment = index_first_course_comment;
	}
	public String getIndex_LastComment() {
		return Index_LastComment;
	}
	public void setIndex_LastComment(String index_LastComment) {
		Index_LastComment = index_LastComment;
	}
	public String getIndex_LastIamge() {
		return Index_LastIamge;
	}
	public void setIndex_LastIamge(String index_LastIamge) {
		Index_LastIamge = index_LastIamge;
	}
	public int getIndex_Hits() {
		return Index_Hits;
	}
	public void setIndex_Hits(int index_Hits) {
		Index_Hits = index_Hits;
	}

	public EnjoyInforData(String list_Element, int index_TitleNo, String index_List_title, String index_List_IntroImage,
			Date index_Ondate, String index_List_Tags, String index_in_mainText, String index_First_Course_title,
			String index_first_course_comment, String index_LastComment, String index_LastIamge, int index_Hits) {
		super();
		List_Element = list_Element;
		Index_TitleNo = index_TitleNo;
		Index_List_title = index_List_title;
		Index_List_IntroImage = index_List_IntroImage;
		Index_Ondate = index_Ondate;
		Index_List_Tags = index_List_Tags;
		Index_in_mainText = index_in_mainText;
		Index_First_Course_title = index_First_Course_title;
		Index_first_course_comment = index_first_course_comment;
		Index_LastComment = index_LastComment;
		Index_LastIamge = index_LastIamge;
		Index_Hits = index_Hits;
	}
	
	public EnjoyInforData() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
