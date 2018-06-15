<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/concert/concertReserve.css">
<script src="../../js/concert/concertReserve.js"></script>
<title>Insert title here</title>

<style>

#wrap {
	width: 500px;
	height: 300px;
}
</style>
<body>
	<div id="wrap">
		<form action="/seatSelect" method="get">
			날짜선택 : <input id="date" type="date" name="date"><br> 
			시간 선택 : <select id="time" name="time">
            			<option value="09:00">11:00</option>
            			<option value="13:00">13:00</option>
            			<option value="13:00">15:00</option>
            			<option value="13:00">17:00</option>
            			<option value="13:00">19:00</option>
            			<option value="13:00">21:00</option>
        			</select>
        	<br>
			<input type="hidden" name="indexNo" value="<%=request.getParameter("indexNo")%>">
			<input type="hidden" name="concertCode" value="<%=request.getParameter("concertCode")%>">
			가격: <label><%=request.getParameter("price")%></label><br>
			<input type="hidden" name="price" value="<%=request.getParameter("price")%>">
			<input type="submit" value="좌석선택" onclick="return check();">
		</form>
		
	</div>
	
</body>
</html>