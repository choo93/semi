<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/concert/concertReserve.css">
<script src="../../js/concert/concertReserve.js"></script>
<title>Insert title here</title>

<body>
	<div id="wrap">
		<label>예약 하기</label>
		<form action="/seatSelect" method="get">
			<div id="dated">
				<label>날짜선택  </label>
				<input id="date" type="date" name="date"><br>
			</div> 
			<div id="timed">
				<label>시간 선택  </label>
				<select id="time" name="time">
            		<option value="09:00">11:00</option>
            		<option value="13:00">13:00</option>
            		<option value="13:00">15:00</option>
            		<option value="13:00">17:00</option>
            		<option value="13:00">19:00</option>
            		<option value="13:00">21:00</option>
        		</select>
        	</div>
        	<div>
        		<label>인원 선택</label>
				<select id="people" name="people">
            		<option value="1">1명</option>
            		<option value="2">2명</option>
            		<option value="3">3명</option>
        		</select>
        	</div>
			<input type="hidden" name="indexNo" value="<%=request.getParameter("indexNo")%>">
			<input type="hidden" name="concertCode" value="<%=request.getParameter("concertCode")%>">
			<div id="priced">
				<label>가격 </label>
				<label id="price">\ <%=request.getParameter("price")%></label>
			</div>
			<input type="hidden" name="price" value="<%=request.getParameter("price")%>">
			<input id="submit" type="submit" value="좌석선택" onclick="return check();">
		</form>
		
	</div>
	
</body>
</html>