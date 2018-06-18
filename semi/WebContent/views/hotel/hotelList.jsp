<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.hotel.model.vo.*"
	import="java.util.*"%>


<%
	HotelPageData hpd = (HotelPageData)request.getAttribute("HotelPageData");
	ArrayList<HotelInfo> list = hpd.getHotelList();
	String pageNavi = hpd.getPageNavi();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="/lib/w3.css">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/hotel/hotelList.css">
<link rel="stylesheet" href="../../css/moreBtn.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes"
	rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/hotel/hotelList.js"></script>
</head>
<body id="scroll">



	<%@ include file="/views/main/header.jsp"%>
	<section>


	<div style="width: 1200px; height: 2400px; margin-left: 15%;">

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
					<div id="hotelTitle" style="font: bold 30pt 나눔스퀘어;"><%=hl.getHotelName()%></div>
					<div id="hotelTotalExplain" style="font-size:15px;"><%=hl.getHotelBriefDescription()%></div>
					
					<button id="button" onclick="hotelInfo(<%=hl.getIndexNum() %>);"
						style="margin-left: 80%;">자세히</button>
				</div>
			</div>

			<%
				}
			%>
		</div>
			<!-- 
	<div id="hotelTotalList-2">
	<div id="hotelImageList-2" style="background-image:url(//imgio.trivago.com/itemimages/15/60/156078_v3_isq.jpeg)"></div>
	
	<div id="hotelExplain-2">
	<div id="hotelTitle-2" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-2">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	</div>
	
	<div id="hotelTotalList-3">
	<div id="hotelImageList-3" style="background-image:url(//imgio.trivago.com/itemimages/31/36/3136052_v2_isq.jpeg)"></div>
	
	<div id="hotelExplain-3">
	<div id="hotelTitle-3" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-3">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	</div>
	
	<div id="hotelTotalList-4">
	<div id="hotelImageList-4" style="background-image:url(//imgio.trivago.com/itemimages/51/09/5109850_isq.jpeg)"></div>
	
	<div id="hotelExplain-4">
	<div id="hotelTitle-4" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-4">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	</div>
	
	<div id="hotelTotalList-5">
	<div id="hotelImageList-5" style="background-image:url(//imgio.trivago.com/itemimages/69/18/6918234_isq.jpeg)"></div>
	
	<div id="hotelExplain-5">
	<div id="hotelTitle-5" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-5">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	</div>
	
	<div id="hotelTotalList-6">
	<div id="hotelImageList-6" style="background-image:url(//imgio.trivago.com/itemimages/66/24/6624478_isq.jpeg)"></div>
	
	<div id="hotelExplain-6">
	<div id="hotelTitle-6" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-6">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	</div>
	
	<div id="hotelTotalList-7">
	<div id="hotelImageList-7" style="background-image:url(//imgio.trivago.com/itemimages/38/80/388051_v5_isq.jpeg)"></div>
	
	<div id="hotelExplain-7">
	<div id="hotelTitle-7" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-7">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	
	</div>
	
	<div id="hotelTotalList-8">
	<div id="hotelImageList-8" style="background-image:url(//imgio.trivago.com/itemimages/21/03/2103684_v1_isq.jpeg)"></div>
	
	<div id="hotelExplain-8">
	<div id="hotelTitle-8" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-8">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	</div>
	
	<div id="hotelTotalList-9">
	<div id="hotelImageList-9" style="background-image:url(//imgio.trivago.com/itemimages/34/85/3485578_isq.jpeg)"></div>
	
	<div id="hotelExplain-9">
	<div id="hotelTitle-9" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-9">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	</div>
	
	<div id="hotelTotalList-10">
	<div id="hotelImageList-10" style="background-image:url(//imgio.trivago.com/itemimages/15/53/155348_v4_isq.jpeg)"></div>
	
	<div id="hotelExplain-10">
	<div id="hotelTitle-10" style="font: bold 30pt 나눔스퀘어; ">호텔 리츠칼튼 서울</div>
	<div id="hotelTotalExplain-10">이호텔은 서울 어딘가에 위치해 있으며.....</div>
	 <button id="button" style="margin-left: 80%;">자세히</button>
	</div>
	</div>
	 -->
	</div>
	<div class = "container" style="text-align:center;">
	<ul class="pagination pagination-lg"><%= pageNavi %></ul>
	</div>

	<script>
		function hotelInfo(index) {

			location.href = "/hotelInfo?indexNum="+index;
		}
	</script> 
	</section>
	<%@ include file="/views/main/footer.jsp"%>

</body>
</html>