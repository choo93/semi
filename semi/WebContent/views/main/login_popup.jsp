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
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<link rel="stylesheet" href="../../css/main/materialize.min.css">
<link rel="stylesheet" href="../../css/main/template.css">
<script src="../../js/main/jquery-3.3.1.min.js"></script>
<script src="../../js/main/materialize.min.js"></script>
<script src="../../js/main/template.js"></script>
<style>
input[type=text]:not(.browser-default),
input[type=password]:not(.browser-default){
	width:790px!important;
}

/* materialize !important */
input[type=text]:not(.browser-default):focus:not([readonly]){
	border-bottom:1px solid #b43029;
	box-shadow:0 1px 0 0 #b43029;
}
input[type=password]:not(.browser-default):focus:not([readonly]){
	border-bottom:1px solid #b43029;
	box-shadow:0 1px 0 0 #b43029;
}
input[type=search]:not(.browser-default):focus:not([readonly]){
	border-bottom:1px solid #b43029;
	box-shadow:0 1px 0 0 #b43029;
}
input[type=text]:not(.browser-default):focus:not([readonly])+label{
	color:#b43029;
}
input[type=password]:not(.browser-default):focus:not([readonly])+label{
	color:#b43029;
}
input[type="checkbox"]:checked+span:not (.lever ):before {
	border-right: 2px solid #b43029;
	border-bottom: 2px solid #b43029;
}
h4 {
padding-top:60px;
}
section {
margin:0;
}
</style>

</head>
<body>
<%-- <%@ include file="/views/main/header.jsp" %> --%>
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
			<a href="javascript:idFind();">아이디 찾기</a>
		</div>
		<div class="input-field col s4">
			<a href="javascript:pwdFind();">비밀번호 찾기</a>
		</div>
	</div>
	<style>
		.row>div>a:hover{
			color:#b43029;
		}
	</style>
	<script type="text/javascript">
		function idFind(){
			window.open("/views/main/idFind.jsp","","width=315,height=155,top=250,left=200,resizable=no,scrollbars=no,status=no");
		}
		function pwdFind(){
			window.open("/views/main/pwdFind.jsp","","width=315,height=192,top=250,left=200,resizable=no,scrollbars=no,status=no");
		}
	</script>
</div>
</section>
</body>
</html>