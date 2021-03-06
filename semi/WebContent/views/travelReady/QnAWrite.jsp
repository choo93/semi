<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="semi.travelready.model.vo.*" import="java.util.*" import="semi.login.model.vo.*" %>
<%
	Qna q=(Qna)request.getAttribute("qna");
	Answer an=(Answer)request.getAttribute("answer");
	SeoulUser su=(SeoulUser)session.getAttribute("user");
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
    .image{
    background-repeat:no-repeat;
    background-size:50% 100%;
    }
    dl
    {
    width:100%;
    height:80%; 
    padding-top:35px;"
    }
    dt
    {
    float:left;
     width:20%;
     margin-left:5%
    }
    .answer
    {
    	width:80%;
    	height:80%;
    }



</style>
<script>
function back()
{
	history.back(-1);
}
	
function chk()
{
	var title=document.getElementById('Qtitle').value;
	var content=document.getElementById('Qcontent').value;
	
	if(title=="")
		{
			alert("질문을 등록해주세요");
			return false;
		}
	if(content=="")
		{
			alert("내용을 입력해주세요");
			return false;
		}
	else
		{
		alert("질문 등록이 완료되었습니다.");
		}
	
	

		
}

</script>

<body id="scroll">
<section>
			
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
	
				
				
				<div id="QnA" style="width:100%; height:auto;">
				
  <form action="/qnAWrite">
  
  <div class="form-group">
    <label for="exampleFormControlInput1">제목</label>
    <input type="text" name="title" class="form-control" id="Qtitle">
  </div>

  <div class="form-group">
    <label for="exampleFormControlTextarea1">내용</label>
    <textarea class="form-control" name="content" id="Qcontent" rows="23" style="resize:none;"></textarea>
  </div>

					
				
			</div>
			
			<div style="width:960px; height:40px; text-align:center;">
			<input type="hidden" name="userName" value="<%=su.getUserName()%>">
			<input type="hidden" name="userId" value="<%=su.getUserId()%>">
				<input class="btn btn-primary"  type="submit" value="등록" onclick="return chk();">
				</form>
				<button class="btn btn-primary"  onclick="back();">취소</button>
			</div>
			
		 
			</section>
			
			</div>

			
			</section>
			
</body>
</html>