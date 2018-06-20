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
				src="/image/main/logo.png" id="main_logo"></a>
				
			<% if(user==null){ %>
	        <div id="login_join">
	        	<p class="login_before login_left"><a href="/views/main/login.jsp">로그인</a></p>
	        	<p class="login_before login_right"><a href="/views/main/joinus.jsp">회원가입</a></p>
	        </div>    
	        <% } else { %>
	        <div id="login_join" class="login_after">	
				<% if(user.getUserId().equals("admin")){ %>
					<p><%=user.getUserName()%> 페이지 입니다</p>
					<a href="/allUser">전체회원조회</a>
				<% } else { %>
					<p><span><%=user.getUserName()%></span>님 환영합니다</p>
					<label onclick="myInfo();" id="infoBtn">마이페이지</label>
					<form action="myPage" method="post" style="display:none;" id="myInfo">
						<label style="color:red;">비밀번호 입력 : </label>
						<input type="password" name="userPwd">
						<div class="btn"><input type="submit" value="확인"></div>	
					</form>
				<% } %>
				<a href="/logout">로그아웃</a><br>
	        </div>
	        <% } %>
	        <form action="/search" method="get" class="search-wrapper">
	        	<input type="search" placeholder="Search" style="width:280px;margin-left:10px;">
	        	<img src="/image/main/search.png" onclick="search();" class="main_search">
	        </form>
	        	        		
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
			<p style="margin-left: 30px; margin-top: 20px;">
				<%=user.getUserName()%>
				페이지 입니다
			</p>
			<ul>
				<li><a href="/allUser">회원 정보 조회</a></li>
				<li><a href="">회원 예약 관리</a></li>
			</ul>
			<p class="main_admin_page">
				<a href="/logout">로그아웃</a>
			</p>
			<style>
			.mobile_category{
				display: none;
			}
			</style>
			<%
				} else {
			%>
			<p id="main_login_page">
				<span><%=user.getUserName()%></span>님 환영합니다<br>
				<a href="/myPage" style="padding-right:10px;">마이페이지</a> <a href="/logout" style="padding-left:10px;">로그아웃</a>
			</p>
			<%
				}
			%>
			<%
				}
			%>
			</div>
			<!-- common -->
	       <div id="main_category">
	        	<div id="main_category_one" class="main_category">하이라이트</div>
	        	<ul style="display:none;" id="sub_category_one" class="main_sub_category">
	        		<li><a href="">Top 10</a></li>
	        		<li><a href="">축제&amp;행사</a></li>
	        		<li><a href="">서울 특화관광</a></li>
	        		<li><a href="">한류관광</a></li>
	        		<li><a href="">글로벌 서울 메이트
	        		</a></li>
	        	</ul>
				<div id="main_category_two" class="main_category">서울즐기기</div>
	        	<ul style="display:none;" id="sub_category_two" class="main_sub_category">
	        		<li><a href="/enjoyList?type=type1">추천코스</a></li>
					<li><a href="/enjoyList?type=type2">명소</a></li>
					<li><a href="/enjoyList?type=type3">쇼핑</a></li>
					<li><a href="/enjoyList?type=type4">숙박</a></li>
					<li><a href="/enjoyList?type=type5">음식점</a></li>
					<li><a href="/enjoyList?type=type6">캘린더</a></li>
	        	</ul>
				<div id="main_category_three" class="main_category">예약하기</div>
	        	<ul style="display:none;" id="sub_category_three" class="main_sub_category">
	        		<li><a href="/concertList">공연예약</a></li>
					<li><a href="/hotelList">호텔예약</a></li>
					<li><a href="/doboList">서울도보관광예약</a></li>
	        	</ul>  
				<div id="main_category_four" class="main_category">여행준비</div>
	        	<ul style="display:none;" id="sub_category_four" class="main_sub_category">
	        		<li><a href="">가이드북&amp;지도</a></li>
	        		<li><a href="">여행필수정보</a></li>
	        		<li><a href="">서비스 안내</a></li>
	        		<li><a href="">비즈니스&amp;파트너</a></li>
	        		<li><a href="">FAQ</a></li>
	        		<li><a href="">공지사항</a></li>
	        	</ul>          	        	        	
	        </div>		
		</div>
	</header>
</body>
</html>