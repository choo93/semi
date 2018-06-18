<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="semi.travelready.model.vo.*"
    %>
    
   <%ArrayList<GuideBookDown> list=(ArrayList<GuideBookDown>)request.getAttribute("image"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>	
</head>
	

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
    #content
    {
    margin:0 auto;
    width:960px;
    min-height:1800px;
    padding-left:0px;
    }
    #pagecontent
    {
    	min-height:1000px;
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
    }
    .dis
    {
    	width:960px;
    }
    #guidebookrequest
    {
    width:960px; 
 
    height:100%;
    background:url(
				http://korean.visitseoul.net/humanframe/theme/visitseoul/assets/images/content/guidebook.png);
	background-repeat:no-repeat;
	background-size:80% 120%;
    }
    #guidebookrequest>a
    {
    	width:30%;
    	height:95%;
    	padding-left:70%;
    	padding-top:5%;
    	display:inline-block;
    }
   #rq{
   margin-left:55px; 
   font-size:30px; 
   background-color:#007dc3;
   border-radius:9px;
   color:white;
   border:5px soild white;
   }
    .item
    {
    	float:left;
    	width:26%;
    	height:400px;
    
    	margin:3% 3% 50px 3%;
    }
 .img
    {
     background-repeat:no-repeat;
    	width:100%;
    	height:75%;
    	background-size:100% 120%;
    	
    }
    .name
    {
    	width:100%;
    	height:5%;
    	margin-top:8px;
    	font-weight:700;
    	color:black;
    	overflow:hidden;text-overflow:ellipsis;
    }
     .button
    {
    	border:1px solid red;
    	border-radius:5px;
    	text-align:center;
    	color:red;
    	font-weight:800;
    	overflow:hidden;text-overflow:ellipsis;

    }
    #btn{
    color:red;
    background-color:white;
    border:0px;
    font-weight:700;
    }
</style>
<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
	<section>
			<div id="pagetitle">
			<div id="title">
				<p style="height:50px;">현재위치  : 여행준비 > 가이드북 & 지도</p>
				<h3 style="font-size:50px;">가이드북&지도</h3>
			</div>
			</div>
			<div id="pagecontent">
				<section id="content">
					<div class="dis" style="height:200px;">
						<div id="guidebookrequest">
						<a href="/views/travelReady/GuideBookRequest2.jsp">
							<strong style="font-size:25px;">무료가이드북 & 지도</strong>
							<br>
								<strong id="rq">신청하기</strong>

							</a>
						</div>
						
					</div>
					
					<div class="dis" style="height:2000px; margin-top:32px;">
					<form action="/adminGuideBookRequest">
						<input type="submit" value="신청목록확인">
					</form>
					<%for(GuideBookDown gbd : list) {%>
						<div class="item">
							<div class="img" style="<%=gbd.getGuideBookImagePath()%>"></div>
							<div class="name"><%=gbd.getGuideName()%></div>
							<form action="/pdfDown" method="post">
							<input type="hidden" name="orderNo" value="<%=gbd.getGuideNo()%>" >
							<div class="button">PDF View<br>(<%=gbd.getFileSize()%>)<input type="submit" id="btn" value="다운로드"></div>
							</form>
						</div>
						<%} %>
						
					
					</div>
				</section>
			
			</div>
		</section>
<%@ include file="/views/main/footer.jsp" %>
</body>
</html>