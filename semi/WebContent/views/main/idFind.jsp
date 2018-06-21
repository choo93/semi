<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 아이디 찾기</title>
<link rel="icon" href="../../image/main/favicon.ico">
</head>
<body>
	<form action="/idFind" method="post">
		<p><label><span style="margin-right:25px;font-weight:bold;">이름</span><input type="text" name="userName" style="width:220px;"></label></p>
		<p><label><span style="margin-right:10px;font-weight:bold;">이메일</span><input type="email" name="userEmail" style="width:220px;"></label></p>
		<input type="submit" value="아이디 찾기" style="background-color:black;border:none;color:white;width:282px;height:50px;line-height:50px;cursor:pointer;">
	</form>	
</body>
</html>