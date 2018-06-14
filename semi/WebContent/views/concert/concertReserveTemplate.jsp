<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
			시간 선택 : <input id="time" type="time" name="time"><br> 
			<input type="hidden" name="indexNo" value="<%=request.getParameter("indexNo")%>">
			<input type="hidden" name="concertCode" value="<%=request.getParameter("concertCode")%>">
			가격: <label><%=request.getParameter("price")%></label><br>
			<input type="hidden" name="price" value="<%=request.getParameter("price")%>">
			<input type="submit" value="좌석선택" onclick="return check();">
		</form>
		
	</div>
	
</body>
</html>