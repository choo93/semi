<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="semi.concert.model.vo.*" import="java.util.*"
%>
<%
	ConcertPageData cpd = (ConcertPageData)request.getAttribute("concertPageData");
	ArrayList<ConcertInfo> list = cpd.getConcertList();
	String pageNavi = cpd.getPageNavi();
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="../../css/concertList.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>
	<script src="../../js/concertList.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp" %>
	<section>
		<div id="title">
        	공연 예약
    	</div>
    	
    	<%for(ConcertInfo ci : list){ %>
    	
    	<div id="contents">
        	<img id="photo" src="<%=ci.getConcertPhoto() %>" alt="포스터">
        	<div id="explain">
        		<div id="concertTitle" onclick="concertInfo(<%=ci.getIndexNo() %>);">
        			<%=ci.getConcertTitle() %>
        		</div>
        		<div id="concertDate">
        			<%=ci.getConcertDate() %>
        		</div>
        		<div id="concertSummary">
        			<%=ci.getConcertSummary() %>
        		</div>
        		
        	
        	</div>
    	</div>
    	
    	<%} %>
		
		<label id="navi"><%= pageNavi %></label>
	</section>
	<%@ include file="/views/main/footer.jsp" %>
</body>
</html>