<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="/lib/w3.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<body>

<style>

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#contents {
	width: 100%;
	height: 150px;
	background-color: RGB(0, 125, 195);
}

#contents-1 {
	width: 70%;
	height: 100%;
	float: left;
}

#contentTitle {
	width: 100%;
	height: 50%;
	background-color: RGB(0, 125, 195);
	font-size: 40px;
	color: white;
}

#reserveRoomInfo
{
     width:60%;
     height: 1000px;
     border:1px solid black;
     float:left;
}

#reserveRoomInfoTitle
{
	width:100%;
	height:100px;
	border:1px solid black;
}
#hotelPayment{
	width:40%;
	height:1000px;
	float:left;
	border:1px solid black;
}

#hotelPaymentTitle{
	width:100%;
	height:100px;
	background-color: RGB(0, 125, 175);
	border-top:1px solid black;
	border-bottom:1px solid black;
	border-right:1px solid black;
}
#hotelPaymentContent{
	width:100%;
	height:900px;
	font-size:40px;
	font-align:center;
	margin:20%;
}


#roomType{
	width:30%;
	height:100%;
    border-right:1px solid black;
	background-color: RGB(0, 125, 175);
	font-size:20px;
	float:left;
	color:white;
}

#roomCapacity{
	width:20%;
	height:100%;
    border-right:1px solid black; 
	float:left;
	background-color: RGB(0, 125, 175);
	font-size:20px;
	color:white;
}

#roomPrice{
	width:25%;
	height:100%;
	border-right:1px solid black;
	float:left;
	background-color: RGB(0, 125, 175);
	font-size:20px;
	color:white;
}

#roomChoice{
	width:25%;
	height:100%;
	float:left;
	background-color: RGB(0, 125, 175);
	font-size:20px;
	color:white;
}

#hotelRoom1Info{
	width:100%;
	height:225px;

}
#hotelRoom1Type{
	width:30%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
}
#hotelRoom1Capacity{
	width:20%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
}
#hotelRoom1Price{
	width:25%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
	padding-top:13%;
}
#hotelRoom1Choice{
	width:25%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
	padding-top:13%;
}

#hotelRoom2Info{
	width:100%;
	height:225px;

}

#hotelRoom2Type{
	width:30%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
}
#hotelRoom2Capacity{
	width:20%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
}
#hotelRoom2Price{
	width:25%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
	padding-top:13%;
}
#hotelRoom2Choice{
	width:25%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
	padding-top:13%;
}

#hotelRoom3Info{
	width:100%;
	height:225px;

}

#hotelRoom3Type{
	width:30%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
}
#hotelRoom3Capacity{
	width:20%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
}
#hotelRoom3Price{
	width:25%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
	padding-top:13%;
}
#hotelRoom3Choice{
	width:25%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
	padding-top:13%;
}
 
 #hotelRoom4Info{
	width:100%;
	height:225px;

}

#hotelRoom4Type{
	width:30%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
}
#hotelRoom4Capacity{
	width:20%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
}
#hotelRoom4Price{
	width:25%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
	padding-top:13%;
}
#hotelRoom4Choice{
	width:25%;
	height:100%;
	border:1px solid black;
	float:left;
	text-align:center;
	font-size:15px;
	padding-top:13%;
}
 
</style>


<%@ include file="/views/main/header.jsp" %>
	<section>
	
	<div style="width: 1200px; height: 1800px; ">
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
	    <option>&nbsp; 0</option>
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
		<button>결제 하기</button>
		</div>
		</div>
	
</div>


	
	
	
	
    </section>
	<%@ include file="/views/main/footer.jsp" %>
	
</body>
</html>