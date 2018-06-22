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
<script>
	window.onload = function() {
		if(opener!=null) { // 자신이 팝업창 일때 
			opener.location.reload();
			window.close();	
		}
	}
</script>
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

        <% if(user==null){ %>
        <div id="login_join">
        	<p class="login_before login_left"><a href="/views/main/login.jsp">로그인</a></p>
        	<p class="login_before login_right"><a href="/views/main/joinus.jsp">회원가입</a></p>
        </div>    
        <% } else { %>
        <div id="login_join" class="login_after">	
			<% if(user.getUserId().equals("admin")){ %>
				<p><%=user.getUserName()%>로 로그인 하셨습니다</p>
			<% } else { %>
				<p style="margin-bottom:4px;margin-left:35px;"><span style="font-weight:bold;"><%=user.getUserName()%></span>님 환영합니다</p>
				<a href="/myPage" style="margin-left:20px;margin-right:15px;">마이페이지</a>
			<% } %>
			<a href="/logout">로그아웃</a><br>
        </div>
        <% } %>	
        
        <form action="/search" method="get" class="search-wrapper">
        	<input type="search" placeholder="Search" style="width:200px;margin-left:10px;">
        	<img src="/image/main/search.png" onclick="search();" class="main_search">
        </form>
        
        <style>
        	.scroll .search-wrapper{
        		display:none;
        	}
        </style>
        
        <!-- desktop category -->
        <div id="main_category">
        	<div id="main_category_one" class="main_category">하이라이트</div>
        	<ul style="display:none;" id="sub_category_one" class="main_sub_category">
        		<li><a href="/views/placerank/place_Photo.jsp">Top 10</a></li>
        		<li><a href="/views/festival/festivalPhoto.jsp">축제&amp;행사</a></li>
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
        
        <!-- Tablet Category -->
		<ul id="tablet_category">
			<li class="category_title" style="cursor:pointer;"><a href="" style="display:block;width:100%;">하이라이트</a>
			<ul class="category_sub_menu" style="display:none;">
			    <li><a href="/views/placerank/place_Photo.jsp">Top 10</a></li>
        		<li><a href="/views/festival/festivalPhoto.jsp">축제&amp;행사</a></li>
			</ul>
			</li>
			<li class="category_title"><a href="/views/enjoy/enjoyPhoto.jsp" style="display:block;width:100%;">서울즐기기</a>
            <ul class="category_sub_menu" style="display:none;">
			    <li><a href="/enjoyList?type=type1">추천코스</a></li>
				<li><a href="/enjoyList?type=type2">명소</a></li>
				<li><a href="/enjoyList?type=type3">쇼핑</a></li>
				<li><a href="/enjoyList?type=type5">음식점</a></li>
				<li><a href="/enjoyList?type=type6">캘린더</a></li>
			</ul>			
			</li>
			<li class="category_title" style="cursor:pointer;"><a href="" style="display:block;width:100%;">예약하기</a>
            <ul class="category_sub_menu" style="display:none;">
			    <li><a href="/concertList">공연예약</a></li>
				<li><a href="/hotelList">호텔예약</a></li>
				<li><a href="/doboList">서울도보관광예약</a></li>
			</ul>			
			</li>
			<li class="category_title"><a href="/views/travelReady/travelReady.jsp" style="display:block;width:100%;">여행준비</a>
			<ul class="category_sub_menu" style="display:none;">
			    <li><a href="/guideBookDown">가이드북</a></li>
				<li><a href="/views/travelReady/travelInformation.jsp">여행필수정보</a></li>
				<li><a href="/seoulImage">서울 관광 이미지</a></li>
				<li><a href="/faq">FAQ</a></li>
			</ul>
			</li>
		</ul>
		<style>
			.category_title>a:hover{
				color:#b43029;
			}
		</style>
        
		</div>
	
		<!-- responsive - mobile -->
		<div id="slide-out" class="sidenav">
			<% if (user == null) { %>
			<form action="/login" method="post"
				style="margin: 17px; margin-top: 30px;">
				<div class="input-field">
					<input type="text" name="userId" style="width:264px!important;margin-bottom:20px;"> 
					<label for="id">아이디</label>
				</div>
				<div class="input-field">
					<input type="password" name="userPwd">
					<label for="id">비밀번호</label>
				</div>
				<input class="btn submit_button" type="submit" value="LOGIN" style="background-color:#b43029;width:100%;">
			</form>
			<% } else { %>
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
				<span style="font-weight:bold;"><%=user.getUserName()%></span>님 환영합니다<br>
				<a href="/myPage" style="padding-right:10px;">마이페이지</a> <a href="/logout" style="padding-left:10px;">로그아웃</a>
			</p>
			<%
				}
			%>
			<%
				}
			%>
			
			<ul>
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
			
			<style>
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
			</style>
			
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
			
  
        	<script>
        	$(document).ready(function(){
        		$("#main_category_one").click(function(){
        			$(this).next("ul").slideToggle('slow');
        			$('#sub_category_two').css('display','none');
        			$('#sub_category_three').css('display','none');
        			$('#sub_category_four').css('display','none');
        		});
        		$("#main_category_two").click(function(){
        			$(this).next("ul").slideToggle('slow');
        			$('#sub_category_one').css('display','none');
        			$('#sub_category_three').css('display','none');
        			$('#sub_category_four').css('display','none');
        		});
        		$("#main_category_three").click(function(){
        			$(this).next("ul").slideToggle('slow');
        			$('#sub_category_two').css('display','none');
        			$('#sub_category_one').css('display','none');
        			$('#sub_category_four').css('display','none');
        		});
        		$("#main_category_four").click(function(){
        			$(this).next("ul").slideToggle('slow');
        			$('#sub_category_two').css('display','none');
        			$('#sub_category_three').css('display','none');
        			$('#sub_category_one').css('display','none');
        		});
        	});	        	
        	
        	$("#mobile_category_one").click(function(){
        		$(this).next("ul").slideToggle('slow',function(){
        			
        		});
        		$('#mobile_two').css('display','none');
        		$('#mobile_three').css('display','none');
        		$('#mobile_four').css('display','none');
        	});
        	$("#mobile_category_two").click(function(){
        		$(this).next("ul").slideToggle('slow',function(){
        			
        		});
        		$('#mobile_one').css('display','none');
        		$('#mobile_three').css('display','none');
        		$('#mobile_four').css('display','none');
        	});
        	$("#mobile_category_three").click(function(){
        		$(this).next("ul").slideToggle('slow',function(){
        			
        		});
        		$('#mobile_two').css('display','none');
        		$('#mobile_one').css('display','none');
        		$('#mobile_four').css('display','none');
        	});
        	$("#mobile_category_four").click(function(){
        		$(this).next("ul").slideToggle('slow',function(){
        			location.href="/views/travelReady/travelReady.jsp";
        		});
        		$('#mobile_two').css('display','none');
        		$('#mobile_three').css('display','none');
        		$('#mobile_one').css('display','none');
        	});        	
        	</script>
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
	            <a href="/views/placerank/place_Photo.jsp"><span>Top10</span> 바로가기</a>
	            <a href="/views/festival/festivalPhoto.jsp"><span>축제&행사</span> 바로가기</a>
        	</div>
	        <div class="white_box">
	            <h2>추천코스</h2>
	            <hr class="border_top">
	            <p>고궁, 엔터테인먼트, 호텔, 레스토랑, 스포츠&amp;아웃도어, 바, 카페, 면세점, 뷰티&amp;스파 등 인기 장소 추천!</p>
	            <a href="/views/enjoy/enjoyPhoto.jsp"><span>서울즐기기</span> 바로가기</a>
	            <hr class="border_bottom">
	        </div>       
        </div>
        <div class="section3">
	        <div class="white_box2">
	            <h2>예약하기</h2>
	            <hr class="border_top">
	            <a href="/concertList"><span>공연예약</span> 바로가기</a>
	            <a href="/hotelList"><span>호텔예약</span> 바로가기</a>
	            <a href="/doboList"><span>서울도보관광예약</span> 바로가기</a>
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
	
	<style>
		@media (max-width:542px){
			.red_box a, .white_box2 a{
				display:block;
			}
		}
	</style>
	
	<script>
	   window.onload = function() {
	      if(opener!=null) { // 자신이 팝업창 일때 
	         opener.location.reload();
	         window.close();
	         
	      }
	   }
	</script>	
	
	<%@ include file="/views/main/footer.jsp" %>
</body>
</html>