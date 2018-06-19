<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 회원가입</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link rel="stylesheet" href="../../css/main/joinus.css">
<link rel="stylesheet" href="../../css/main/materialize.min.css">
<script src="../../js/main/jquery-3.3.1.min.js"></script>
<script src="../../js/main/joinus.js"></script>

<style>
[type="checkbox"]:checked+span:not (.lever ):before {
	border-right: 2px solid #b43029!important;
	border-bottom: 2px solid #b43029!important;
}
</style>
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
				<div class="step_circle">
					<img src="../../image/main/step2.png"
						style="width: 35px; margin: 18px; margin-left: 21px;">
				</div>
				<div class="step_write">
					<h6>Step2</h6>
					<p>정보입력</p>
				</div>
				<div class="step_circle" style="background-color: #ddd;">
					<img src="../../image/main/step3.png"
						style="width: 35px; margin: 16px; margin-left: 18px;">
				</div>
				<div class="step_write">
					<h6 style="color: #999;">Step3</h6>
					<p style="color: #999;">가입완료</p>
				</div>
			</div>
			<div class="joinus_box">
				<label>
					<span>아이디</span>
					<input type="text">
				</label>
			</div>
			<button onclick="next();">다음</button>
			
		</div>
		<div style="background-color:white;height:20px;"></div>
	</section>
</body>
</html>