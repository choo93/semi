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
	height:98%;

}
dt
{
	border-top:1px solid #dcdcdc;
	padding : 10px 20px 10px 45px;
}

#navi a{
	font-size:30px;
	border:2px solid #0080ff;
	width:35px;
	height:35px;
	border-radius:3px;
	text-align:center;
}
dd
{
display:none; 
border-bottom:1px solid #dcdcdc; 
width:100%; 
padding : 10px 20px 10px 45px;
line-height:22px;
}

</style>
<script>
	function answer(id){
		
		var ss=document.getElementById(id);
		if(ss.style.display=='block'){
			ss.style.display='none';
		}else
			{
			ss.style.display='block'
			}
	
	}

</script>

<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
<section>
  		<div id="pagetitle">
			<div id="title">
				<p style="height:50px;">현재위치  : 여행준비 > FAQ</p>
				<h3 style="font-size:50px;">FAQ</h3>
			</div>
			</div>
			
			<div id="pagecontent">
			<section id="content">
				<h2 style="font-size:24px; font-weight:bold; color:#0080ff;">자주 하시는 질문</h2>
				<div id="faqtitle">
				<div id="faqtitleimg"></div>
				<strong style="font-size:18px;">"FAQ를 통해서 원하시는 답변을 쉽고 빠르게 찾아보세요"</strong><br>
				
				질문을 하기시 전 자주하시는 질문을 찾아보시면 보다 신속하게 궁금증을 해소하실 수 있습니다.<br>
				원하는 내용을 찾지 못하실 경우 '질문과 답변' 게시판에 문의해 주시면 친절하게 안내해 드리겠습니다.<br>
				</div>
				
				<fieldset>
					<legend>게시물 검색</legend>
					<input type="text" name="search" style="width:300px; height:30px;"><input type="submit" value="검색" style="width:150px; height:35px; margin-left:10px;">
				</fieldset>
				
				<div id="category" style="width:960px; height:100px; margin-top:30px; margin-bottom:30px;">
					<ul style="width:100%;height:100%;float:left; list-style:none;">
						<li style="background-image:url(/views/travelReady/image/bus.png);"><span class="span">서울 시티 투어 탑승</span></li>
						<li style="background-image:url(/views/travelReady/image/hotel.png);"><span class="span">호텔 예약</span></li>
						<li style="background-image:url(/views/travelReady/image/work.png);"><span class="span">도보 관광</span></li>
						<li>4</li>
						<li>5</li>
						<li>6</li>
						<li>7</li>
						<li>8</li>
					</ul>
				</div>
				
				<div style="width:100%; height:600px;">
					<h3 style="font-size:24px;">FQA</h3>
					<dl id="faqcontent">
					<%for(Faq f:list){ %>
						<dt style="border-bottom:1px solid #dcdcdc;"><a href="#none" onclick="answer(<%=f.getFaqNo()%>);">[<%=f.getCategory()%>]<br>  <%=f.getTitle() %></a></dt>
						<dd id="<%=f.getFaqNo()%>"><%=f.getAnswer()%></dd>
					<%} %>
					</dl>
				</div>
				<div  id="navi" style="width:100%; height:50px; padding-top:30px; padding-bottom:50px; text-align:center;">
				<%for(int i=fpd.getStartNavi(); i<=fpd.getEndNavi();i++){ 
					if(i==fpd.getCurrentPage()){%>
						<a href='/faq?currentPage=<%=i%>'><%=i%></a>
					<%}else{ %>
						<a href='/faq?currentPage=<%=i%>'><%=i%></a>
					<%} %>
				<%} %>
				</div>
			</section>
			
			</div>
			
			
			</section>
			<%@ include file="/views/main/footer.jsp"%>
</body>
</html>