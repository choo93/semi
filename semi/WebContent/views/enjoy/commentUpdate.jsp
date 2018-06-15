<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="semi.enjoy.model.vo.EnjoyDetailData1"
	import="semi.enjoy.model.vo.EnjoyComment"
	import="semi.enjoy.model.vo.CommentData" import="java.util.*"%>
<%
  request.setCharacterEncoding("UTF-8");
  int index_titleNo = Integer.parseInt(request.getParameter("index_titleNo"));
  int seq_review = Integer.parseInt(request.getParameter("SEQ_REVIEW"));
  String index_title = request.getParameter("Index_Title");
  String user_comment = request.getParameter("User_Comment");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정</title>
</head>
<style>
.line:after{
	content: '';
	display: block;
	width: 200px;
	height: 3px;
	background: linear-gradient(to right, #E96187, #FFFFFF);
	position: absolute;
	top: 5;
	left: 0;
}
</style>
<script>
	function back(){
		history.go(-1);
	}
</script>
<body>
<div id="wrap">
    <br>
    <b><font size="5" color="#9B95C9">댓글수정</font></b>
    <div class="line"></div>
    <br>

    <div id="commentUpdate">
        <form action="/enjoyCommentUpdate" method="post" style="display:inline;">
        <input type="text" name="Index_Title" placeholder="<%=index_title %>" maxlength="60"
		style="width: 510px; height: 27px; background-color: #8490C7; color: #FFFFFF; font: 12pt 나눔스퀘어;">
        <br>
        <textarea name="User_Comment" placeholder="<%=user_comment %>" rows="7" cols="61"
		style="resize: none; border: 1px solid #8490C7; background-color: #FFFFFF; color: #8490C7; font: 12pt 나눔스퀘어;"></textarea>
           
        <!-- <textarea rows="7" cols="70" name="User_Comment">${comment.comment_content} -->
        
        <input type="hidden" name="index_titleNo" value="<%=index_titleNo%>"/>
        <input type="hidden" name="SEQ_REVIEW" value="<%=seq_review%>"/>
            <br><br>
            <input type="submit" value="수정"/>
            <input type="button" value="창닫기" onclick="back();">
        </form>
        
    </div>
</div>    
</body>
</html>