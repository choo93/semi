<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import ="java.util.*"
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 여행준비</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main/materialize.min.js"></script>
</head>
<style>
*{margin:0; padding:0;font-family: 'Nanum Gothic', sans-serif; font-size:0.9rem;}
a
{text-decoration:none!important;color:black;}
#main .menu {
	width: 50%;
	height:600px;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	z-index: 1;
	vertical-align: middle;
	position: relative;
}

#image {
	float: right;
	background-image: url(/views/travelReady/image/image.png);
}

#guideBook {
	float: left;
	background-image: url(/views/travelReady/image/guide.png);
}

#notice {
	float: right;
	background-image: url(/views/travelReady/image/notice.png);
}

#FAQ {
	float: left;
	background-image: url(/views/travelReady/image/FAQ.png);
}
#info
{
	float: right;
	background-image: url(/views/travelReady/image/info.png);
}
#service
{
	float: left;
	background-color:black;
}

.middle {
	line-height: normal;
	display: inline-block;
	width: 90%;
	height: 100px;
	vertical-align: middle;
	margin-left: 5%;
	margin-right: 5%;
	margin-top: 429px;
	position: absolute;
	z-index: 2;
}

.font {
	color: white;
	height: 60px;
	font-size: 3.3rem;
	margin-bottom: 10px;
	overflow: hidden;
	text-overflow: ellipsis;
	font-family: 'Do Hyeon', sans-serif;
}

.middle:after {
	content: '';
	display: block;
	width: 35px;
	height: 2px;
	background: #fed900;
	position: absolute;
	bottom: 0;
	left: 0;
}

.middle p {
	font-family: 'Do Hyeon', sans-serif;
	color: yellow;
	position: absolute;
	letter-spacing: 2px;
	font-size: 16px;
}
</style>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
		<div id="main" style="width: 100%; height: 1200px;">
		
			<a href="/guideBookDown">
				<div id="guideBook" class="menu">
					<div class="middle">
						<div class="font">가이드북 & 지도</div>
						<p>DISCOVER
						</p>
					</div>
				</div>
			</a>
			 <a href="travelInformation.jsp">
				<div id="info" class="menu">
					<div class="middle">
						<div class="font">여행 필수 정보</div>
						<p>DISCOVER
						</p>
					</div>
				</div>
			</a>
			
				<a href="/faq">
				<div id="FAQ" class="menu">
					<div class="middle">
						<div class="font">묻고 답하기</div>
						<p>DISCOVER
						</p>
					</div>
				</div>
			</a> 
			
		
			
			<a href="/seoulImage">
			<div id="image" class="menu">
				<div class="middle">
						<div class="font">서울 관광 이미지</div>
						<p>DISCOVER
						</p>
						</div>
				
				</div>
				</a>

		
		</div>
	</section>

</body>
</html>