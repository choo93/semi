<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="semi.dobo.model.vo.*" import="java.util.*"
%>
<%
	DoboPageData dpd = (DoboPageData)request.getAttribute("doboPageData");
	ArrayList<DoboInfo> list = dpd.getDoboList();
	String pageNavi = dpd.getPageNavi();
%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="../../css/concert/concertList.css">
	<link rel="stylesheet" href="../../css/moreBtn.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>
	<script src="../../js/dobo/doboList.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp" %>
	<section>
		<div id="title">
        	공연 예약
    	</div>
    	
    	<%for(DoboInfo di : list){ %>
    	
    	<div id="contents">
        	<img id="photo" src="<%=di.getDoboMainPhoto() %>" alt="포스터">
        	<div id="explain">
        		<div id="concertTitle" onclick="doboInfo(<%=di.getIndexNo() %>);">
        			<%=di.getDoboTitle() %>
        		</div>
        		<div id="concertSummary">
        			<%=di.getDoboSummary() %>
        		</div>
        		<div id="btn">
        			<button id="button" onclick="doboInfo(<%=di.getIndexNo() %>);">자세히</button>
        		</div>
        	</div>
    	</div>
    	
    	<%} %>
		
		<label id="navi"><%= pageNavi %></label>
	</section>
	<%@ include file="/views/main/footer.jsp" %>
</body>
</html>