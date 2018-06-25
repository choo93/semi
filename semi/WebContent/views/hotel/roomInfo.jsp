<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="semi.hotel.model.vo.*"
	import="java.util.*" import="semi.login.model.vo.*"%>
    
<%
      ArrayList<RoomInfo> ri = (ArrayList<RoomInfo>)request.getAttribute("roomInfo");
		SeoulUser user = (SeoulUser) session.getAttribute("user");
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 호텔 예약</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link rel="stylesheet" href="../../css/hotel/roomInfo.css?ver=1">
<link rel="stylesheet" href="/lib/w3.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body id="scroll">
				<header style="position:fixed;width:50px;border-right:1px solid #ddd;height:100%;">
				<div id="click">
					<a href="#" class="click"><img
						src="/image/main/menu.png" style="width:30px;margin-top:10px;margin-left:10px;background-color:white;z-index:999;"></a>
				</div>
				<div id="click-open" style="display:none;">
					<a href="http://localhost"><img
						src="/image/main/logo.png" id="main_logo" style="width:260px;margin-left:20px;margin-top:20px;"></a>
						
					<style>
					a{
						font-size:1rem!important;
					}
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
						padding-left:75px;
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
			        	<a href="/views/main/login.jsp" class="main-login" style="font-size:1rem!important;text-decoration:none!important;">로그인</a>
			        	<a href="/views/main/joinus.jsp" style="font-size:1rem!important;text-decoration:none!important;">회원가입</a>
			        </div>    
			        <% } else { %>
			        <div id="login_join" class="login_after">	
					<% if(user.getUserId().equals("admin")){ %>
						<p style="margin-bottom:8px;font-size:1rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>로 로그인 하셨습니다</p>
					<% } else { %>
						<p style="margin-bottom:8px;margin-left:-20px;font-size:1rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>님 환영합니다</p>
						<a href="/myPage" style="margin-left:-19px;margin-right:15px;font-size:1rem!important;text-decoration:none!important;">마이페이지</a>
					<% } %>
					<a href="/logout" style="font-size:1rem!important;text-decoration:none!important;">로그아웃</a><br>
			        </div>
			        <% } %>	
			        
			        <style>
			        	#login_join>a:hover{
			        		text-decoration:none;
			        	}
			        	.mainCategory>li{
			        		font-size:1rem!important;
			        		margin-left:-40px;
			        		padding-top:20px;
			        		padding-bottom:20px;
			        	}
			        	.mainCategory>li>ul{
			        		list-style:none;
			        	}
			        	.mainCategory>li>ul>li{
			        		margin-left:-40px;
			        		padding-top:20px;
			        		padding-bottom:20px;
			        	}
			        	.mainCategory>li>ul>li>a{
			        		width:100%;
			        		display:block;
			        		font-size:1rem!important;
			        	}
			        	.mainCategory>li>ul>li>a:hover{
			        		text-decoration:none;
			        	}
			        </style>	        	
					<!-- common category -->
					<ul class="mainCategory" style="clear:both;list-style:none;margin-left:50px;">
						<li><span class="category category1">하이라이트</span>
							<ul class="subcategory subcategory1" style="display:block;font-size:1rem!important;">
								<li><a href="/views/placerank/place_Photo.jsp" style="text-decoration:none!important;">Top 10</a></li>
								<li><a href="/views/festival/festivalPhoto.jsp" style="text-decoration:none!important;">축제&amp;행사</a></li>
							</ul>
						</li>
						<li><span class="category category2">서울즐기기</span>
							<ul class="subcategory subcategory2">
								<li><a href="/enjoyList?type=type1" style="text-decoration:none!important;">추천코스</a></li>
								<li><a href="/enjoyList?type=type2" style="text-decoration:none!important;">명소</a></li>
								<li><a href="/enjoyList?type=type3" style="text-decoration:none!important;">쇼핑</a></li>
				<li><a href="/hotelList" style="text-decoration:none!important;">숙소</a></li>
					<li><a href="/enjoyList?type=type5" style="text-decoration:none!important;">음식점</a></li>
					<li><a href="/enjoyCalendar" style="text-decoration:none!important;">캘린더</a></li>
							</ul>
						</li>
						<li><span class="category category3">예약하기</span>
							<ul class="subcategory subcategory3">
								<li><a href="/concertList" style="text-decoration:none!important;">공연예약</a></li>
								<li><a href="/hotelList" style="text-decoration:none!important;">호텔예약</a></li>
								<li><a href="/doboList" style="text-decoration:none!important;">서울도보관광예약</a></li>
							</ul>
						</li>
						<li><span class="category category4">여행준비</span>
							<ul class="subcategory subcategory4">
								<li><a href="/guideBookDown" style="text-decoration:none!important;">가이드북</a></li>
								<li><a href="/views/travelReady/travelInformation.jsp" style="text-decoration:none!important;">여행필수정보</a></li>
								<li><a href="/seoulImage" style="text-decoration:none!important;">서울 관광 이미지</a></li>
								<li><a href="/faq" style="text-decoration:none!important;">FAQ</a></li>
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
    
	<section>
	
	<div style="width: 1200px; height: 1400px; margin-left:15%;">
	<div id="contents">
			<div id="contents-1">
				<div id="contentTitle">호텔예약 하기</div>
			</div>
		</div>
		
		<div id="reserveRoomInfo">
		<div id="reserveRoomInfoTitle">
		<div id="roomType">객실 유형</div>
		<div id="roomCapacity">정원</div>
		<div id="roomPrice">가격</div>
		<div id="roomChoice">객실 선택</div>
	</div>
		
	    <div id="hotelRoom1Info">
	    <div id="hotelRoom1Type">
	    <div id="hotelRoomTitle"><%=ri.get(0).getRoomTitle() %></div>
	    <div id="hotelRoom1Type-1"><%=ri.get(0).getRoomExplain() %></div>
	    </div>
	    <div id="hotelRoom1Capacity"><%=ri.get(0).getRoomCapacity() %></div>
	    
	    <div id="hotelRoom1Price"><%=Integer.parseInt(ri.get(0).getRoomPrice())/1000 %>,<%=(Integer.parseInt(ri.get(0).getRoomPrice())/100)%10 %>00</div>
	    <div id="hotelRoom1Choice">
	
	    <input type="radio" id="room1" name="hotelPrice" onclick="roomPrice(<%=ri.get(0).getRoomCode() %>,this);" style="width:20px; height:20px;" value=<%=ri.get(0).getRoomPrice()%>>
	   
	    </div>
	    </div>
	    
	    <div id="hotelRoom2Info">
	    <div id="hotelRoom2Type">
	    <div id="hotelRoomTitle2"><%=ri.get(1).getRoomTitle() %></div>
	    <div id="hotelRoom2Type-1"><%=ri.get(1).getRoomExplain() %></div>
	    </div>
	    <div id="hotelRoom2Capacity"><%=ri.get(1).getRoomCapacity() %></div>
	    <div id="hotelRoom2Price"><%=Integer.parseInt(ri.get(1).getRoomPrice())/1000 %>,<%=(Integer.parseInt(ri.get(1).getRoomPrice())/100)%10 %>00</div>
	    <div id="hotelRoom2Choice">
	    
	     <input type="radio" id="room2" name="hotelPrice" onclick="roomPrice(<%=ri.get(1).getRoomCode() %>,this);" style="width:20px; height:20px;" value=<%=ri.get(1).getRoomPrice()%>>
	    
	    </div>
	    </div>
	    
	    <div id="hotelRoom3Info">
	    <div id="hotelRoom3Type">
	    <div id="hotelRoomTitle3"><%=ri.get(2).getRoomTitle() %> </div>
	    <div id="hotelRoom3Type-1"><%=ri.get(2).getRoomExplain() %></div>
	    </div>
	    <div id="hotelRoom3Capacity"><%=ri.get(2).getRoomCapacity() %></div>
	    <div id="hotelRoom3Price"><%=Integer.parseInt(ri.get(2).getRoomPrice())/1000 %>,<%=(Integer.parseInt(ri.get(2).getRoomPrice())/100)%10 %>00</div>
	    <div id="hotelRoom3Choice">
	     
	      <input type="radio" id="room3" name="hotelPrice" onclick="roomPrice(<%=ri.get(2).getRoomCode() %>,this);" style="width:20px; height:20px;" value=<%=ri.get(2).getRoomPrice()%>>
	     
	    </div>
	    </div>   
	    
	    <div id="hotelRoom4Info">
	    <div id="hotelRoom4Type">
	    <div id="hotelRoomTitle4"><%=ri.get(3).getRoomTitle() %></div>
	    <div id="hotelRoom4Type-1"><%=ri.get(3).getRoomExplain() %></div>
	    </div>
	    <div id="hotelRoom4Capacity"><%=ri.get(3).getRoomCapacity() %></div>
	    <div id="hotelRoom4Price"><%=Integer.parseInt(ri.get(3).getRoomPrice())/1000 %>,<%=(Integer.parseInt(ri.get(3).getRoomPrice())/100)%10 %>00</div>
	    <div id="hotelRoom4Choice">
	  
	    <input type="radio" id="room4" name="hotelPrice" onclick="roomPrice(<%=ri.get(3).getRoomCode() %>,this);" style="width:20px; height:20px;" value=<%=ri.get(3).getRoomPrice()%>>
	  
	    </div>
	    </div>
		
		
	</div>
		
		<div id="hotelPayment">
		<div id="hotelPaymentTitle"></div>
		<div id="hotelPaymentContent" style="width:100%; height:300px; text-align:center; margin-top:10%;">
		<div id="hotelPriceInfo">객실 요금</div>
		<div id="hotelPaymentTotal"></div>
		<div id="hotelPayment-1">		
		</div>
		<div id="#hotelReserveDate">
		<input id="price" type="hidden" name="price">
		<div id="dated">
			<p>날짜 조회</p>
        	<input type="text" id="datepicker1" name="date" readonly="readonly">
		</div>
        <input type="hidden" name="hotelCode" value="<%=request.getParameter("hotelCode") %>">
        <input id="roomCode" type="hidden" name="roomCode">
        <button id="submit" onclick="payy();">방 선택</button>
        </div>
        <div id="#hotelRoomInfoBack">
        <button id="btnBack" onclick="back();">뒤로가기</button>
        </div>
		</div>
		</div>
	
