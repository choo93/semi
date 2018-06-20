<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*" %>
<% SeoulUser su = (SeoulUser)session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 회원 정보 / 회원 정보 수정 페이지를 따로 제작하기 -->
	<h1>회원 정보 수정</h1>
	
	<!-- 이 부분 나중에 다 고치기 -->
	<form action="/userUpdate" method="post">
		아이디 : <input type="text" name="userId" value="<%=su.getUserId() %>" readonly><br>
		패스워드 : <input type="password" name="userPwd" value="<%=su.getUserPwd() %>"><br>
		패스워드(확인) : <input type="password" name="userPwd_re" value="<%=su.getUserPwd() %>"><br>
		이름 : <input type="text" name="userName" value="<%=su.getUserName() %>" readonly><br>
		이메일 : <input type="email" name="userEmail" value="<%=su.getUserEmail() %>"><br>
		휴대폰 : <input type="text" name="userPhone" value="<%=su.getUserPhone() %>"><br>
		주소 : <input type="text" name="userAddr" value="<%=su.getUserAddr() %>"><br>
		<input type="submit" value="수정하기"><button type="button" onclick="back();">취소</button>
	</form>
	<a href="/userDelete">회원탈퇴</a><br>
	<a href="/myReserveList">예약 리스트</a>
</body>
</html>