<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="/css/concertList.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp" %>
	<section>
		
		<div id="title">
        
    	</div>
    	
    	<%for(int i=0;i<5;i++){ %>
    	
    	<div id="contents">
        	<img alt="포스터">
        	<div id="explain"></div>
    	</div>
    	
    	<%} %>
		
		
	</section>
	<%@ include file="/views/main/footer.jsp" %>
</body>
</html>