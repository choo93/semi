<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String reserve = (String)request.getAttribute("reserve"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(reserve!=null){
		if(reserve.equals("success")){
	%>
		<script>
			alert('예약 성공!');
			<%System.out.println(request.getParameter("indexNo")); %>
			opener.location.href="/hotelInfo?indexNum="+<%=request.getParameter("indexNo") %>;
			window.close();
		</script>	
	<%
		}else if(reserve.equals("fail")){
	%>	
			<script>
				alert('예약 실패...');
				opener.location.href="/hotelInfo?indexNum="+<%=request.getParameter("indexNo") %>;
				window.close();
			</script>
	<%	}
	}
	%>
</body>
</html>