<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="semi.dobo.model.vo.*"
%>
<%DoboReserve dr = (DoboReserve)request.getAttribute("reserveInfo"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		<%if(dr!=null){
		%>
			alert('도보관광 : <%=dr.getDoboTitle() %>\n날짜 : <%=dr.getDate() %>\n시간 : <%=dr.getTime() %>\n만남 장소 : <%=dr.getDoboMeet() %>');
			
		<%
		}else{
		%>	
			alert('해당 번호의 예약 정보는 없습니다.');
		<%
		}
		%>
		history.go(-1);
	</script>
</body>
</html>