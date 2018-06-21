<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 로그인</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link rel="stylesheet" href="../../css/main/login.css">
<script src="../../js/main/jquery-3.3.1.min.js"></script>
</head>
<body>
<%@ include file="/views/main/header.jsp" %>
<section>
<div class="wrapper">
	<h4>로그인</h4>
	<hr>
	<form action="/login" method="post">
	<div class="input-field col s12" style="margin-bottom:30px;">
		<input type="text" name="userId" style="padding-left:10px;">
		<label for="id">아이디</label>
	</div>
	<div class="input-field col s12">
		<input type="password" name="userPwd" style="padding-left:10px;">
		<label for="pwd">비밀번호</label>
	</div>
	<div class="input-field col s12">
		<input class="btn submit_button" type="submit" value="LOGIN">
	</div>
	</form>
	<div class="row">
		<div class="input-field col s4">
			<a href="/views/main/joinus.jsp">회원가입</a>
		</div>
		<div class="input-field col s4">
			<a href="javascript:loginFind();">아이디 찾기</a>
		</div>
		<div class="input-field col s4">
			<a href="">비밀번호 찾기</a>
		</div>
	</div>
	<script type="text/javascript">
		function loginFind(){
			window.open("/views/main/loginFind.jsp","","width=370,height=360,resizable=no,scrollbars=no,status=no");
		}
	</script>
</div>
</section>
</body>
</html>