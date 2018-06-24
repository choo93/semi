<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*"%>
<%
	SeoulUser user = (SeoulUser) session.getAttribute("user");
%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>Template</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<link rel="stylesheet" href="../../css/main/materialize.min.css">
<link rel="stylesheet" href="../../css/main/template.css">
<script src="../../js/main/jquery-3.3.1.min.js"></script>
<script src="../../js/main/materialize.min.js"></script>
<script src="../../js/main/template.js"></script>
<style>
/* materialize !important */
input[type=text]:not(.browser-default):focus:not([readonly]){
	border-bottom:1px solid #b43029;
	box-shadow:0 1px 0 0 #b43029;
}
input[type=password]:not(.browser-default):focus:not([readonly]){
	border-bottom:1px solid #b43029;
	box-shadow:0 1px 0 0 #b43029;
}
input[type=search]:not(.browser-default):focus:not([readonly]){
	border-bottom:1px solid #b43029;
	box-shadow:0 1px 0 0 #b43029;
}
input[type=text]:not(.browser-default):focus:not([readonly])+label{
	color:#b43029;
}
input[type=password]:not(.browser-default):focus:not([readonly])+label{
	color:#b43029;
}
input[type="checkbox"]:checked+span:not (.lever ):before {
	border-right: 2px solid #b43029;
	border-bottom: 2px solid #b43029;
}
a{
	text-decoration:none!important;
}
</style>
</head>
<body>
	<header>
		<div id="template_header">
			<a href="#" data-target="slide-out" class="sidenav-trigger"><img
				src="/image/main/menu.png"></a>
		</div>
		<div id="slide-out" class="sidenav">
			<!-- desktop -->
			<a href="http://localhost"><img
				src="/image/main/logo.png" id="main_logo" style="width:83%;"></a>
				
			<style>
			#login_join{
				text-align:center;
				margin-top:20px;
				margin-bottom:20px;
			}
			.main-login{
				margin-right:20px;	
			}
			#login_join>a:hover{
				color:#b43029;
			}
			.category{
				cursor:pointer;
				width:100%;
				display:block;
				border-left:3px solid white;
				padding-left:17px;
			}
			.category:hover{
				border-left:3px solid #b43029;
			}
			.subcategory{
				display:none;
			}
			.subcategory>li{
				height:40px;
				line-height:40px;
			}
			.subcategory>li>a{
				display:block;
				width:100%;
				padding-left:40px;
			}
			.subcategory>li>a:hover{
				background-color:rgba(0,0,0,0.05);
			}
			a, ul>li{
				font-size:1rem!important;
			}
			</style>
				
			<% if(user==null){ %>
	        <div id="login_join">
	        	<a href="/views/main/login.jsp" class="main-login">로그인</a>
	        	<a href="/views/main/joinus.jsp">회원가입</a>
	        </div>    
	        <% } else { %>
	        <div id="login_join" class="login_after">	
			<% if(user.getUserId().equals("admin")){ %>
				<p style="margin-bottom:8px;font-size:1rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>로 로그인 하셨습니다</p>
			<% } else { %>
				<p style="margin-bottom:8px;margin-left:-20px;font-size:1rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>님 환영합니다</p>
				<a href="/myPage" style="margin-left:-19px;margin-right:15px;">마이페이지</a>
			<% } %>
			<a href="/logout">로그아웃</a><br>
	        </div>
	        <% } %>	
	        	        		
			<!-- mobile -->
			<div id="fixed_login">
			<%
				if (user == null) {
			%>
			<form action="/login" method="post"
				style="margin: 17px; margin-top: 30px;">
				<div class="input-field">
					<input type="text" name="userId"> <label for="id">아이디</label>
				</div>
				<div class="input-field">
					<input type="password" name="userPwd"> <label for="id">비밀번호</label>
				</div>
				<input class="btn submit_button" type="submit" value="LOGIN">
			</form>
			<%
				} else {
			%>
			
			<%
				if (user.getUserId().equals("admin")) {
			%>
			<p style="margin-left: 30px; margin-top: 20px;margin-bottom:15px;">
				<span style="font-weight:bold;"><%=user.getUserName()%></span>로 로그인 하셨습니다<br>
				<a href="/logout" class="header-logout">로그아웃</a>
			</p>
			<style>
				.header-logout{
					float:right;
					margin-top:20px;
					color:#b43029;
					margin-right:20px!important;
				}
				.header-logout:hover{
					color:#b43029;
				}
			</style>
			<%
				} else {
			%>
			<p id="main_login_page">
				<p><span style="margin-left:74px;font-weight:bold;margin-bottom:20px;font-size:1rem;"><%=user.getUserName()%></span>님 환영합니다</p>
				<a href="/myPage" style="padding-right:10px;margin-left:69px;font-size:1rem;">마이페이지</a> 
				<a href="/logout" class="header-logout">로그아웃</a>
			</p>
			<style>
				#main_login_page>a:hover{
					color:#b43029!important;
				}
			</style>
			
			<%
				}
			%>
			<%
				}
			%>
			</div>
			<!-- common category -->
			<ul class="mainCategory" style="clear:both;">
				<li><span class="category category1">하이라이트</span>
					<ul class="subcategory subcategory1">
						<li><a href="/views/placerank/place_Photo.jsp">Top 10</a></li>
						<li><a href="/views/festival/festivalPhoto.jsp">축제&amp;행사</a></li>
					</ul>
				</li>
				<li><span class="category category2">서울즐기기</span>
					<ul class="subcategory subcategory2">
						<li><a href="/enjoyList?type=type1">추천코스</a></li>
						<li><a href="/enjoyList?type=type2">명소</a></li>
						<li><a href="/enjoyList?type=type3">쇼핑</a></li>
						<li><a href="/enjoyList?type=type5">음식점</a></li>
						<li><a href="/enjoyList?type=type6">캘린더</a></li>
					</ul>
				</li>
				<li><span class="category category3">예약하기</span>
					<ul class="subcategory subcategory3">
						<li><a href="/concertList">공연예약</a></li>
						<li><a href="/hotelList">호텔예약</a></li>
						<li><a href="/doboList">서울도보관광예약</a></li>
					</ul>
				</li>
				<li><span class="category category4">여행준비</span>
					<ul class="subcategory subcategory4">
						<li><a href="/guideBookDown">가이드북</a></li>
						<li><a href="/views/travelReady/travelInformation.jsp">여행필수정보</a></li>
						<li><a href="/seoulImage">서울 관광 이미지</a></li>
						<li><a href="/faq">FAQ</a></li>
					</ul>
				</li>
			</ul>

			<script>
			$(".category1").click(function(){
				$(".subcategory1").toggle("slow");
				$(".subcategory2").css('display','none');
				$(".subcategory3").css('display','none');
				$(".subcategory4").css('display','none');
			});
			$(".category2").click(function(){
				$(".subcategory2").toggle("slow");
				$(".subcategory1").css('display','none');
				$(".subcategory3").css('display','none');
				$(".subcategory4").css('display','none');
			});
			$(".category3").click(function(){
				$(".subcategory3").toggle("slow");
				$(".subcategory2").css('display','none');
				$(".subcategory1").css('display','none');
				$(".subcategory4").css('display','none');
			});
			$(".category4").click(function(){
				$(".subcategory4").toggle("slow");
				$(".subcategory2").css('display','none');
				$(".subcategory3").css('display','none');
				$(".subcategory1").css('display','none');
			});			
			</script>
	
		</div>
	</header>
</body>
</html>