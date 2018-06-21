<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 회원가입</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link rel="stylesheet" href="../../css/main/materialize.min.css">
<link rel="stylesheet" href="../../css/main/joinus.css">
<script src="../../js/main/jquery-3.3.1.min.js"></script>
<script src="../../js/main/joinus.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<section>
	<div class="wrapper">
		<h4 style="margin: 0;">회원가입</h4>
		<div class="step_design">
			<div class="step_circle" style="background-color:#ddd;">
				<img src="../../image/main/step1.png"
					style="width: 35px; margin: 17px;">
			</div>
			<div class="step_write">
				<h6 style="color:#999;">Step1</h6>
				<p style="color:#999;">약관동의</p>
			</div>
			<div class="step_circle" style="background-color:#ddd;">
				<img src="../../image/main/step2.png"
					style="width: 35px; margin: 18px; margin-left: 21px;">
			</div>
			<div class="step_write">
				<h6 style="color:#999;">Step2</h6>
				<p style="color:#999;">정보입력</p>
			</div>
			<div class="step_circle">
				<img src="../../image/main/step3.png"
					style="width: 35px; margin: 16px; margin-left: 18px;">
			</div>
			<div class="step_write">
				<h6>Step3</h6>
				<p>가입완료</p>
			</div>
		</div>
		<div class="joinus_final" style="clear:both;border:1px solid #ddd; height:400px; margin-top:20px;">
			<img src="../../image/main/check.png" style="width:110px;margin-left:422px;margin-top:60px;">
			<p style="font-size:1.8rem;text-align:center;">회원가입이 <span style="font-weight:bold;">완료</span> 되었습니다.</p>
			<a href="/index.jsp" style="margin-left:290px;border:1px solid #ddd;width:180px;height:60px;display:inline-block;text-align:center;line-height:60px;margin-top:20px;margin-right:10px;">홈으로</a>
			<a href="/views/main/login.jsp" style="width:180px;height:60px;background-color:black;color:white;display:inline-block;text-align:center;line-height:60px;">로그인</a>
		</div>
	</div>
	</section>
</body>
</html>