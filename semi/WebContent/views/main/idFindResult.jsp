<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*"%>
<% SeoulUser su = (SeoulUser)request.getAttribute("user");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 아이디 찾기</title>
<link rel="icon" href="../../image/main/favicon.ico">
</head>
<body>
	<p style="text-align:center;margin-top:29px;">아이디 : <span style="font-weight:bold;"><%=su.getUserId() %></span></p>
	<button onclick="login();" style="background-color:black;color:white;border:none;margin-left:73px;margin-top:6px;width:150px;height:50px;line-height:50px;cursor:pointer;">로그인</button>
	<script>
		function login(){
			window.close();
		}
	</script>	
</body>
</html>