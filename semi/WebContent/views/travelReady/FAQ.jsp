<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="semi.travelready.model.vo.*" import="java.util.*" %>
<%
	FaqPageData fpd=(FaqPageData)request.getAttribute("faqPageData");
	ArrayList<Faq> list=fpd.getNoticelist();
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
    	height:auto;
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
   
    }
    #content
    {
    margin:0 auto;
    width:960px;
    min-height:auto;
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
}

fieldset{
	text-align:center;
	border:0px;
}
#category ul li{
	width:12.5%;
	height:100%;
	list-style:none;
	float:left;
	 background-repeat: no-repeat; 
	 background-size:100% 70%;
	 text-align:center;
	 line-height:180px;
}
.span
{
	width:100px;
	padding-top:60px;
}
#faqcontent
{
	margin-top:2%;
	width:100%;
	height:auto;

}
dt
{
	border-top:1px solid #dcdcdc;
	padding : 10px 20px 10px 45px;
	background-repeat:no-repeat;
	background-image:url(/views/travelReady/image/question.png);
	background-size:3% 100%;
	line-height:22px;
}


dd
{
display:none; 
border-bottom:1px solid #dcdcdc; 
width:100%; 
padding : 10px 20px 10px 45px;
line-height:22px;
background-color:gray;
}





</style>
<script>
var toggleText1 = false;
var toggleText2 = false;
var index=0;
function test(id){

	$('#'+id).toggle('display');

}
</script>

<body id="scroll">
<section>

			
			<div id="pagecontent">
			<section id="content">
				<h2 style="font-size:24px; font-weight:bold; color:#0080ff;">자주 하시는 질문</h2>
				<div id="faqtitle">
				<div id="faqtitleimg"></div>
				<strong style="font-size:18px;">"FAQ를 통해서 원하시는 답변을 쉽고 빠르게 찾아보세요"</strong><br>
				<a href="/qna">게시판</a>

				질문을 하기시 전 자주하시는 질문을 찾아보시면 보다 신속하게 궁금증을 해소하실 수 있습니다.<br>
				원하는 내용을 찾지 못하실 경우 '질문과 답변' 게시판에 문의해 주시면 친절하게 안내해 드리겠습니다.<br>
				</div>
				
				<fieldset>
					<legend>게시물 검색</legend>
					<form action="/faqSearch">
									<div class="input-group">
      <input type="text" class="form-control" name="search" placeholder="Search for..." aria-label="Search for...">
      <span class="input-group-btn">
        <input type="submit" class="btn btn-secondary" value="검색"></button>
 
      </span>
      </div>
					</form>
				</fieldset>
				
				<div id="category" style="width:960px; height:100px; margin-top:30px; margin-bottom:30px;">
					<ul style="width:100%;height:100%;float:left; list-style:none;">
						<a href="/faqCategory?search=서울 시티 투어 탑승"><li style="background-image:url(/views/travelReady/image/bus.png);"><span class="span">서울 시티 투어 탑승</span></li></a>
						<a href="/faqCategory?search=호텔 예약"><li style="background-image:url(/views/travelReady/image/hotel.png);"><span class="span">호텔 예약</span></li></a>
						<a href="/faqCategory?search=도보 관광"><li style="background-image:url(/views/travelReady/image/work.png);"><span class="span">도보 관광</span></li></a>
						<a href="/faqCategory?search=모바일서비스"><li style="background-image:url(/views/travelReady/image/mobile.png);"><span class="span">모바일서비스</span></li></a>
						<a href="/faqCategory?search=문화행사 예매"><li style="background-image:url(/views/travelReady/image/culture.png);"><span class="span">문화행사 예매</span></li></a>
						<a href="/faqCategory?search=사이트이용"><li style="background-image:url(/views/travelReady/image/site.png);"><span class="span">사이트이용</span></li></a>
						<a href="/faqCategory?search=가이드북"><li style="background-image:url(/views/travelReady/image/guidebook.png);"><span class="span">가이드북</span></li></a>
						<a href="/faqCategory?search=기타"><li style="background-image:url(/views/travelReady/image/etc.png);"><span class="span">기타</span></li></a>
					</ul>
				</div>
				
				<div style="width:100%; height:auto;">
					<h3 style="font-size:24px; float:left; margin-right:50px;">FAQ</h3>				
				<form action="/views/travelReady/FAQAnswer.jsp">
				<input type="submit" value="등록" class="btn btn-primary">
				</form>
					<dl id="faqcontent">
					<%for(Faq f:list){ %>
						<dt style="border-bottom:1px solid #dcdcdc;"><a href="#none" onclick="test(<%=f.getFaqNo()%>);">[<%=f.getCategory()%>]<br><%=f.getTitle() %></a></dt>
						<dd name="ans" id="<%=f.getFaqNo()%>"><%=f.getAnswer()%></dd>
					<%} %>
					</dl>					
				</div>
				

				
			
		
			</section>
			
			</div>
			
				<div  id="navi" style="width:100%; height:50px; padding-top:30px; padding-bottom:50px; text-align:center;">
				
				
				<%for(int i=fpd.getStartNavi(); i<=fpd.getEndNavi();i++){ 
					
					
					if(i==fpd.getCurrentPage()){%>
						<a class="btn btn-primary btn-lg" href='/faq?currentPage=<%=i%>'><%=i%></a>
					<%}else{ %>
						<a class="btn btn-primary btn-lg" href='/faq?currentPage=<%=i%>'><%=i%></a>
					<%} %>
					
					
				<%} %>
				</div>

			
			</section>
			<%@ include file="/views/main/footer.jsp"%>
</body>
</html>