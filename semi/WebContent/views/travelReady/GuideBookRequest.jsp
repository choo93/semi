<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>	
</head>
<style>
#pagetitle
	{
	position:relative;
 	padding-left:3%;
 	padding-right:3%;
    padding-bottom: 20px;
    border-bottom: 1px solid #d6d6d6;
    width:94%;
    height:120px;
    margin-bottom:35px;
    }
    
    #title
    {
    	position:relative;
    	width:94%;
    	height:120px;
    	margin-left:3%;
    	margin-right:3%;
    	line-height:70px;
    	overflow-x:hidden;
		overflow-y:hidden;
    }
</style>
<script>
	function back(){
		history.go(-1);
	}
</script>
<body>
<%@ include file="/views/main/header.jsp" %>
<section>
		<div id="pagetitle">
			<div id="title">
				<p style="height:50px;">현재위치  : 여행준비 > 가이드북&지도</p>
				<h3 style="font-size:50px;">가이드북&지도 신청하기</h3>
			</div>
		</div>
		
		<div id="order" style="width:960px; height:1000px;">
<form action="/guideBookRequest" method="post">
성명 : <input type="text" placeholder="ID를 입력하세요" name="name" /><br>
Email : <input type="email" placeholder="이메일을 입력하세요" name="email" /><br>
전화번호 : <input type="text" placeholder="전화번호를 입력하세요" name="phone" /><br>
우편번호 : <input type="text" placeholder="" name="addrnum" /><br>
기본주소 : <input type="text" placeholder="기본 주소를 입력하세요" name="addr"><br>
상세주소 : <input type="text" placeholder="상세 주소를 입력하세요" name="addr2">

가이드북:<select name="guidebooknum">
		<option>1권</option>
		<option>2권</option>
		<option>3권</option>
		</select>
지도:<select name="mapnum">
		<option>1권</option>
		<option>2권</option>
		<option>3권</option>
		</select><br>
		<input type="submit" value="신청하기">
		<button type="button" onclick="back();">취소</button>
</form>
		</div>
		</section>
<%@ include file="/views/main/footer.jsp" %>
</body>
</html>