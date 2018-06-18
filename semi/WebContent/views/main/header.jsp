<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*" %>
<% SeoulUser user = (SeoulUser)session.getAttribute("user"); %>
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
        
        <!-- 이 부분 그대로 -->
        <% if(user==null){ %>
        <div id="login_join">
        	<p class="login_before login_left"><a href="/views/login/login.jsp">로그인</a></p>
        	<p class="login_before login_right"><a href="/views/login/joinus.jsp">회원가입</a></p>
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
					<input type="submit" value="확인">	
				</form>
			<% } %>
			<a href="/logout">로그아웃</a><br>
        </div>
        <% } %>

        
        <style>
            .scroll #login_join{
                visibility:hidden;  
            }
            @media screen and ( min-width:655px ) and ( max-width:1023px ){
                #login_join{
                    display:none;
                }
                #main_category{
                    clear:inherit;
                }
            }
            @media screen and ( max-width:654px ) {
                #login_join{
                    display:none;
                }
            }
            /* 코드 추가한 부분 */
            #infoBtn{
            	cursor:pointer;
            	text-decoration:underline;
            	color:blue;
            }
        </style>	    
        
        <div id="main_search">
        	<form action="/mainSearch" method="get">
        		<input type="search">
        		<input type="submit" value="search">
        	</form>
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
			    <li><a href="/enjoyList?type=type1">추천코스</a></li>
			    <li><a href="/enjoyList?type=type2">명소</a></li>
			    <li><a href="/enjoyList?type=type3">쇼핑</a></li>
			    <li><a href="/enjoyList?type=type4">숙박</a></li>
			    <li><a href="/enjoyList?type=type5">음식점</a></li>
			    <li><a href="/enjoyList?type=type6">캘린더</a></li>
			</ul>			
			</li>
			<li class="toggle menu_three"><a href="#">예약하기</a>
            <ul class="sub_menu_three" style="display:none;">
			    <li><a href="">공연예약</a></li>
			    <li><a href="/hotelList">호텔예약</a></li>
			    <li><a href="">서울도보관광예약</a></li>
			</ul>			
			</li>
			<li class="toggle menu_four"><a href="/views/travelReady/travelReady.jsp">여행준비</a>
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
            <!-- 코드 추가한 부분 -->
            function myInfo(){
            	document.getElementById("myInfo").style="display:inline";
            }
        </script>
	</header>
</body>
</html>