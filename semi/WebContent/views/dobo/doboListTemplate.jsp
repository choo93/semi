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
	<link rel="icon" href="image/main/favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>도보 관광 예약</title>
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
	<link rel="stylesheet" href="../../css/concert/concertList.css?ver=1">
	<link rel="stylesheet" href="../../css/moreBtn.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/dobo/doboList.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp" %>
	<section>
	<div style="width:960px;margin:0 auto;">
		<div id="title">
        	공연 예약
        	<button onclick="noUser();">비회원 예약 정보 조회</button>
    	</div>
    	
    	<%for(DoboInfo di : list){ %>
    	
    	<div id="contents">
        	<img id="photo" src="<%=di.getDoboMainPhoto() %>" alt="포스터">
        	<div id="explain">
        		<div id="concertTitle" onclick="doboInfo(<%=di.getIndexNo() %>);">
        			<%=di.getDoboTitle() %>
        		</div>
        		<div id="concertSummary">
        			<%if(di.getDoboSummary()!=null){ %>
        				<%=di.getDoboSummary() %>
        			<%}else{ %>
        				
        			<%} %>
        		</div>
        		<div id="btn">
        			<button id="button" style="background-color:#3071a9;"onclick="doboInfo(<%=di.getIndexNo() %>);">자세히</button>
        		</div>
        	</div>
    	</div>
    	
    	<%} %>
		
		<div class = "container" style="text-align:center;">
			<ul class="pagination pagination-lg"><%= pageNavi %></ul>
		</div>
		</div>
	</section>
	<%@ include file="/views/main/footer.jsp" %>
</body>
<script>
function noUser(){
	var reserveNo = window.prompt('예약 번호 입력');
	if(reserveNo){
		location.href="/noUserDobo?reserveNo="+reserveNo;
	}
	
}
</script>
</html>