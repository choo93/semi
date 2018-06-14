<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/hotel/hotelReserve.css">
<link rel="stylesheet" href="/lib/w3.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
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
	    <div id="hotelRoom1Price">\80,000</div>
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
	    <div id="hotelRoom2Price">\100,000</div>
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
	    <div id="hotelRoom3Price">\120,000</div>
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
	    <div id="hotelRoom4Price">\120,000</div>
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
		<div id="hotelPaymentContent" style="width:100%; height:200px; text-align:center; margin-top:10%;">
		1 객실 요금<br>
		\80,000
		<br><br>
		<button type= "button" onclick = "payment();">결제 하기</button>
		</div><br><br>
		<div id="#hotelReserveDate">
		<p style = text-align:center;>날짜 조회:
        <input type="text" id="datepicker1">
        </div>
		</div>
	
</div>
	
    </section>
	<%@ include file="/views/main/footer.jsp" %>
	
	
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
    $("#datepicker1").datepicker();
  });

</script>

<script>
	function payment(){	
		window.open("hotelPayment.jsp","payment", "width=700,height=700,scrollbars=no,resizable=no,left=800,top=200");
	}
</script>
	
	
</body>
</html>