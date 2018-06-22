<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="image/main/favicon.ico">
<link rel="stylesheet" href="/css/concert/concertReserve.css?ver=1">
<script src="../../js/concert/concertReserve.js?ver=1"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<title>예약 하기</title>
<body>
	<div id="wrap">
		<label>예약 하기</label>
		<form action="/seatSelect" method="get">
			<div id="dated">
				<label>날짜선택 </label> <input autocomplete="off"; id="datepicker1" type="text" name="date"><br>
			</div>
			<div id="timed">
				<label>시간 선택 </label> <select id="time" name="time">
					<option value="09:00">11:00</option>
					<option value="13:00">13:00</option>
					<option value="13:00">15:00</option>
					<option value="13:00">17:00</option>
					<option value="13:00">19:00</option>
					<option value="13:00">21:00</option>
				</select>
			</div>
			<div id="peopled">
				<label>인원 선택</label> <select id="people" name="people">
					<option value="1">1명</option>
					<option value="2">2명</option>
					<option value="3">3명</option>
				</select>
			</div>
			<input type="hidden" name="indexNo"
				value="<%=request.getParameter("indexNo")%>"> <input
				type="hidden" name="concertCode"
				value="<%=request.getParameter("concertCode")%>">
			<div id="priced">
				<label>가격 </label> <label id="price"> <%=request.getParameter("price")%></label>
			</div>
			<input type="hidden" name="price"
				value="<%=request.getParameter("price")%>"> <input
				id="submit" type="submit" value="좌석선택" onclick="return check();">
		</form>

	</div>

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

</body>
</html>