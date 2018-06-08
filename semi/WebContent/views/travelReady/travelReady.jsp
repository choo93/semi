<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>	
</head>
<style>
	#image
	{
	width:50%; 
	height:400px; 
	background-color:red; 
	float:right; 
	background-image:url(/views/travelReady/image/image.jpg);
	background-repeat:no-repeat;
	background-size:100% 100%;
	z-index: 1;
	vertical-align: middle;
	}
	
	.middle
	{
	line-height: normal;
    display: inline-block;
    width:90%;
    height:100px;
    vertical-align: middle;
    margin-left: 5%;
    margin-right:5%; 
    margin-top:200px;
    position: relative;
    z-index: 2;
	}
	h2{
	color:white;
	font-size:50px;
	margin-bottom:10px;
	}
	.text
	{
	
	}
</style>
<body id="scroll">
	<%@ include file="/views/main/header.jsp" %>
	<section>
	<div style="width:100%; height:1200px;" >
	<a href="/views/travelReady/GuideBookMap.jsp">
	<div style="width:50%; height:400px; background-color:blue; float:left; line-height:300px;">가이드북 & 지도</div></a>
	
	<div id="image">
		<div class="middle">
		<h2>서울 관광 이미지</h2>
		<div class="text">
		<p style="color:yellow;">Down<p>
		</div>
		</div>
	</div>
	
	<div style="width:50%; height:400px; background-color:pink; float:left;"></div>
	<div style="width:50%; height:400px; background-color:green; float:right;"></div>
		<div style="width:50%; height:400px; background-color:black; float:left;"></div>
	<div style="width:50%; height:400px; background-color:skyblue; float:right;"></div>
		</div>
	</section>
	<%@ include file="/views/main/footer.jsp" %>
</body>
</html>