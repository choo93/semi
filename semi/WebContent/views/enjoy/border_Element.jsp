<%@page import="java.util.StringTokenizer"%>
<%@page import="semi.enjoy.model.vo.EnjoyDetailData1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.enjoy.model.vo.EnjoyListData"
	import="semi.enjoy.model.vo.EnjoyDetailData1"
	import="semi.enjoy.model.vo.EnjoyElementData"
	import="semi.enjoy.model.vo.EnjoyComment"
	import="semi.enjoy.model.vo.CommentData"
	import="semi.login.model.vo.SeoulUser" import="java.util.*"%>
<%
   EnjoyElementData EED = (EnjoyElementData) request.getAttribute("EED");
   EnjoyListData ELD = EED.getELD();
   EnjoyDetailData1 edd1 = EED.getEdd1();

   CommentData cd = null;
   ArrayList<EnjoyComment> CommentList = null;
   String pageNavi = null;
   if (EED.getCd() != null) {
      cd = EED.getCd();
      CommentList = cd.getCommentList();
      pageNavi = cd.getPageNavi();
   } else {
      CommentList = new ArrayList<EnjoyComment>();

   }
   SeoulUser user = null;
   if((SeoulUser)session.getAttribute("user")!=null)
   {
	   user = (SeoulUser)session.getAttribute("user");
   }
		   
   
%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/enjoy/ReviewBox.css">
<link rel="stylesheet" href="../../css/enjoy/inputReview.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<link rel="stylesheet" href="../../css/enjoy/pagination.css">
<link rel="stylesheet" href="../../css/enjoy/writeReviewBox.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script src="../../js/bootstrap.js"></script>
<script src="../../js/bordertoogle.js"></script>
</head>
<style>
.container-fluid {
						padding: 0;
					}

					/* .carousel-inner {
						width: 100%;
						height: auto;
					}

					.carousel-inner div img {
						width: 100%;
						height: auto;
					}

					.carousel-caption {
						bottom: 85%;
					}

					.control {
						position: inherit;
						top: 50%;
						z-index: 5;
						display: inline-block;
						right: 50%;
					} */
 .carousel-inner {
	width: 100%;
	height: 500px;
}

.carousel-inner div img {
	width: 100%;
	height: 500px;
}

