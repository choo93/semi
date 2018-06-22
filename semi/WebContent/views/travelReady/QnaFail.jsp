<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="semi.travelready.model.vo.*" import="java.util.*" import="semi.login.model.vo.*" %>
<%SeoulUser su=(SeoulUser)session.getAttribute("user"); %>
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

  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>

		

<style>
*{margin:0; padding:0;font-family: 'Nanum Gothic', sans-serif; font-size:0.9rem;}
a
{text-decoration:none!important;color:black;}

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

function logout(){
	alert("로그인시 이용가능한 서비스입니다.");
}
</script>

<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
<section>

			
			<div id="pagecontent">
			<section id="content">
				<h2 style="font-size:24px; font-weight:bold; color:#0080ff;">질문 & 답변</h2>
				<div id="faqtitle">
				<div id="faqtitleimg"></div>
				<strong style="font-size:18px;">"서울 관광에 관해서 궁금하신 사항을 질문해주세요. 어떤 질문이든 환영하며, 신속하게 답변 드리겠습니다"</strong><br>
			
				여행박사 상품 및 서비스에 대해 궁금하신 사항을 친절하게 안내해 드리겠습니다. <br>
				질문을 하시기 전에 '자주 하시는 질문'을 찾아보시면 보다 신속하게 궁금증을 해소하실 수 있습니다.<br>
				</div>
				
				<div style="width:100%; height:60px; margin-bottom:10px;">
					<fieldset>
						<legend>게시글 검색</legend>
						
						
						<a href="/qnaCategory?search=확인완료" class="btn btn-outline-primary">해결된 질문</a>
						<a href="/qnaCategory?search=확인전" class="btn btn-outline-primary">미해결된 질문</a>
						<a href="/faq" class="btn btn-outline-primary">자무 묻는 질문 게시판 이동</a>

						
					</fieldset>
				
				</div>
				
				
				<div id="QnA" style="width:100%; height:auto;">
					<table class="table">
						<tr>
							<th style="width:10%;">번호</th><th style="width:50%; text-align:center;">제목</th><th style="width:15%;">글쓴이</th><th style="width:15%;">등록일</th><th style="width:10%;">조회수</th>
						</tr>
							<tr>
							<th colspan="5">검색 결과가 없습니다.</th>
							</tr>
						
					</table>
						<%if(su!=null){ %>
					<form action="/views/travelReady/QnAWrite.jsp">
					<input type="submit" value="글쓰기" class="btn btn-primary">
				</form>
				<%} %>
				<%if(su==null){ %>
					<button onclick="logout();" class="btn btn-primary">글쓰기</button>
				<%} %>
				</div>
				
	
		 
			</section>
			
			</div>

			
			</section>
			
</body>
</html>