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
    #order
    {
    position:relative;
  width:960px;
  height:1000px;
  background:#f00;

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
		<center>
		<div id="order">
		</div>
		</center>
		</section>
<%@ include file="/views/main/footer.jsp" %>
</body>
</html>