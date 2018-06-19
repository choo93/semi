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
		
		<!-- 이미지 전부 다 들어가게 해야하며 크기가 전체 화면의 90% 정도.. ? -->
			<!-- 메인이미지 -->
			<%StringTokenizer STImage = new StringTokenizer(ELD.getIndex_Image(),"##");
            int STImageSu = STImage.countTokens();%>

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
						<img src="<%=STImage.nextToken()%>">
					</div>
					<%for(int i=1;i<STImageSu;i++){ %>
					<div class="item">
						<img src="<%=STImage.nextToken()%>">
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
			
		<div id="basicInfoAllDiv" style="padding: 3px;">
			<%if(ELD!=null) {%>
			<!-- 기본정보 토글 부분을 담는 DIV -->
			<div id="basicInfoToggleDiv" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%;">
				
				<!-- 기본정보 토글 + 기본정보 TOP 선 3PX  -->
				<div id="basic_toggle" style="width: 100%; height: 100%; border-top: solid #786BB4 3px;">
				
					<!-- 기본정보 보라색 BACKGROUND(글자) -->
					<div class="tab" style="width: 80%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- 기본정보 글자 담는 DIV -->
						<div style="font: bold 33px 나눔스퀘어; margin: 7px;">기본정보</div>
					</div>
					
					<!-- 기본정보 보라색 BACKGROUND(▲) -->
					<div class="tab" style="width: 20%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- ▲ 글자 담는 DIV -->
						<div class="toggleText" style="text-align: right; font: bold 33px 나눔스퀘어; margin: 7px;">▲</div>
					</div>
					
				</div>
			</div>
			
			<!-- 기본정보 내용만 담는 DIV -->
			<div id="basic_info" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; background-color: #D1D0ED;">
			
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

				<div id="aboutTag" style="width: 100%; height: 30%;">
				<div style="width: 100%; height: 2px; background: #ddd; margin-top: 2%; margin-bottom: 2%;"></div>
					<%if(ELD.getIndex_Tags()!=null) {%>
						<p style="display: inline; height: 100%; font: 15px 나눔스퀘어; margin-left: 15px;">태그</p>
						<div style="display: inline; margin-left: 15px;">
						<%StringTokenizer Tag = new StringTokenizer(ELD.getIndex_Tags(), "#");
          	            while (Tag.hasMoreTokens()) {%>
          	              	<a href="#" style="font: 15px 나눔스퀘어;">#<%=Tag.nextToken()%></a>
						<% } %>
						</div>
					<% } %>
					<div style="width: 100%; height: 2px; background: #ddd; margin-top: 2%; margin-bottom: 1%;"></div>
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
						<div style="font: bold 33px 나눔스퀘어; margin: 7px;">상세정보</div>
					</div>
					
					<!-- 상세정보 보라색 BACKGROUND(▲) -->
					<div style="width: 20%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- ▲ 글자 담는 DIV -->
						<div class="toggleText1" style="text-align: right; font: bold 33px 나눔스퀘어; margin: 7px;">▲</div>
					</div>
					
				</div>
			</div>

			<!-- 상세정보 내용만 담는 DIV -->
			<div id="detail_info" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; background-color: #D1D0ED">
				
				<!-- 상세정보 내용 담는 TABLE -->
				<table style="width: 100%; height: 100%;">
					<!-- 주소 -->
					<%if(edd1.getDetail_addr()!=null) {%>
					<tr style="height: 50px">
						<td style="width: 100px; font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">주소</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_addr()%></td>
					</tr>
					<%} %>
					
					<!-- 전화번호 -->
					<%if(edd1.getDetail_tell()!=null){ %>
					<tr style="height: 50px">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">전화번호</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_tell()%></td>
					</tr>
					<%} %>
					
					<!-- 웹사이트 -->
					<%if(edd1.getDetail_url()!=null){ %>
					<tr style="height: 50px">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">웹사이트</td>
						<td style="position: relative; top: 5px; padding: 5px; margin: 7px;"> <a href="<%=edd1.getDetail_url()%>" style="font: 15px 나눔스퀘어;">웹사이트 보기</a> </td>
					</tr>
					<%} %>
					
					<!-- 이용시간 -->
					<%if(edd1.getDetail_onTime()!=null){ %>
					<tr style="height: 50px">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">이용시간</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_onTime()%></td>
					</tr>
					<%} %>
					
					<!-- 휴무일 -->
					<%if(edd1.getDetail_offday()!=null){ %>
					<tr style="height: 50px">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">휴무일</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_offday()%></td>
					</tr>
					<%} %>
					
					<!-- 운영요일 -->
					<%if(edd1.getDetail_onday()!=null){ %>
					<tr style="height: 50px">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">운영 요일</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_onday()%></td>
					</tr>
					<%} %>
					
					<!-- 장애인 편의시설 -->
					<%if(edd1.getDetail_disabled()!=null){ %>
					<tr style="height: 50px">
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">장애인 편의시설</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_disabled()%></td>
					</tr>
					<%} %>
					
					<!-- 안내사항 -->
					<%if(edd1.getDetail_notice()!=null){ %>
					<tr style="height: 50px">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">안내사항</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_notice()%></td>
					</tr>
					<%} %>
					
					<!-- 이용요금 -->
					<%if(edd1.getDetail_payment()!=null){ %>
					<tr style="height: 50px">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">이용요금</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_payment()%></td>
					</tr>
					<%} %>
					
					<!-- 이용시설안내 -->
					<%if(edd1.getDetail_utility()!=null){ %>
					<tr style="height: 50px">
						<td style="font: bold 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;">이용시설안내</td>
						<td style="font: 15px 나눔스퀘어; position: relative; top: 5px; padding: 5px; margin: 7px;"><%=edd1.getDetail_utility()%></td>
					</tr>
					<%} %>
				</table>
				
			</div>
			<%} %>
		</div>
			
		<div id="mapInfoAllDiv" style="padding: 3px;">
			<!-- 지도&교통편 토글 부분을 담는 DIV -->
			<div style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; ">
			
				<!-- 지도&교통편 토글 + TOP 3PX 선 -->
				<div id="map_toggle" style="width: 100%; height: 100%; border-top: solid #786BB4 3px;">
				
					<!-- 지도&교통 BACKGROUND(글자) -->
					<div style="width: 80%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- 지도&교통 글자 담는 DIV -->
						<div style="font: bold 33px 나눔스퀘어; margin: 7px;">지도&교통</div>
					</div>
					
					<!-- 상세정보 보라색 BACKGROUND(▲) -->
					<div style="width: 20%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- ▲ 글자 담는 DIV -->
						<h3 class="toggleText2" style="text-align: right; font: bold 33px 나눔스퀘어; margin: 7px;">▼</h3>
					</div>
					
				</div>
				
			</div>
			
			<!-- 지도&교통편 내용만 담는 DIV -->
			<div id="map_info" style="width: 90%; height: 15%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%; background-color: #D1D0ED; display: none;">

				<!-- 지도교통 내용 넣을곳 -->
				<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGT4VwYUrA0PeXg-MIt2MvQBGEyDLBQ4Y&callback=initMap"></script>
				
				<!-- 지도 가져오는 스크립트 --> 
				<script>
                function initMap() {
                    var uluru = {
                    lat: ${37.5606449}, 
               		lng: ${126.99718819999998}
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
			</div>
		</div>

		<div id="commentAllDiv" style="padding: 3px;">
			<!-- 댓글 토글 부분 담는 DIV-->
			<div style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%;">
			
				<!-- 댓글 토글 + TOP 3PX 선 -->
				<div id="review_toggle" style="width: 100%; height: 100%; border-top: solid #786BB4 3px;">
					
					<!-- 댓글 토글 보라색 BACKGROUND(글자) -->
					<div style="width: 80%; height: 50px; float: left; background-color: #C7C4E2">
						<!-- 댓글 글자 담는 DIV -->
						<div style="font: bold 33px 나눔스퀘어; margin: 7px;">리뷰&댓글</div>
					</div>
					
					<!-- 댓글 보라색 BACKGROUND(▲) -->
					<div style="width: 20%; height: 50px; float: left; background-color: #C7C4E2;">
						<!-- ▲ 글자 담는 DIV -->
						<div class="toggleText3" style="text-align: right; font: bold 33px 나눔스퀘어; margin: 7px;">▲</div>
					</div>
					
				</div>
				
			</div>
			
			<!-- 댓글 관련 전부 담는 DIV -->
			<div id="review_info" align="center" style="width: 90%; margin-top: 3%; margin-left: 5%; margin-bottom: 3%;">
				
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
								<input type="hidden" style="position: absolute; left: 550px; bottom: 1px; width: 40px; height: 20px;" id="<%=EC.getSEQ_REIVEW()%>_submit" value="수정">
								
								<!-- 이건 수정 버튼 누른 후에 취소하고 싶을 때 누를 수 있게 하는 취소 버튼 -->
								<button type="button" id="<%=EC.getSEQ_REIVEW()%>_reBtn" style="display: none;" onclick="cancel(<%=EC.getSEQ_REIVEW()%>);">취소</button>
							
							</form>
							
							</div>
							
							<!-- 날짜  들어가는 DIV-->
							<div style="float: left; width: 20%; height: 90%; color: #6C4371; text-align: center; line-height: 5;">
								<span id="insertDate" style="color: #6C4371; font: bold 1.2rem 나눔스퀘어; margin: 15px;"><%=EC.getWrite_Date() %></span>
							</div>
							
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
							
							<!-- 수정&삭제 버튼 눌렀을 경우 script -->
                           	<script>
                              function update(id){
                                 window.document.getElementById(id+"_title").type="text";
                                 window.document.getElementById(id+"_comment").style="display:inline; resize: none; border: 1px solid #9B95C9; background-color: #C7C4E2";
                                 window.document.getElementById(id+"_indexTitleHtml").style="display:none";
                                 window.document.getElementById(id+"_userCommentHtml").style="display:none";
                                 window.document.getElementById(id+"_submit").type="submit";
                                 window.document.getElementById(id+"_btn").style="display:none";
                                 window.document.getElementById(id+"_reBtn").style="display:inline; position: absolute; left: 600px; bottom: 1px; width: 40px; height: 20px;";
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
				<% } else { %>
					<div style="width: 100%; height: 200px; position: relative; padding: 30px;"> </div>
				<% } %>
				
					<!-- 댓글 입력 DIV -->
					<div class="review" align="center" style="width: 90%;">
							<!-- 밑에 주석 풀어야해요 -->
							<%if(((SeoulUser)session.getAttribute("user"))==null) {%>
							
							<!-- 로그인 안한 경우 덧글 작성 불가능하게 하기 -->
							<div class="cantWriteBox" style="width: 70%; height: 100px; padding: 5px; margin-top: 40px; margin-bottom: 40px;">
								<div id="notWriteReview">
									<input type="text" name="Not_Index_Title" readonly style="width: 100%; height: 100%; border: transparent; background-color: transparent; font: 12pt 나눔스퀘어; padding-top: 5px; border-top-left-radius: 5px; border-top-right-radius: 5px;">
									<textarea name="Not_User_Comment" readonly placeholder="로그인 한 사용자만 덧글 작성이 가능합니다" style="resize: none; width: 100%; border: transparent; background-color: transparent; font: 12pt 나눔스퀘어; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;"></textarea>
								</div>
							</div>

							<!-- 밑에주석풀어야해요 -->
							<%}else{ %>
						<!-- 덧글 작성 기능 FORM -->
						<form action="/review" method="post">
						
							<!-- 로그인 한 경우 덧글 작성하는 DIV -->
							<div class="writeBox" style="width: 70%; height: 250px; padding: 5px; position: relative;">
								<div id="writeBox">
									<input autocomplete="off" type="text" name="Index_Title" placeholder="제목을 입력하세요" maxlength="100" style="width: 100%; height: 100%; border: 1px solid #9B95C9; background-color: transparent; color: #FFFFFF; font: 12pt 나눔스퀘어; padding-top: 5px; border-top-left-radius: 5px; border-top-right-radius: 5px; text-indent: 10px;">
									<textarea autocomplete="off" name="User_Comment" placeholder="내용을 입력하세요" maxlength="1000" style="resize: none; width: 100%; height: 200px; border: 1px solid #9B95C9; background-color: transparent; color: #FFFFFF; font: 12pt 나눔스퀘어; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; text-indent: 10px;"></textarea>
								</div>
							</div>
							
							<!-- 게시물 번호 hidden 값으로 갖고옴 -->
							<input type="hidden" value="<%=edd1.getSEQ_Index_TitleNo()%>" name="index_titleNo">
							
							<!-- 덧글 작성 버튼 -->
							<div id="reviewBtnDiv" style="padding: 10px; margin-top: 40px;">
								<input type="submit" value="댓글작성" id="reviewButton" />
							</div>

							<!-- 밑에주석풀어야해요 -->
							<%}%>

						</form>
						
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

	<%@ include file="/views/main/footer.jsp"%>
</body>

</html>