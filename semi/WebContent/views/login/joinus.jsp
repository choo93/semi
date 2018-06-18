<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<h4>가입할 회원 정보를 입력하세요<br>(*은 필수 입력 항목)</h4>
	<form action="/joinus" method="post">
		ID : <input type="text" placeholder="ID를 입력하세요" name="userId">
		<button type="button" onclick="idCheck();">ID중복 체크</button><br>
		PW : <input type="password" placeholder="PW를 입력하세요" name="userPwd"><br>
		PW(re) : <input type="password" placeholder="PW를 재입력하세요" name="userPwd_re"><br>
		Name : <input type="text" placeholder="이름을 입력하세요" name="userName"><br>
		Email : <input type="email" placeholder="이메일을 입력하세요" name="userEmail"><br>
		Phone : <input type="text" placeholder="폰번호를 입력하세요" name="userPhone"><br>
		Addr : <input type="text" placeholder="주소를 입력하세요" name="userAddr"><br>
		<input type="submit" value="회원가입">
		<button type="button" onclick="back();">취소</button>
	</form>
</body>
</html>