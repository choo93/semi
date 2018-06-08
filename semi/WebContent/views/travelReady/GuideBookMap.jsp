<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>	
</head>
	

	<style>
	div{
	overflow-x:hidden;
		overflow-y:hidden;
	}
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
    }
    #content
    {
    width:100%;
    min-height:1000px;
    padding-left:0px;
    }
    #guidebookRq
    {
    	width:100%;
    	border:3px;
    	height:180px;
    	margin-bottom:30px;
    	background:url(
				http://korean.visitseoul.net/humanframe/theme/visitseoul/assets/images/content/guidebook.png);
		background-repeat:no-repeat;
		background-size:70% 120%;
		
		overflow-x:hidden;
		overflow-y:hidden;
				
    
    }
    #guidebookRq>a
    {
    	width:65%;
    	height:120px;
    	display:inline-block;
    	padding-top:40px;
    	padding-left:60%;
    	font-size:40px;
    	font-weight:400;
    }
    
    #guidebookRq>a strong
    {
    	margin-top:5px;
    	border:3px;
    	text-align:center;
    	background-color:#007dc3;
    	color:white;
    	font-size:40px;
    	margin-left:9%;
    	border-radius: 9px;
    }
    #guidebookDn
    {
   
    	width:100%;
    	height:2000px;
    	
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
    	
    }
    .button
    {
    	border:1px solid red;
    	border-radius:5px;
    	text-align:center;
    	color:red;
    	font-weight:800;
    }
	</style>

<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
	<section>
		<%@ include file="/views/travelReady/GuideBookHeader.jsp" %>
			<div id="pagecontent">
				<section id="content">
					<div id="guidebookRq">
						<a href="GuideBookRequest.jsp">
							무료가이드북&지도<br>
							<strong>
								 신청하기
							</strong>
						</a>
					</div>
					<div id="guidebookDn">
						<div class="item">
							<div class="img" style="background-image:url(http://korean.visitseoul.net/comm/getImage?srvcId=GUIDEBOOK&parentSn=41&fileTy=THUMB&fileNo=11);"></div>
							<div class="name">2018서울 관광가이드북</div>
							<div class="button">PDF View<br>(76MB)</div>
						</div>
						<div class="item">
							<div class="img">2</div>
							<div class="name">2</div>
							<div class="button">2</div>
						</div>
						<div class="item"> 
							<div class="img">3</div>
							<div class="name">3</div>
							<div class="button">3</div>
						</div>
						<div class="item">
							<div class="img">4</div>
							<div class="name">4</div>
							<div class="button">4</div>
						</div>
						<div class="item"></div>
						<div class="item"></div>
						<div class="item"></div>
						<div class="item"></div>
						<div class="item"></div>
						<div class="item"></div>
						<div class="item"></div>
						<div class="item"></div>
					</div>
				</section>
			</div>
	
	</section>
<%@ include file="/views/main/footer.jsp" %>
</body>
</html>