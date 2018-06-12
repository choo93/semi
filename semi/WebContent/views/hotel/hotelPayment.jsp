<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<style>


#contents{
	width:100%;
	height:50px;
}
#hotelReserveDate{
	width:50%;
	height:100%;
	float:left;
	font-size:20px;
}
#hotelPrice{
	width:50%;
	height:100%;
	float:left;
	font-size:20px;
	text-align:right;
	
}

#contents-1{
	width:100%;
	height:50px;
}

#hotelServicePriceExplain{
	width:50%;
	height:100%;
	float:left;
	font-size:20px;
}

#hotelServicePrice{
	width:50%;
	height:100%;
	float:left;
	font-size:20px;
	text-align:right;
}

#contents-2{
	width:100%;
	height:100px;
}

#hotelTotalPrice{
	width:50%;
	height:100%;
	float:left;
	font-size:20px;
}

#hotelTotalPrice-1{
	width:50%;
	height:100%;
	float:left;
	font-size:40px;
	text-align:right;
}

#contents-3{
	width:100%;
	height:250px;
}

#content-4{
	width:100%;
	height:200px;
	padding-top:10%;
	padding-left:35%;
}

</style>

<div style="width:100%; height:500px; ">
<div id="contents">
<div id="hotelReserveDate">토, 03/18,2017</div>
<div id="hotelPrice">\120,000</div><br><hr>	
</div>

<div id="contents-1">
<div id="hotelServicePriceExplain">세금 및 서비스 요금</div>
<div id="hotelServicePrice">\12,000</div><br><hr>
</div>

<div id="contents-2">
<div id="hotelTotalPrice">총 요금</div>
<div id="hotelTotalPrice-1">\132.000</div><br><hr>
</div>

<div id="content-3">지불하실 총 금액은 호텔 객실 예약 시 청구됩니다.</div><br><hr>

<div id="content-4"><button onclick="pricePayment()">결제하기</button>
<button onclick="back();">취소</button>
</div>

</div>


</body>
</html>