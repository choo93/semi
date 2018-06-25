<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.hotel.model.vo.*"
	import="java.util.*"%>


<%
	HotelPageData hpd = (HotelPageData)request.getAttribute("HotelPageData");
	ArrayList<HotelInfo> list = hpd.getHotelList();
	String pageNavi = hpd.getPageNavi();

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 호텔 예약</title>
<link rel="icon" href="image/main/favicon.ico">
<link rel="stylesheet" href="/lib/w3.css">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/hotel/hotelList.css">
<link rel="stylesheet" href="../../css/moreBtn.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/hotel/hotelList.js"></script>
<style>
	*{
		font-family: 'Nanum Gothic', sans-serif;
	}
	.wrapper{
		width:1600px;
		margin:0 auto;
	}
	#contents{
		width:98%;
	}
</style>
</head>
<body id="scroll">



	<%@ include file="/views/main/header.jsp"%>
	<section>

	<div class="wrapper">
	<div style="width: 1200px; height: 2320px; margin-left: 15%;">

		<div id="contents">
			<div id="contents-1">
				<div id="contentTitle">호텔 목록</div>
			</div>
		</div>
		<div id="hotelTotalList">
			<%
				for (HotelInfo hl : list) {
			%>
			<div id="hotelTotalList-1" style="margin-top:1%">
				<div id="hotelImageList-1"
					style="background-image:url<%=hl.getHotelListMainPhoto()%>"></div>

				<div id="hotelExplain">
					<div id="hotelTitle" onclick="hotelInfo(<%=hl.getIndexNum() %>);"><%=hl.getHotelName()%></div>
					<div id="hotelTotalExplain"><%=hl.getHotelBriefDescription()%></div>
					
					<button id="button" onclick="hotelInfo(<%=hl.getIndexNum() %>);"
						style="margin-left: 80%;">자세히</button>
				</div>
			</div>

			<%
				}
			%>
		</div>
			
	</div>
	<div class = "container" style="text-align:center;">
	<ul class="pagination pagination-lg" style="margin-bottom:60px;"><%= pageNavi %></ul>
	</div>

	<script>
		function hotelInfo(index) {

			location.href = "/hotelInfo?indexNum="+index;
		}
	</script> 
	</div>
	</section>
	<%@ include file="/views/main/footer.jsp"%>

</body>
</html>