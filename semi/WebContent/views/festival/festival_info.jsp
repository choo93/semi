<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="semi.festival.model.vo.*" import="java.util.*"%>
		<%
	Festival f = (Festival) request.getAttribute("festival");
	ArrayList<FestivalComment> list = (ArrayList<FestivalComment>) request.getAttribute("comment");
%>
			<!DOCTYPE html>
			<html>

			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<title>Insert title here</title>

				<link rel="stylesheet" href="../../css/bootstrap.min.css">
				<script src="../../js/jquery-3.3.1.min.js"></script>
				<script src="../../js/bootstrap.min.js"></script>
<!-- 				<link rel="stylesheet" href="../../css/main.css"> -->
				<script src="../../js/main.js"></script>
				<!-- <link rel="stylesheet" href="../../css/festivalFont.css"> -->

				<style>
					.container-fluid {
						padding: 0;
					}

					.carousel-inner {
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
					}

					.font {
						color: white;
						text-shadow: 1px -1px 1px rgb(233, 231, 109), -1px 2px 2px rgb(137, 31, 199);
						height: 60px;
						margin-bottom: 10px;
						font: italic bold 3.3rem "나눔스퀘어";
						overflow: hidden;
						text-overflow: ellipsis;
						padding-top: 10px;
						margin: 0;
					}

					.head {
						/* background-color: #ffffff; */
						background-color: rgb(0, 0, 0, 0.8);
					}

					.container {
						padding-top: 30px;
					}
				</style>
				<script>
					// 이거는 자바 스크립트 선언에서 가져오는 듯
					function initMap() {
						var uluru = {
							lat:
<%=f.getFestivalLatitude() %>
	,
							lng:
<%=f.getFestivalLongtitude() %>
	};
						var map = new google.maps.Map(document.getElementById('mapContent'), {
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
					window.onload = function () {
						navigator.geolocation.getCurrentPosition(showYourLocation);
					}

					function showYourLocation(position) {
						latitude = position.coords.latitude;
						longitude = position.coords.longitude;
					}
				</script>


				<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGT4VwYUrA0PeXg-MIt2MvQBGEyDLBQ4Y&callback=initMap"></script>
			</head>

			<body id="scroll">
	<%-- 			<%@ include file="/views/main/header.jsp"%> --%>

					<section>
						<div class="container">
							<div class="container-fulid">
								<div class="head" style="text-align: center">
									<p class="font">
										<%=f.getFestivalTitle()%>
									</p>
								</div>

								<!-- 캐러셀 시작 -->
								<%if(f.getFestivalSubImg1()!=null){ %>
								<div id="carousel-generic" class="carousel slide">
									<!-- 인디케이터 부분 -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-generic" data-slide-to="1"></li>
										<li data-target="#carousel-generic" data-slide-to="2"></li>
									</ol>
									<!-- 캐러셀 이미지 부분 -->
									<div class="carousel-inner">
										<div class="item active">
											<img src="<%=f.getFestivalMainImg()%>">

										</div>
										<div class="item">
											<img src="<%=f.getFestivalSubImg1()%>">
										</div>
										<div class="item">
											<img src="<%=f.getFestivalSubImg2()%>">
										</div>
									</div>
									<!-- 컨트롤러 부분 -->
									<a href="#carousel-generic" class="left carousel-control" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left"></span>
									</a>
									<a href="#carousel-generic" class="right carousel-control" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
								<%}else{ %>
								<div id="carousel-generic" class="carousel slide">
									<!-- 인디케이터 부분 -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
										</ol>
									<!-- 캐러셀 이미지 부분 -->
									<div class="carousel-inner">
										<div class="item active">
											<img src="<%=f.getFestivalMainImg()%>">

										</div>
										</div>
									<!-- 컨트롤러 부분 -->
									<a href="#carousel-generic" class="left carousel-control" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left"></span>
									</a>
									<a href="#carousel-generic" class="right carousel-control" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
								<%} %>
							</div>
							<br>
							<!-- 설명 시작 -->
							<div class="container-fluid">
								<div class="panel panel-danger">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-target="#collapseOne"> 기본정보 </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<%=f.getFestivalDetailInfo()%>
										</div>
									</div>
								</div>
								<%if(f.getFestivalAddr()!=null){ %>
								<div class="panel panel-danger">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-target="#collapseTwo"> 상세정보 </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">

											<table style="height: 100%; width: 100%;">

												<tr>
													<td>주소</td>
													<td>
														<!-- 03131 서울 종로구 삼일대로 464(윤현궁) -->
														<%=f.getFestivalAddr()%>
													</td>
												</tr>
												<tr>
													<td>전화번호</td>
													<td>
														<!-- 02-766-9090 -->
														<%=f.getFestivalTell()%>
													</td>
												</tr>


												<tr>
													<td>웹사이트</td>
													<td>
														<!-- <a href="http://www.naver.com/">웹사이트 보기</a> -->
														<a href="<%=f.getFestivalSite()%>">웹사이트 보기</a>
													</td>
												</tr>
												<tr>
													<td>이용시간</td>
													<td>
														<!-- 11 ~ 3월 09:00 ~ 18:00
									<br>
										4 ~ 10월 09:00 ~ 19:00 -->
														<%=f.getFestivalPeriod()%>
													</td>
												</tr>

												<tr>
													<td>운영 요일</td>
													<td>
														<!-- 화수목금토일 -->
														<%=f.getFestivalOntime()%>
													</td>
												</tr>
												<tr>
													<td>장애인 편의시설</td>
													<td>
														<!-- 접근가능
										<br>장애인화장실 -->
														<%=f.getFestivalUtility()%>
													</td>
												</tr>
												<tr>
													<td>규모</td>
													<td>
														<!-- 서울 종로구 운니동에 있는 조선 후기 흥선대원군의 사가.
										<br> 고종이 이곳에서 열두 살 때까지 자라다 왕이 됐으며 생부(生父) 이하응은 흥선대원군이 됐다.
										<br> 운현궁(雲峴宮)에서 대원군은 서원 철폐, 경복궁 중건, 세제 개혁 등 많은 사업을 추진했다.
										<br> 원래는 궁궐에 견줄 만큼 크고 웅장하였다고 전해지나 현재는 사랑채 노안당, 안채 이로당과 노락당만이 남아 있다.
										<br> 정원 등은 잘 보존되어 있으며 인기 드라마 궁의 촬영지로도 쓰인 양관이 가까이에 있다. -->
													</td>
												</tr>
												<tr>
													<td>이것만은 꼭!</td>
													<td>
														<!-- 운현궁 양관 : 본래 흥선대원군의 손자인 이준용을 위해 지은 건물로 양관이라고 불린다.
										<br> 프렌치 르네상스 풍의 석재를 혼용한 벽돌 2층 저택에 16개의 천장 문양이 모두 다르다.
										<br> 1948년 덕성여자대학교에 매각되어 한때 교사로 쓰였고 지금도 평생교육원으로 쓰인다.
										<br> 인기 드라마 궁의 촬영 장소로 사용되기도 했다. -->
														<%=f.getFestivalNotice()%>
													</td>
												</tr>
												<tr>
													<td>이용요금</td>
													<td>
														<%=f.getFestivalPayment()%>
													</td>
												</tr>
												<tr>
													<td>이용시설안내</td>
													<td>
														<!-- 운현궁 정례 행사, 운현궁 일요 예술마당, 고종 명성후 가례(국혼례) 행사 안내
										<br> - 궁중의상체험
										<br> - 대원군행차체험 -->
														<%=f.getFestivalUtility()%>
													</td>
												</tr>
											</table>


										</div>
									</div>
								</div>
								<%} %>
								
								<%if(f.getFestivalLatitude()!=0){ %>
								<div class="panel panel-danger">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-target="#collapseThree"> 지도&교통
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">
											<div id="mapContent" style="width: 635px; height: 300px;">
											</div>
										</div>
									</div>
								</div><%} %>
								<div class="panel panel-danger">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-target="#collapseFour"> 댓글 </a>
										</h4>
									</div>
									<div id="collapseFour" class="panel-collapse collapse">
										<div class="panel-body" class="form-horizontal">
											<form action="/festivalComment">
												<div class="row form-group">
													<label class="col-sm-1 control-label" style="padding-top:7px;">아이디</label>
													<input type="hidden" class="form-control" value="아이디" name="userId"/>
													<input type="hidden" class="form-control" value="<%=f.getFestivalTitle() %>" name="title"/>
													<input type="hidden" class="form-control" value="<%=f.getTitleNo() %>" name="titleNo"/>
													<div class="col-xs-9 col-xs-offset-1">
														<input type="text" class="form-control" placeholder="댓글내용" name="comment"/>
													</div>
													<div class="col-xs-1">
														<button type="submit" class="btn btn-default"style="font-size:14px; font;font-weight: bold;">전송</button>
													</div>
												</div>
											</form>
											<div class="container-fulid">
												<div class="row">
													<table class="table">
														<tr>
															<th>아이디</th>
															<th>내용</th>
															<th>작성일</th>
														</tr>
														
														<%for(FestivalComment fc : list) { %>
														<tr>
															<td><%=fc.getUserId() %></td>
															<td><%=fc.getUserComment() %><a href="/commentDelete"><span class="glyphicon glyphicon-trash pull-right"></span></a></td>
															<td><%=fc.getWriteDate() %></td>
														</tr>
														<%} %>
														
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
								<button class="btn btn-danger pull-right" onclick="back();">목록</button>
								<br>
								<br>
								<br>
								<br>
								<script>
									function back(){
										location.href="/festivalList?season=<%=f.getFestivalSeason()%>";
									}
								</script>
							</div>
						</div>


					</section>
<%-- 					<%@ include file="/views/main/footer.jsp"%> --%>
						<script>
							$('.carousel').carousel();
						</script>
			</body>

			</html>