</div>
	
    </section>
	<%@ include file="/views/main/footer.jsp" %>
	
	<script>
		function back(){
			history.go(-1);
		}
	</script>
	
<!-- 달력 가져오기 -->	
	<script>
  $.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
  });

  
  $(function() {
    $("#datepicker1").datepicker({minDate: 0});
  
  });
 
  
  
</script>
 

<!-- 여기 까지 달력 가져오기 -->

<script>
<%=Integer.parseInt(ri.get(2).getRoomPrice())/1000 %>,<%=(Integer.parseInt(ri.get(2).getRoomPrice())/100)%10 %>00
	function roomPrice(val,room){
		document.getElementById('hotelPaymentTotal').innerHTML = Number(room.value)/1000+","+((Number(room.value)/100) %10)+"00";
		document.getElementById('price').value = room.value;
		document.getElementById('roomCode').value = val;
	}
	
	
	function payy(){
		var price = document.getElementById('price').value/100;
		var date = document.getElementById('datepicker1').value;
		var hotelCode = <%=request.getParameter("hotelCode") %>;
		var roomCode = document.getElementById('roomCode').value;
		var indexNo = <%=request.getParameter("indexNo") %>;
		
		if(price==""){
			alert('객실을 선택해 주세요');
		}else if(date==""){
			alert('날짜를 선택해 주세요');
		}else{
			window.open("/roomSelect?price="+price+"&date="+date+"&hotelCode="+hotelCode+"&roomCode="+roomCode+"&indexNo="+indexNo,"_blank","width=800px,height=750px,top=70,left=600;");
		}
		
	}
</script>

				<script>
					$('.click').click(function(){
						$('header').css('width','300px');
						$('#click').css('display','none');
						$('section').css('margin-left','301px');
						$('section').css('opacity','0.5');
						$('section').css('background-color','rgba(0,0,0,0.5)');
						$('#click-open').css('display','block');
					});
					$('section').click(function(){
						$('header').css('width','50px');
						$('#click').css('display','block');
						$('section').css('margin-left','51px');
						$('section').css('opacity','1');
						$('section').css('background-color','white');
						$('#click-open').css('display','none');
					});
				</script>	

	
</body>
</html>