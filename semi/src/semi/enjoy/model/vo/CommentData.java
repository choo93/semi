package semi.enjoy.model.vo;

import java.util.ArrayList;

public class CommentData {

	
	private ArrayList<EnjoyComment> CommentList;
	private String pageNavi;
	public ArrayList<EnjoyComment> getCommentList() {
		return CommentList;
	}
	public void setCommentList(ArrayList<EnjoyComment> commentList) {
		CommentList = commentList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	public CommentData(ArrayList<EnjoyComment> commentList, String pageNavi) {
		super();
		CommentList = commentList;
		this.pageNavi = pageNavi;
	}
	public CommentData() {
		// TODO Auto-generated constructor stub
	}
	
	
}
