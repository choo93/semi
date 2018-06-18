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
<title>Seoulaim</title>
<link rel="icon" href="image/main/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes"
	rel="stylesheet">
<link rel="stylesheet" href="css/main/materialize.min.css">
<link rel="stylesheet" href="css/main/main.css">
<script src="js/main/jquery-3.3.1.min.js"></script>
<script src="js/main/vegas.min.js"></script>
<script src="js/main/materialize.min.js"></script>
<script src="js/main/main.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

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
input[type=text]:not(.browser-default):focus:not([readonly])+label{
	color:#b43029;
}
input[type=password]:not(.browser-default):focus:not([readonly])+label{
	color:#b43029;
}
</style>
</head>
<body id="scroll">
	<header>
		<div id="main_header">
			<a href="#" data-target="slide-out" class="sidenav-trigger"><img
				src="/image/main/menu.png"></a>
			<img src="/image/main/menu.png" id="main_icon" onclick="menu();">
			<a href="http://localhost"><img
				src="/image/main/logo.png" id="main_logo"></a>

			<!-- Tablet Category -->
			<ul id="main_category">
				<li class="category_title"><a href="">하이라이트</a>
				<ul class="category_sub_menu" style="display:none;">
				    <li><a href="">Top 10</a></li>
				    <li><a href="">축제&amp;행사</a></li>
				    <li><a href="">서울 특화관광</a></li>
				    <li><a href="">한류관광</a></li>
				    <li><a href="">글로벌 서울 메이트</a></li>
				</ul>
				</li>
				<li class="category_title"><a href="">서울즐기기</a>
	            <ul class="category_sub_menu" style="display:none;">
				    <li><a href="/enjoyList?type=type1">추천코스</a></li>
					<li><a href="/enjoyList?type=type2">명소</a></li>
					<li><a href="/enjoyList?type=type3">쇼핑</a></li>
					<li><a href="/enjoyList?type=type4">숙박</a></li>
					<li><a href="/enjoyList?type=type5">음식점</a></li>
					<li><a href="/enjoyList?type=type6">캘린더</a></li>
				</ul>			
				</li>
				<li class="category_title"><a href="">예약하기</a>
	            <ul class="category_sub_menu" style="display:none;">
				    <li><a href="/concerList">공연예약</a></li>
					<li><a href="/hotelList">호텔예약</a></li>
					<li><a href="/doboList">서울도보관광예약</a></li>
				</ul>			
				</li>
				<li class="category_title"><a href="">여행준비</a>
				<ul class="category_sub_menu" style="display:none;">
				    <li><a href="">가이드북&amp;지도</a></li>
				    <li><a href="">여행필수정보</a></li>
				    <li><a href="">서비스 안내</a></li>
				    <li><a href="">비즈니스&amp;파트너</a></li>
				    <li><a href="">서울관광 이미지 다운로드</a></li>
				    <li><a href="">FAQ</a></li>
				    <li><a href="">공지사항</a></li>
				</ul>
				</li>
			</ul>
			<!-- Desktop Category -->
			<ul class="collapsible" id="desktop_category">
				<li>
			    	<div class="collapsible-header">하이라이트</div>
			      	<div class="collapsible-body">
			      	<ul>
			      		<li><a href="/views/placeRank/place_photo.jsp">Top 10</a></li>
			      		<li><a href="/views/festival/festivalphoto.jsp">축제&amp;행사</a></li>
						<li><a href="">서울 특화관광</a></li>
						<li><a href="">한류관광</a></li>
						<li><a href="">글로벌 서울 메이트</a></li>
			      	</ul>
			      	</div>
			    </li>
				<li>
			    	<div class="collapsible-header">서울즐기기</div>
			      	<div class="collapsible-body">
			      	<ul>
			      		<li><a href="/enjoyList?type=type1">추천코스</a></li>
						<li><a href="/enjoyList?type=type2">명소</a></li>
						<li><a href="/enjoyList?type=type3">쇼핑</a></li>
						<li><a href="/enjoyList?type=type4">숙박</a></li>
						<li><a href="/enjoyList?type=type5">음식점</a></li>
						<li><a href="/enjoyList?type=type6">캘린더</a></li>
			      	</ul>
			      	</div>
			    </li>
			    <li>
			    	<div class="collapsible-header">예약하기</div>
			      	<div class="collapsible-body">
			      	<ul>
			      		<li><a href="/concerList">공연예약</a></li>
						<li><a href="/hotelList">호텔예약</a></li>
						<li><a href="/doboList">서울도보관광예약</a></li>
			      	</ul>
			      	</div>
			    </li>
			    <li>
			    	<div class="collapsible-header"><a href="/views/travelReady/travelReady.jsp">여행준비</a></div>
			      	<div class="collapsible-body">
			      	<ul>
			      		<li><a href="">가이드북&amp;지도</a></li>
						<li><a href="">여행필수정보</a></li>
						<li><a href="">서비스 안내</a></li>
						<li><a href="">비즈니스&amp;파트너</a></li>
						<li><a href="">FAQ</a></li>
						<li><a href="">공지사항</a></li>
			      	</ul>
			      	</div>
			    </li>			    
			</ul>		
		</div>

		<!-- responsive - mobile -->
		<div id="slide-out" class="sidenav">
			<%
				if (user == null) {
			%>
			<form action="/login" method="post"
				style="margin: 17px; margin-top: 30px;">
				<div class="input-field">
					<input type="text" name="userId"> <label for="id">아이디</label>
				</div>
				<div class="input-field">
					<input type="text" name="userPwd"> <label for="id">비밀번호</label>
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
			.collapsible{
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
			<ul class="collapsible">
				<li class="collapsible_list">
			    	<div class="collapsible-header">하이라이트</div>
			      	<div class="collapsible-body">
			      	<ul>
			      		<li><a href="/views/placeRank/place_photo.jsp">Top 10</a></li>
			      		<li><a href="/views/festival/festivalphoto.jsp">축제&amp;행사</a></li>
						<li><a href="">서울 특화관광</a></li>
						<li><a href="">한류관광</a></li>
						<li><a href="">글로벌 서울 메이트</a></li>
			      	</ul>
			      	</div>
			    </li>
				<li>
			    	<div class="collapsible-header">서울즐기기</div>
			      	<div class="collapsible-body">
			      	<ul>
			      		<li><a href="/enjoyList?type=type1">추천코스</a></li>
						<li><a href="/enjoyList?type=type2">명소</a></li>
						<li><a href="/enjoyList?type=type3">쇼핑</a></li>
						<li><a href="/enjoyList?type=type4">숙박</a></li>
						<li><a href="/enjoyList?type=type5">음식점</a></li>
						<li><a href="/enjoyList?type=type6">캘린더</a></li>
			      	</ul>
			      	</div>
			    </li>
			    <li>
			    	<div class="collapsible-header">예약하기</div>
			      	<div class="collapsible-body">
			      	<ul>
			      		<li><a href="/concerList">공연예약</a></li>
						<li><a href="/hotelList">호텔예약</a></li>
						<li><a href="/doboList">서울도보관광예약</a></li>
			      	</ul>
			      	</div>
			    </li>
			    <li>
			    	<div class="collapsible-header">여행준비</div>
			      	<div class="collapsible-body">
			      	<ul>
			      		<li><a href="">가이드북&amp;지도</a></li>
						<li><a href="">여행필수정보</a></li>
						<li><a href="">서비스 안내</a></li>
						<li><a href="">비즈니스&amp;파트너</a></li>
						<li><a href="">FAQ</a></li>
						<li><a href="">공지사항</a></li>
			      	</ul>
			      	</div>
			    </li>			    
			</ul>
		</div>
	</header>

	<section>
        <div class="section1">
            <h1>Hello!</h1>
            <p>Welcome to Seoul</p>
        </div>
        <div class="section2">
        	<div class="red_box">
	            <h2>서울을 방문해야 하는 이유</h2>
	            <hr class="border_top">
	            <p>전통과 현대가 공존하는 도시 서울. 역사 유적, 조선시대 궁궐부터 최신 유행의 쇼핑 타운과 랜드마크까지 화려한 도시 라이프와 고즈넉한 전통의 멋을 취향에 따라 즐길 수 있다.</p>
	            <p>CNN은 "서울에서 밤에 잠자는 사람은 루저"라고 했다. 잠자는 시간이 아까울 정도로 즐길거리가 많기 때문이다. 화려한 불빛과 함께 밤이 시작되면 낮과는 또다른 도시의 야경을 감상하고, 24시간 환한 쇼핑몰과 찜질방, 클럽과 바를 즐긴다. 시원한 강바람을 맞으며 자전거를 타고 출출해지면 푸짐하고 맛있는 야식을 먹는다. 잠들지 않는 서울의 밤은 낮과는 또 다른 매력으로 반짝반짝 빛나는 세계가 된다.</p>
	            <a href="">하이라이트 바로가기</a>
	            <hr class="border_bottom">
        	</div>
	        <div class="white_box">
	            <h2>추천코스</h2>
	            <hr class="border_top">
	            <p>고궁, 엔터테인먼트, 호텔, 레스토랑, 스포츠&amp;아웃도어, 바, 카페, 면세점, 뷰티&amp;스파 등 인기 장소 추천!</p>
	            <a href="">서울즐기기 바로가기</a>
	            <hr class="border_bottom">
	        </div>       
        </div>
        <div class="section3">
	        <div class="white_box2">
	            <h2>호텔, 공연, 도보관광</h2>
	            <hr class="border_top">
	            <a href="">예약하기 바로가기</a>
	            <hr class="border_bottom">
	        </div>            
        </div>
        <div class="section4">
	        <div class="red_box2">
	            <h2>서울여행 필수정보</h2>
	            <hr class="border_top">
	            <p>서울 여행시 필요한 교통수단, 기후, 국경일, 관광안내소 등 기본 정보 제공! <br>무료 가이드북을 신청할 수 있습니다.</p>
	            <p>Q&amp;A를 통해 서울 여행 관련 질문을 받고, 빈도수가 높은 질문들을 모아 FAQ를 제공합니다.</p>
	            <a href="">여행준비 바로가기</a>
	            <hr class="border_bottom">
	        </div>       
        </div>
	</section>
	<%@ include file="/views/main/footer.jsp" %>
</body>
</html>