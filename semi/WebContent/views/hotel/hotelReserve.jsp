<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/hotelReserve.css">
<link rel="stylesheet" href="/lib/w3.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<body id="scroll">




<%@ include file="/views/main/header.jsp" %>
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
	    <div id="hotelRoom1Type">싱글룸 <br><br><br>에어컨,전용 욕실,무료WiFi,전화,위성 채널,안전 금고,난방 시설,옷장,샤워,목욕 가운,욕실 용품,화장실,슬리퍼,냉장고,전기 주전자,타월</div>
	    <div id="hotelRoom1Capacity"></div>
	    <div id="hotelRoom1Price">$80,000</div>
	    <div id="hotelRoom1Choice">
	
	    <select>
	    <option value="0">&nbsp; 0</option>
	    <option value="1">&nbsp; 1 &nbsp;&nbsp;&nbsp;&nbsp;(\80,000)</option>
	    <option value="2">&nbsp; 2 &nbsp;&nbsp;&nbsp;&nbsp;(\160,000)</option>
	    <option value="3">&nbsp; 3 &nbsp;&nbsp;&nbsp;&nbsp;(\240,000)</option>
	    </select>
	   
	    </div>
	    </div>
	    
	    <div id="hotelRoom2Info">
	    <div id="hotelRoom2Type">더블룸 <br><br><br>에어컨,전용 욕실,무료WiFi,전화,위성 채널,안전 금고,난방 시설,옷장,샤워,목욕 가운,욕실 용품,화장실,슬리퍼,냉장고,전기 주전자,타월</div>
	    <div id="hotelRoom2Capacity"></div>
	    <div id="hotelRoom2Price">$100,000</div>
	    <div id="hotelRoom2Choice">
	     <select>
	    <option>&nbsp; 0</option>
	    <option value="1">&nbsp; 1 &nbsp;&nbsp;&nbsp;&nbsp;(\100,000)</option>
	    <option value="2">&nbsp; 2 &nbsp;&nbsp;&nbsp;&nbsp;(\200,000)</option>
	    <option value="3">&nbsp; 3 &nbsp;&nbsp;&nbsp;&nbsp;(\300,000)</option>
	    </select>
	    </div>
	    </div>
	    
	    <div id="hotelRoom3Info">
	    <div id="hotelRoom3Type">스텐다드 더블 <br><br><br>에어컨,전용 욕실,무료WiFi,전화,위성 채널,안전 금고,난방 시설,옷장,샤워,목욕 가운,욕실 용품,화장실,슬리퍼,냉장고,전기 주전자,타월</div>
	    <div id="hotelRoom3Capacity"></div>
	    <div id="hotelRoom3Price">$120,000</div>
	    <div id="hotelRoom3Choice">
	     <select>
	    <option>&nbsp; 0</option>
	    <option value="1">&nbsp; 1 &nbsp;&nbsp;&nbsp;&nbsp;(\120,000)</option>
	    <option value="2">&nbsp; 2 &nbsp;&nbsp;&nbsp;&nbsp;(\240,000)</option>
	    <option value="3">&nbsp; 3 &nbsp;&nbsp;&nbsp;&nbsp;(\360,000)</option>
	    </select>
	    </div>
	    </div>
	    
	    <div id="hotelRoom4Info">
	    <div id="hotelRoom4Type">스텐다드 트윈<br><br><br>에어컨,전용 욕실,무료WiFi,전화,위성 채널,안전 금고,난방 시설,옷장,샤워,목욕 가운,욕실 용품,화장실,슬리퍼,냉장고,전기 주전자,타월</div>
	    <div id="hotelRoom4Capacity"></div>
	    <div id="hotelRoom4Price">$120,000</div>
	    <div id="hotelRoom4Choice">
	     <select>
	    <option>&nbsp; 0</option>
	    <option value="1">&nbsp; 1 &nbsp;&nbsp;&nbsp;&nbsp;(\120,000)</option>
	    <option value="2">&nbsp; 2 &nbsp;&nbsp;&nbsp;&nbsp;(\240,000)</option>
	    <option value="3">&nbsp; 3 &nbsp;&nbsp;&nbsp;&nbsp;(\360,000)</option>
	    </select>
	    </div>
	    </div>
		
		
	</div>
		
		<div id="hotelPayment">
		<div id="hotelPaymentTitle"></div>
		<div id="hotelPaymentContent">
		1 객실 요금<<br>
		\80,000
		<br>
		<button type= "button" onclick = "payment();">결제 하기</button>
		</div>
		</div>
	
</div>

<a href="#" onclick="window.open('../sub/pop.php','tistory','width=400, height=400, scrollbars=no, resizable=no, toolbars=no, menubar=no')">

<script>
	function payment(){
		window.open("hotelPayment.jsp","",'width=400,height=500");		
	}
</script>


	
	
	
	
    </section>
	<%@ include file="/views/main/footer.jsp" %>
	
</body>
</html>