.carousel-caption {
	bottom: 85%;
} 
</style>
<body id="scroll">
	<%-- <%@ include file="/views/main/header.jsp"%> --%>
	<section>

		<!-- 모든 내용을 담는 DIV -->
		<div id="bigDiv" style="width: 100%;">
		
		<!-- 헤더 DIV -->
		<div class="header" style="width: 100%;">
			<div id="currentLocation" style="color: #5F4B8B; font: 12pt 나눔스퀘어; margin-top: 25px; margin-left: 10%; ">현재 위치 : 서울즐기기 > 
			<% String CurrentType ="";
			switch(ELD.getList_Element()){
			case "type1" : CurrentType = "추천코스"; break;  
			case "type2" : CurrentType = "명소"; break;
			case "type3" : CurrentType = "쇼핑"; break;
			case "type4" : CurrentType = "음식점"; break;
			case "type5" : CurrentType = "숙박"; break;
			case "type6" : CurrentType = "캘린더"; break;
			} %>
			<%=CurrentType %>
			
			</div>
			<div id="enjoyText" style="color: #5F4B8B; font: bold 33pt 나눔스퀘어; margin-top: 20px; margin-left: 10%; ">
			<%=ELD.getIndex_Title() %>
			</div>
			<div style="width: 95%; height: 2px; background: linear-gradient(to right, #D1D0ED 55%, white); margin-top: 1%; margin-bottom: 2%; margin-left: 10%;"></div>
		</div>
		
		<!-- 이미지 전부 다 들어가게 해야하며 크기가 전체 화면의 90% 정도.. ? -->
			<!-- 메인이미지 -->
			<%StringTokenizer STImage = new StringTokenizer(ELD.getIndex_Image(),"##");
            int STImageSu = STImage.countTokens();%>
			<div class="container">
			<div id="carousel-generic" class="carousel slide">
				<ol class="carousel-indicators">
					<li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
					<%for(int i=1;i<STImageSu;i++){ %>
					<li data-target="#carousel-generic" data-slide-to="<%=STImageSu%>"></li>
					<%} %>
				</ol>
				
				<!-- 캐러셀 이미지 부분 -->
				<div class="carousel-inner">
					<div class="item active">
						<img style="height: 500px"src="<%=STImage.nextToken()%>">
					</div>
					<%for(int i=1;i<STImageSu;i++){ %>
					<div class="item">
						<img style="height: 500px" src="<%=STImage.nextToken()%>">
					</div>
					<%} %>
				</div>
				
				<!-- 컨트롤러 부분 -->
				<a href="#carousel-generic" class="left carousel-control" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a href="#carousel-generic" class="right carousel-control" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
			</div>
		<div id="basicInfoAllDiv" style="padding: 3px;">
			<%if(ELD!=null) {%>
			<!-- 기본정보 토글 부분을 담는 DIV -->
			<div id="basicInfoToggleDiv" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%;">
				
				<!-- 기본정보 토글 + 기본정보 TOP 선 3PX  -->
				<div id="basic_toggle" style="width: 100%; height: 100%; border-top: solid #786BB4 3px;">
				
					<!-- 기본정보 보라색 BACKGROUND(글자) -->
					<div class="tab" style="width: 80%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- 기본정보 글자 담는 DIV -->
						<div style="color: #5F4B8B; font: bold 33px 나눔스퀘어; margin: 7px;">기본정보</div>
					</div>
					
					<!-- 기본정보 보라색 BACKGROUND(▲) -->
					<div class="tab" style="width: 20%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- ▲ 글자 담는 DIV -->
						<div class="toggleText" style="text-align: right; font: bold 33px 나눔스퀘어; color: #5F4B8B; margin: 7px;">▲</div>
					</div>
					
				</div>
			</div>
			
			<!-- 기본정보 내용만 담는 DIV -->
			<div id="basic_info" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; border: 1px solid #D1D0ED;">
			
				<!-- 내용넣을곳 -->
				<div id="basicInfoContent" style="width: 100%;">
					
				<!-- 기본정보 설명 담는 DIV -->
				<%if(ELD.getIndex_BasicInfo()!=null) {%>
					<div id="basicInfoText" style="font: 15px 나눔스퀘어; position: relative; top: 10px; left: 8px; padding: 5px; margin: 7px;">
						<%=ELD.getIndex_BasicInfo() %>
					</div>
				<%} %>
				
				<!-- 작성일 담는 DIV -->	
				<%if(ELD.getIndex_Ondate()!=null) {%>
					<p style="font: 12px 나눔스퀘어; margin-left: 20px; padding: 2px;">작성일 : <%=ELD.getIndex_Ondate()%></p>
				<%} %>
				</div>
	
				<!-- 마진 -->
				<div style="width: 100%; height: 10%;"></div>

				<div id="aboutTag" style="width: 100%; height: 30%; margin-bottom: 2%;">
				<div style="width: 100%; height: 2px; background: linear-gradient(to right, #D1D0ED 55%, white); margin-top: 2%; margin-bottom: 2%;"></div>
					<%if(ELD.getIndex_Tags()!=null) {%>
						<p style="display: inline; height: 100%; font: 15px 나눔스퀘어; margin-left: 15px; width:300px;">태그</p>
						<div style="display: inline; margin-left: 15px;">
						<%StringTokenizer Tag = new StringTokenizer(ELD.getIndex_Tags(), "#");
          	            while (Tag.hasMoreTokens()) {%>
          	              	<a href="#" style="font: 15px 나눔스퀘어;">#<%=Tag.nextToken()%></a>
						<% } %>
						</div>
					<% } %>
				</div>
			</div>
			<%} %>
		</div>


		<div id="detailInfoAllDiv" style="padding: 3px;">
			<%if(edd1!=null) {%>
			<!-- 상세정보 토글 부분을 담는 DIV -->
			<div id="detailInfoToggleDiv" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%;">

				<!-- 상세정보 토글 + 상세정보 TOP 3PX 선 -->
				<div id="detail_toggle" style="width: 100%; height: 100%; border-top: solid #786BB4 3px;">
					
					<!-- 상세정보 보라색 BACKGROUND(글자) -->
					<div style="width: 80%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- 상세정보 글자 담는 DIV -->
						<div style="color: #5F4B8B; font: bold 33px 나눔스퀘어; margin: 7px;">상세정보</div>
					</div>
					
					<!-- 상세정보 보라색 BACKGROUND(▲) -->
					<div style="width: 20%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- ▲ 글자 담는 DIV -->
						<div class="toggleText1" style="text-align: right; font: bold 33px 나눔스퀘어; color: #5F4B8B; margin: 7px;">▲</div>
					</div>
					
				</div>
			</div>

			<!-- 상세정보 내용만 담는 DIV -->
			<div id="detail_info" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; border: 1px solid #D1D0ED;">
				
				<!-- 상세정보 내용 담는 TABLE -->
				<table style="width: 98%; height: 98%; margin: 0 auto;">
					<!-- 주소 -->
					<%if(edd1.getDetail_addr()!=null) {%>
						<%if(edd1.getDetail_tell()==null){ %>
						<tr style="height: 50px;">
							<td style="width: 100px; font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">주소</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_addr()%></td>
						</tr>
						<%} else { %>
						<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="width: 100px; font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">주소</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_addr()%></td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 전화번호 -->
					<%if(edd1.getDetail_tell()!=null){ %>
						<%if(edd1.getDetail_url()==null){ %>
							<%if(edd1.getDetail_onTime()!=null){ %>
							<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
								<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">전화번호</td>
								<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_tell()%></td>
							</tr>
							<%}else{ %>
							<tr style="height: 50px;">
								<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">전화번호</td>
								<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_tell()%></td>
							</tr>
							<%} %>
						<%} else { %>
						<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">전화번호</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_tell()%></td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 웹사이트 -->
					<%if(edd1.getDetail_url()!=null){ %>
						<%if(edd1.getDetail_onTime()==null) { %>
						<tr style="height: 50px;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">웹사이트</td>
							<td style="position: relative; top: 5px; padding: 5px; margin: 7px;"> <a href="<%=edd1.getDetail_url()%>" style="font: 15px 나눔스퀘어;">웹사이트 보기</a> </td>
						</tr>
						<%} else { %>
						<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">웹사이트</td>
							<td style="position: relative; top: 5px; padding: 5px; margin: 7px;"> <a href="<%=edd1.getDetail_url()%>" style="font: 15px 나눔스퀘어;">웹사이트 보기</a> </td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 이용시간 -->
					<%if(edd1.getDetail_onTime()!=null){ %>
						<%if(edd1.getDetail_offday()==null){ %>
						<tr style="height: 50px;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">이용시간</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_onTime()%></td>
						</tr>
						<%} else { %>
						<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">이용시간</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_onTime()%></td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 휴무일 -->
					<%if(edd1.getDetail_offday()!=null){ %>
						<%if(edd1.getDetail_onday()==null){ %>
						<tr style="height: 50px;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">휴무일</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_offday()%></td>
						</tr>
						<%} else { %>
						<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">휴무일</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_offday()%></td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 운영요일 -->
					<%if(edd1.getDetail_onday()!=null){ %>
						<%if(edd1.getDetail_disabled()==null){ %>
							<%if(edd1.getDetail_notice()!=null){ %>
							<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
								<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">운영 요일</td>
								<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_onday()%></td>
							</tr>
							<%} else { %>
							<tr style="height: 50px;">
								<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">운영 요일</td>
								<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_onday()%></td>
							</tr>
							<%} %>
						<%} else { %>
						<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">운영 요일</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_onday()%></td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 장애인 편의시설 -->
					<%if(edd1.getDetail_disabled()!=null){ %>
						<%if(edd1.getDetail_notice()==null){ %>
						<tr style="height: 50px;">
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">장애인 편의시설</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_disabled()%></td>
						</tr>
						<%} else { %>
						<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">장애인 편의시설</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_disabled()%></td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 안내사항 -->
					<%if(edd1.getDetail_notice()!=null){ %>
						<%if(edd1.getDetail_payment()==null){%>
						<tr style="height: 50px;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">안내사항</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_notice()%></td>
						</tr>
						<%} else { %>
						<tr style="height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">안내사항</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_notice()%></td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 이용요금 -->
					<%if(edd1.getDetail_payment()!=null){ %>
						<%if(edd1.getDetail_utility()==null){ %>
						<tr style="height: 50px; height: 50px;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">이용요금</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_payment()%></td>
						</tr>
						<%} else { %>
						<tr style="height: 50px; height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">이용요금</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_payment()%></td>
						</tr>
						<%} %>
					<%} %>
					
					<!-- 이용시설안내 -->
					<%if(edd1.getDetail_utility()!=null){ %>
					<tr style="height: 50px;">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">이용시설안내</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_utility()%></td>
					</tr>
					<%} %>
				</table>
				
			</div>
			<%} %>
		</div>
		<%if(edd1.getDetail_traficAddress()!=null||edd1.getDetail_traficRoot()!=null){ %>
		<div id="mapInfoAllDiv" style="padding: 3px;">
			<!-- 지도&교통편 토글 부분을 담는 DIV -->
			<div style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; ">
			
				<!-- 지도&교통편 토글 + TOP 3PX 선 -->
				<div id="map_toggle" style="width: 100%; height: 100%; border-top: solid #786BB4 3px;">
				
					<!-- 지도&교통 BACKGROUND(글자) -->
					<div style="width: 80%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- 지도&교통 글자 담는 DIV -->
						<div style="color: #5F4B8B; font: bold 33px 나눔스퀘어; margin: 7px;">지도&교통</div>
					</div>
					
					<!-- 상세정보 보라색 BACKGROUND(▲) -->
					<div style="width: 20%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- ▲ 글자 담는 DIV -->
						<h3 class="toggleText2" style="text-align: right; font: bold 33px 나눔스퀘어; color: #5F4B8B; margin: 7px;">▼</h3>
					</div>
					
				</div>
				
				<table style="width: 98%; height: 98%; margin: 0 auto;">
				
				<%if(edd1.getDetail_traficRoot()!=null){ %>
				<tr style="height: 50px; height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">교통정보</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_traficRoot()%></td>
				</tr>
				<%} %>
				<%if(edd1.getDetail_Latitue()==0||edd1.getDetail_Longitude()==0){ %>
				<tr style="height: 50px; height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">안내</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">해당 장소는 지도안내가 지원되지 않습니다.</td>
				</tr>
				<%}else{ %>
				<tr style="height: 50px; height: 50px; border-bottom: 1px solid #D1D0ED;">
							<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px; width:300px;">안내</td>
							<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">지도 안내를 원하신다면 "▼" 를 눌러주세요</td>
				</tr>
				<%} %>
				</table>
				
			</div>
			<%if(edd1.getDetail_Latitue()!=0||edd1.getDetail_Longitude()!=0){ %>
				<!-- 지도교통 내용 넣을곳 -->
				<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGT4VwYUrA0PeXg-MIt2MvQBGEyDLBQ4Y&callback=initMap"></script>
			<!-- 지도&교통편 내용만 담는 DIV -->
			<div id="map_info" style="width: 90%; height:500px; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; border: 1px solid #D1D0ED; display: none;">


							
			</div>
			<%} %>
		</div>
	<%} %>
		<div id="commentAllDiv" style="padding: 3px;">
			<!-- 댓글 토글 부분 담는 DIV-->
			<div style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%;">
			
				<!-- 댓글 토글 + TOP 3PX 선 -->
				<div id="review_toggle" style="width: 100%; height: 100%; border-top: solid #786BB4 3px;">
					
					<!-- 댓글 토글 보라색 BACKGROUND(글자) -->
					<div style="width: 80%; height: 50px; float: left; background-color: #C7C4E2">
						<!-- 댓글 글자 담는 DIV -->
						<div style="color: #5F4B8B; font: bold 33px 나눔스퀘어; margin: 7px;">리뷰&댓글</div>
					</div>
					
					<!-- 댓글 보라색 BACKGROUND(▲) -->
					<div style="width: 20%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- ▲ 글자 담는 DIV -->
						<div class="toggleText3" style="text-align: right; font: bold 33px 나눔스퀘어; color: #5F4B8B; margin: 7px;">▲</div>
					</div>
					
				</div>
				
			</div>
			
			<!-- 댓글 관련 전부 담는 DIV -->
			<div id="review_info" align="center" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; border: 1px solid #D1D0ED;">
				
				<!-- 전체 덧글 갯수 보려는 DIV -->
				<div id="countComment" style="text-align: left; font: bold 2rem 나눔스퀘어; margin-top: 25px; margin-left: 25px; ">전체덧글 : <%=EED.getCount() %></div>
				
				<!-- 댓글 내용 부분만 담는 DIV -->
				<div id="reviewContentInfo">
				<!-- 댓글 내용 불러오깅 -->
				<% if (!CommentList.isEmpty()) { %>
				<% for(EnjoyComment EC : CommentList) {%>
				
					<!-- 댓글 내용 전체 들어가는 DIV -->
					<div id="aboutComments" style="width: 900px; height: 180px; position: relative; top: 20px; padding: 20px; text-align: left;">
						
						<!-- ID 부분의 DIV -->
						<div style="position: relative; top: 20px; float: left;">
						
							<!-- 박스 DIV -->
							<div class="leftBox" style="position: relative; width: 170px; height: 110px; margin-right: 50px;">
								<span id="userId" style="position: absolute; color: #6C4371; margin: 30px; top: 15px; left: 27px; font: bold 1.5rem 나눔스퀘어;"><%=EC.getUSER_ID() %></span>
							</div>
							
						</div>

						<!-- 댓글 제목, 내용 들어가는 박스 DIV -->
						<div class="rightBox" style="width: 70%; height: 100%; padding: 5px; float: left; position: relative;">
							
							<!-- 제목,내용 들어가는 DIV -->
							<div style="float: left; position: relative; width: 80%; height: 90%;">
							
							<!-- 덧글 수정 기능 FORM -->
							<form action="/enjoyCommentUpdate" method="post" style="display: inline;">
							
								<!-- hidden 값으로 게시물번호와 리뷰번호를 받아서 서블릿에 값을 넘긴다 -->
								<input type="hidden" name="index_titleNo" value="<%=edd1.getSEQ_Index_TitleNo()%>" />
								<input type="hidden" name="SEQ_REVIEW" value="<%=EC.getSEQ_REIVEW()%>" />
								
								<!-- 제목 DIV -->
								<div id="indexTitle" style="width: 100%; height: 20%; color: #6C4371; font: bold 1.5rem 나눔스퀘어; margin-top: 15px; margin-left: 15px;">
									
									<!-- 제목 글씨 -->
									<span id="<%=EC.getSEQ_REIVEW()%>_indexTitleHtml" style="font: bold 1.5rem 나눔스퀘어;"><%=EC.getINDEX_TITLE() %></span>
									
									<!-- 수정 버튼 누를 시 TEXT 타입으로 전환되며 수정할 제목 문구 입력 가능 -->
									<input type="hidden" name="Index_Title" id="<%=EC.getSEQ_REIVEW()%>_title" style="width: 380px; height: 20px; border: 1px solid #9B95C9; background-color: #C7C4E2;" value="<%=EC.getINDEX_TITLE()%>" />
								
								</div>

								<!-- 내용 DIV -->
								<div id="userComment" style="width: 100%; height: 80%; color: #6C4371; font: 1.2rem 나눔스퀘어; margin-left: 15px;">
								
									<!-- 내용 글씨 -->
									<span id="<%=EC.getSEQ_REIVEW()%>_userCommentHtml" style="font: bold 1.2rem 나눔스퀘어;"><%=EC.getUSER_COMMNET() %></span>
									
									<!-- 수정 버튼 누를 시 TEXT 타입으로 전환되며 수정할 내용 문구 입력 가능 -->
									<textarea rows="5" cols="60" style="display: none;" name="User_Comment" id="<%=EC.getSEQ_REIVEW()%>_comment"><%=EC.getUSER_COMMNET()%></textarea>
								
								</div>
								
								<!-- 기존 수정 버튼 누르고 수정할 TEXT 입력한 후 SUBMIT 할 수 있게끔 하는 새로운 수정 버튼 -->
								<input type="hidden" style="position: absolute; left: 500px; bottom: 1px; width: 40px; height: 20px;" id="<%=EC.getSEQ_REIVEW()%>_submit" value="수정">
								
								<!-- 이건 수정 버튼 누른 후에 취소하고 싶을 때 누를 수 있게 하는 취소 버튼 -->
								<button type="button" id="<%=EC.getSEQ_REIVEW()%>_reBtn" style="display: none;" onclick="cancel(<%=EC.getSEQ_REIVEW()%>);">취소</button>
							
							</form>
							
							</div>
							
							<!-- 날짜 / 따봉버튼  들어가는 DIV-->
							<div style="float: left; width: 20%; height: 70%; color: #6C4371; text-align: center;">
		
								<!-- 날짜 들어가는 DIV -->
								<div style="width: 100%; height: 30%; line-height: 3;">
									<span id="insertDate" style="color: #6C4371; font: bold 1.2rem 나눔스퀘어; margin-left: 25px;"><%=EC.getWrite_Date() %></span>
								</div>
								
								<!-- 따봉버튼 들어가는 DIV -->
								<div style="width: 100%; height: 70%; ">
									
									<!-- 좋아요 버튼 위치 DIV-->
									<div style="width: 50%; height: 100%; float: left;" >
										<img src="/image/enjoy/GOOD.png" style="margin-top: 10px; margin-left: 40px; height: 60%; width: 60%; object-fit: contain">
										<span style=" margin-left: 40px; font: 10pt 나눔스퀘어;">999+</span>
									</div>
									
									<!-- 싫어요 버튼 위치 DIV-->
									<div style="width: 50%; height: 100%; float: right; ">
										<img src="image/enjoy/BAD.png" style="margin-top: 10px; margin-left: 15px; height: 60%; width: 60%; object-fit: contain">
										<span style="margin-left: 17px; font: 10pt 나눔스퀘어;">97</span>
									</div>
								</div>
								
							</div>
							
								
							<%if(user!=null && user.getUserId().equals(EC.getUSER_ID())){ %>
							<!-- 삭제 버튼 DIV -->
							<div style="width: 7%; height: 10%; float: right;">
							
							<!-- 덧글 삭제 기능 FORM -->
							<form action="/enjoyCommentDelete" method="post" style="display: inline;">
								
								<!-- hidden 값으로 게시물번호와 리뷰번호를 받아서 서블릿에 값을 넘긴다 -->
								<input type="hidden" name="index_titleNo" value="<%=edd1.getSEQ_Index_TitleNo()%>" />
								<input type="hidden" name="SEQ_REVIEW" value="<%=EC.getSEQ_REIVEW()%>" />
								
								<!-- 삭제 버튼, 수정 버튼 누를 땐 안뜨게 한다 -->
								<input type="submit" id="<%=EC.getSEQ_REIVEW()%>_commentDeleteBtn" style="position: absolute; bottom: 15px; width: 40px; height: 20px" value="삭제" />
							</form>
							
							</div>
							
							<!-- 수정 버튼 DIV -->
							<div style="width: 7%; height: 10%; float: right;">
								<button type="button" id="<%=EC.getSEQ_REIVEW()%>_btn" style="position: absolute; bottom: 15px; width: 40px; height: 20px;" onclick="update(<%=EC.getSEQ_REIVEW()%>);">수정</button>
							</div>
							
							<%} %>
							
							<!-- 수정&삭제 버튼 눌렀을 경우 script -->
                           	<script>
                              function update(id){
                                 window.document.getElementById(id+"_title").type="text";
                                 window.document.getElementById(id+"_comment").style="display:inline; resize: none; border: 1px solid #9B95C9; background-color: #C7C4E2";
                                 window.document.getElementById(id+"_indexTitleHtml").style="display:none";
                                 window.document.getElementById(id+"_userCommentHtml").style="display:none";
                                 window.document.getElementById(id+"_submit").type="submit";
                                 window.document.getElementById(id+"_btn").style="display:none";
                                 window.document.getElementById(id+"_reBtn").style="display:inline; position: absolute; left: 542px; bottom: 1px; width: 40px; height: 20px;";
                                 window.document.getElementById(id+"_commentDeleteBtn").style="display:none";
                              }
                              function cancel(id){
                                 window.document.getElementById(id+"_title").type="hidden";
                                 window.document.getElementById(id+"_comment").style="display:none";
                                 window.document.getElementById(id+"_indexTitleHtml").style="display:inline; font: bold 1.5rem 나눔스퀘어;";
                                 window.document.getElementById(id+"_userCommentHtml").style="display:inline; font: 1.2rem 나눔스퀘어;";
                                 window.document.getElementById(id+"_submit").type="hidden";
                                 window.document.getElementById(id+"_btn").style="display:inline; position: absolute; bottom: 16px; width: 40px; height: 20px;";
                                 window.document.getElementById(id+"_reBtn").style="display:none";
                                 window.document.getElementById(id+"_commentDeleteBtn").style="display:inline; position: absolute; bottom: 16px; width: 40px; height: 20px;";
                              }
                           </script>
						</div>
						
					</div>
					<%} %>
					
					<!-- 페이지 부분 DIV -->
					<div class="container">
						<ul class="pagination pagination-lg"><%=pageNavi %></ul>
					</div>
					
				</div>
				<!-- 댓글이 없을경우도 처리해야함.  -->
				<% } %>
				
					<!-- 댓글 입력 DIV -->
					<div class="review" align="center" style="width: 90%;">
							<!-- 밑에 주석 풀어야해요 -->
							<%if(((SeoulUser)session.getAttribute("user"))==null) { if(CommentList.isEmpty()){%>
							<!-- 로그인 안했고, 댓글창이 비어있을떄. -->
							<div class="cantWriteBox" style="width: 70%; height: 100px; padding: 5px; margin-top: 40px; margin-bottom: 40px;">
								<div id="notWriteReview">
									<input type="text" name="Not_Index_Title" readonly style="width: 100%; height: 100%; border: transparent; background-color: transparent; font: 12pt 나눔스퀘어; padding-top: 5px; border-top-left-radius: 5px; border-top-right-radius: 5px;">
									<textarea name="Not_User_Comment" readonly placeholder="로그인후  첫번째 의견의  주인공이 되어주세요" style="resize: none; width: 100%; border: transparent; background-color: transparent; font: 12pt 나눔스퀘어; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;"></textarea>
								</div>
							</div>
							
							<%}else{ %>
							<!-- 로그인 안한 경우 덧글 작성 불가능하게 하기 -->
							<div class="cantWriteBox" style="width: 70%; height: 100px; padding: 5px; margin-top: 40px; margin-bottom: 40px;">
								<div id="notWriteReview">
									<input type="text" name="Not_Index_Title" readonly style="width: 100%; height: 100%; border: transparent; background-color: transparent; font: 12pt 나눔스퀘어; padding-top: 5px; border-top-left-radius: 5px; border-top-right-radius: 5px;">
									<textarea name="Not_User_Comment" readonly placeholder="로그인 한 사용자만 덧글 작성이 가능합니다" style="resize: none; width: 100%; border: transparent; background-color: transparent; font: 12pt 나눔스퀘어; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;"></textarea>
								</div>
							</div>

							<!-- 밑에주석풀어야해요 -->
							<%}}else{%>
								
								<%if(CommentList.isEmpty()){%>
												<!-- 덧글 작성 기능 FORM -->
						<form action="/review" method="post">
						
							<!-- 로그인 한 경우 덧글 작성하는 DIV -->
							<div class="writeBox" style="width: 70%; height: 250px; padding: 5px; position: relative;">
								<div id="writeBox">
									<input autocomplete="off" type="text" name="Index_Title" placeholder="첫번째 의견의 주인공이 되어주세요!, <%=user.getUserName() %>님" maxlength="100" style="width: 100%; height: 100%; border: 1px solid #9B95C9; background-color: transparent; color: #FFFFFF; font: 12pt 나눔스퀘어; padding-top: 5px; border-top-left-radius: 5px; border-top-right-radius: 5px; text-indent: 10px;">
									<textarea autocomplete="off" name="User_Comment" placeholder="타인에게 불쾌감을 주는 욕설 또는 특정 계층/민족, 종교 등을 비하하는 단어는 지양해주시기 바랍니다." maxlength="1000" style="resize: none; width: 100%; height: 200px; border: 1px solid #9B95C9; background-color: transparent; color: #FFFFFF; font: 12pt 나눔스퀘어; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; text-indent: 10px;"></textarea>
								</div>
							</div>
							
							<!-- 게시물 번호 hidden, userid 값으로 갖고옴 -->
							<input type="hidden" value="<%=edd1.getSEQ_Index_TitleNo()%>" name="index_titleNo">
							<input type="hidden" value="<%=user.getUserId()%>" name="index_userID">
							
							<!-- 덧글 작성 버튼 -->
							<div id="reviewBtnDiv" style="padding: 10px; margin-top: 40px;">
								<input type="submit" value="댓글작성" id="reviewButton" />
							</div>
						</form>		
								<% }else{%>
								<!-- 덧글 작성 기능 FORM -->
						<form action="/review" method="post">
						
							<!-- 로그인 한 경우 덧글 작성하는 DIV -->
							<div class="writeBox" style="width: 70%; height: 250px; padding: 5px; position: relative;">
								<div id="writeBox">
									<input autocomplete="off" type="text" name="Index_Title" placeholder="제목을 입력하세요" maxlength="100" style="width: 100%; height: 100%; border: 1px solid #9B95C9; background-color: transparent; color: #FFFFFF; font: 12pt 나눔스퀘어; padding-top: 5px; border-top-left-radius: 5px; border-top-right-radius: 5px; text-indent: 10px;">
									<textarea autocomplete="off" name="User_Comment" placeholder="내용을 입력하세요" maxlength="1000" style="resize: none; width: 100%; height: 200px; border: 1px solid #9B95C9; background-color: transparent; color: #FFFFFF; font: 12pt 나눔스퀘어; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; text-indent: 10px;"></textarea>
								</div>
							</div>
							
							<!-- 게시물 번호 hidden, userid 값으로 갖고옴 -->
							<input type="hidden" value="<%=edd1.getSEQ_Index_TitleNo()%>" name="index_titleNo">
							<input type="hidden" value="<%=user.getUserId()%>" name="index_userID">
							
							<!-- 덧글 작성 버튼 -->
							<div id="reviewBtnDiv" style="padding: 10px; margin-top: 40px;">
								<input type="submit" value="댓글작성" id="reviewButton" />
							</div>
						</form>		
									
								<%}%>
						
							<!-- 밑에주석풀어야해요 -->
							<%}%>

						
						
					</div>
				</div>
				
				<!-- 맨 밑 공백을 위한 DIV -->
				<div style="width: 100%; height: 50px;"></div>
			
			</div>
		</div>
	</section>


	<!-- ▼ 이미지 슬라이더 스크립트 -->
	<script>
      var slideIndex = 1;
      showDivs(slideIndex);

      function plusDivs(n) {
         showDivs(slideIndex += n);
      }

      function showDivs(n) {
         var i;
         var x = document.getElementsByClassName("mySlides");
         if (n > x.length) {
            slideIndex = 1
         }
         if (n < 1) {
            slideIndex = x.length
         }
         ;
         for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
         }
         x[slideIndex - 1].style.display = "block";
      }

      var myIndex = 0;
      carousel();

      function carousel() {
         var i;
         var x = document.getElementsByClassName("mySlides");
         for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
         }
         myIndex++;
         if (myIndex > x.length) {
            myIndex = 1
         }
         x[myIndex - 1].style.display = "block";
         setTimeout(carousel, 3000);
      }
   </script>
	<!-- ▲ 이미지 슬라이더 스크립트 -->
	<!--  지도 api -->
	<!-- 지도 가져오는 스크립트 --> 
				<script>
                function initMap() {
                    var uluru = {
                    lat: <%=edd1.getDetail_Latitue()%>, 
                    lng: <%=edd1.getDetail_Longitude()%>
                };
                var map = new google.maps.Map(document.getElementById('map_info'), {
                   zoom: 18,
                   center: uluru
                });
                var marker = new google.maps.Marker({
                   position: uluru,
                   map: map
                });
                }
        
                 var latitude;
                 var longitude;
                 window.onload = function() {
                  	navigator.geolocation.getCurrentPosition(showYourLocation);
                 }

                 function showYourLocation(position) {
                  	latitude = position.coords.latitude;
                  	longitude = position.coords.longitude;
                 }
                </script>
	<%@ include file="/views/main/footer.jsp"%>
</body>

</html>