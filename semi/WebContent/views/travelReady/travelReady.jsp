<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import ="java.util.*"
	%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes"
	rel="stylesheet">
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script
	src="https://connect.facebook.net/signals/config/1060656730737720?v=2.8.16&amp;r=stable"
	async=""></script>
<script type="text/javascript" async=""
	src="https://www.gstatic.com/recaptcha/api2/v1528135568984/recaptcha__en.js"></script>
<script type="text/javascript"
	src="//m.addthis.com/live/red_lojson/300lo.json?si=5b1b51dbeec25191&amp;bkl=0&amp;bl=1&amp;pdt=1095&amp;sid=5b1b51dbeec25191&amp;pub=ra-591e10580b7aca4f&amp;rev=v8.3.20-wp&amp;ln=en&amp;pc=men&amp;cb=0&amp;ab=-&amp;dp=www.ipgmediabrands.be&amp;fp=services&amp;fr=&amp;of=0&amp;pd=0&amp;irt=1&amp;vcl=1&amp;md=0&amp;ct=1&amp;tct=0&amp;abt=0&amp;cdn=0&amp;pi=1&amp;rb=0&amp;gen=100&amp;chr=UTF-8&amp;colc=1528517084078&amp;jsl=1&amp;uvs=5b1b4b27ba88d234001&amp;skipb=1&amp;callback=addthis.cbs.oln9_56123815837436860"></script>
<script type="text/javascript"
	src="//m.addthisedge.com/live/boost/ra-591e10580b7aca4f/_ate.track.config_resp"></script>
	<% %>

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes"
	rel="stylesheet">
<link rel="stylesheet" href="../../css/main/materialize.min.css">
<link rel="stylesheet" href="../../css/main/main.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main/materialize.min.js"></script>
<script src="../../js/main/main.js"></script>
</head>
<style>
#main .menu {
	width: 50%;
	height: 400px;
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
	margin-top: 200px;
	position: absolute;
	z-index: 2;
}

.font {
	color: white;
	height: 60px;
	font-size: 3.3rem;
	margin-bottom: 10px;
	font-family: 'Great Vibes', cursive;
	overflow: hidden;
	text-overflow: ellipsis;
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

p {
	font-family: Interstate, sans-serif;
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
			 <a href="#">
				<div id="info" class="menu">
					<div class="middle">
						<div class="font">여행 필수 정보</div>
						<p>DISCOVER
						</p>
					</div>
				</div>
			</a>

			<div id="service" class="menu">
						<div class="middle">
						<div class="font">서비스 안내</div>
						<p>DISCOVER
						</p>
						</div>
			</div>
			
			<a href="/seoulImage">
			<div id="image" class="menu">
				<div class="middle">
						<div class="font">서울 관광 이미지</div>
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
			</a> <a href="#">
				<div id="notice" class="menu">
					<div class="middle">
						<div class="font" style="color: black;">공지사항</div>
						<p>DISCOVER
						</p>
					</div>
				</div>
			</a>
		</div>
	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>