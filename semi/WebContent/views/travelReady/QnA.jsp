<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="semi.travelready.model.vo.*" import="java.util.*" %>
<%
	QnaPageData qpd=(QnaPageData)request.getAttribute("qnaPageData");
	ArrayList<Qna> list=qpd.getNoticelist();
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
	<link rel="stylesheet" href="../../css/main.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>

		

<style>
#pagetitle
	{
	position:relative;
 	padding-left:3%;
 	padding-right:3%;
    padding-bottom: 20px;
    border-bottom: 1px solid #d6d6d6;
    width:94%;
    height:120px;
    margin-bottom:35px;
    }
    
    #title
    {
    	position:relative;
    	width:94%;
    	height:120px;
    	margin-left:3%;
    	margin-right:3%;
    	line-height:70px;
    	overflow-x:hidden;
		overflow-y:hidden;
    }
     #pagecontent
    {
    	min-height:1000px;
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
   
    }
    #content
    {
    margin:0 auto;
    width:960px;
    min-height:1000px;
    padding-left:0px;
    }
    #faqtitle
    {
    	width:960px;
    	height:90px;
  
    	margin-top:30px;
    	margin-bottom:30px;
    
    }
    #faqtitleimg
    {
    width: 74px;
    height: 74px;
    background-image:url(/views/travelReady/image/Faq_0.jpg);
    background-repeat: no-repeat;
    background-size:100% 100%;
    margin:0px;
    float:left;
}
legend
{
	visibility: hidden;
	widgth:0px;
	height:0px;
}

fieldset{
	border:0px;
}

ul{
	width:100%;
	height:100%;
}

#QnA ul li{
	width:100%;
	height:10%;
	list-style:none;
	float:left;
	 background-repeat: no-repeat; 
	 background-size:100% 70%;
	 text-align:center;
	 line-height:180px;
}
span
{
	display:table-cell;
	height:78px;
	
}
#faqcontent
{
	margin-top:2%;
	width:100%;
	height:98%;

}


</style>
<script>
if (self.name != 'reload') {
    self.name = 'reload';
    self.location.reload(true);
}
else self.name = '';
</script>

<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
<section>
  		<div id="pagetitle">
			<div id="title">
				<p style="height:50px;">현재위치  : 여행준비 > 질문 & 답변</p>
				<h3 style="font-size:50px;">질문 & 답변</h3>
			</div>
			</div>
			
			<div id="pagecontent">
			<section id="content">
				<h2 style="font-size:24px; font-weight:bold; color:#0080ff;">질문 & 답변</h2>
				<div id="faqtitle">
				<div id="faqtitleimg"></div>
				<strong style="font-size:18px;">"서울 관광에 관해서 궁금하신 사항을 질문해주세요. 어떤 질문이든 환영하며, 신속하게 답변 드리겠습니다"</strong><br>
				<form action="/faq">
				<input type="submit" value="FAQ게시판">
				</form>
				여행박사 상품 및 서비스에 대해 궁금하신 사항을 친절하게 안내해 드리겠습니다. <br>
				질문을 하시기 전에 '자주 하시는 질문'을 찾아보시면 보다 신속하게 궁금증을 해소하실 수 있습니다.<br>
				</div>
				
				<div style="width:100%; height:60px; margin-bottom:10px;">
					<fieldset>
						<legend>게시글 검색</legend>
						<button class="btn btn-outline-primary">등록일</button>
						<button class="btn btn-outline-primary">해결된 질문</button>
						<button class="btn btn-outline-primary">미해결된 질문</button>
					</fieldset>
				
				</div>
				
				
				<div id="QnA" style="width:100%; height:580px;">
					<table class="table">
						<tr>
							<th style="width:10%;">번호</th><th style="width:50%; text-align:center;">제목</th><th style="width:15%;">글쓴이</th><th style="width:15%;">등록일</th><th style="width:10%;">조회수</th>
						</tr>
						<%for(Qna q:list){ %>
						<tr>
							<td><%=q.getQuestionNo()%></td><td><div style="width:20%; height:17.4px; float:left;"><%=q.getQuestionChk()%></div>
							<div style="width:80%; margin-left:20%; height:17.4px;"><a href="/qnaSelect?questionNo=<%=q.getQuestionNo()%>&hits=<%=q.getHits()%>"><%=q.getTitle()%></a></div>
							</td><td><%=q.getUserName()%></td><td><%=q.getWriteDate()%></td><td><%=q.getHits()%></td>
						</tr>
						
						<%} %>
						
					</table>
					<button class="btn btn-primary">글쓰기</button>
				
				</div>
				
				<div  id="navi" style="width:100%; height:50px; padding-top:30px; padding-bottom:50px; text-align:center;">
					<%for(int i=qpd.getStartNavi(); i<=qpd.getEndNavi();i++){ 
					if(i==qpd.getCurrentPage()){%>
						<a class="btn btn-primary btn-lg" href='/qna?currentPage=<%=i%>'><%=i%></a>
					<%}else{ %>
						<a class="btn btn-primary btn-lg" href='/qna?currentPage=<%=i%>'><%=i%></a>
					<%} %>
				<%} %>
				</div>
		 
			</section>
			
			</div>

			
			</section>
			<%@ include file="/views/main/footer.jsp"%>
</body>
</html>