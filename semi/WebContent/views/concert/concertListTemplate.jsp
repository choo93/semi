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
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
	<link rel="stylesheet" href="../../css/concert/concertList.css">
	<link rel="stylesheet" href="../../css/moreBtn.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>
	<script src="../../js/concert/concertList.js?ver=1"></script>
	<script src="../../js/bootstrap.min.js"></script>
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
        			<!-- 생략 했어요 -->
        		</div>
        		<div id="btn">
        			<button id="button" onclick="concertInfo(<%=ci.getIndexNo() %>);">자세히</button>
        		</div>
        	
        	</div>
    	</div>
    	
    	<%} %>
		<div class = "container" style="text-align:center;">
			<ul class="pagination pagination-lg"><%= pageNavi %></ul>
		</div>
	</section>
	<%@ include file="/views/main/footer.jsp" %>
</body>
</html>