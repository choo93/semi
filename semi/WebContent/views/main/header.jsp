<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
    <header>
        <img src="../../image/menu.png" id="menu_icon" onclick="menu();">
        <img src="../../image/menu_mobile.png" id="menu_icon_mobile" onclick="menu_mobile();" style="display:none;">
        
        
        <div>
            <a href="http://localhost">
                <img src="../../image/logo.jpg" id="logo" style="height:100%;">
            </a>
        </div>
        
		<ul id="main_category">
            <img src="../../image/close.png" id="menu_icon_close" onclick="close_mobile();" style="width:30px; float:right; cursor:pointer; padding:15px;">
			<li class="toggle menu_one"><a href="#">하이라이트</a>
			<ul class="sub_menu_one" style="display:none;">
			    <li><a href="">Top 10</a></li>
			    <li><a href="">축제&amp;행사</a></li>
			    <li><a href="">서울 특화관광</a></li>
			    <li><a href="">한류관광</a></li>
			    <li><a href="">글로벌 서울 메이트</a></li>
			</ul>
			</li>
			<li class="toggle menu_two"><a href="#">서울즐기기</a>
            <ul class="sub_menu_two" style="display:none;">
			    <li><a href="">추천코스</a></li>
			    <li><a href="">명소</a></li>
			    <li><a href="">쇼핑</a></li>
			    <li><a href="">숙박</a></li>
			    <li><a href="">음식점</a></li>
			    <li><a href="">캘린더</a></li>
			</ul>
			</li>
			<li class="toggle menu_three"><a href="#">예약하기</a>
            <ul class="sub_menu_three" style="display:none;">
			    <li><a href="">공연예약</a></li>
			    <li><a href="">호텔예약</a></li>
			    <li><a href="">서울도보관광예약</a></li>
			</ul>			
			</li>
			<li class="toggle menu_four"><a href="#">여행준비</a>
			<ul class="sub_menu_four" style="display:none;">
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
		
        <script>
            function menu_mobile(){
                $('.main').css('overflow','hidden');
                $('#main_category').addClass('category_view');
                $('#menu_icon_close').css('display','block');
            }
            function close_mobile(){
                $('.main').css('overflow','inherit');
                $('#main_category').removeClass('category_view');
                $('#menu_icon_close').css('display','none');
            }
        </script>
	</header>
</body>
</html>