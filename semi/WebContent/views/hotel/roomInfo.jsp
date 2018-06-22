<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="semi.hotel.model.vo.*"
	import="java.util.*"%>
    
<%
      ArrayList<RoomInfo> ri = (ArrayList<RoomInfo>)request.getAttribute("roomInfo");
%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
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

	
</body>
</html>