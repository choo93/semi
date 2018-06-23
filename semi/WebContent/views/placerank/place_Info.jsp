<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="semi.place.model.vo.*" import="java.util.*" import="semi.login.model.vo.*"%>
		<%
	PlaceRank pr = (PlaceRank) request.getAttribute("place");
	ArrayList<PlaceRankComment> list = (ArrayList<PlaceRankComment>) request.getAttribute("comment");
	SeoulUser user = (SeoulUser)session.getAttribute("user");%>
			<!DOCTYPE html>
			<html>

			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<title>Seoulaim - Top 10 - 정보</title>
				<link rel="icon" href="../../image/main/favicon.ico">	
				<link rel="stylesheet" href="../../css/bootstrap.min.css">
				<script src="../../js/jquery-3.3.1.min.js"></script>
				<script src="../../js/bootstrap.min.js"></script>
				<script src="../../js/main.js"></script>

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
	text-shadow: 1px -1px 1px #3071a9, -1px 2px 2px #3071a9;
	margin-bottom: 10px;
	font: italic bold 3rem "나눔스퀘어";
	overflow: hidden;
	text-overflow: ellipsis;
	padding-top: 20px;
	padding-bottom:20px;
	margin: 0;
}

.head {
	background-color: rgb(0, 0, 0, 0.8);
}

.container {
	padding-top: 30px;
}
.panel-title {
	cursor:pointer;
}
</style>
<script>
		function insertComment(){
			var title = $('#title').val();
			var userId = $('#userId').val();
			var titleNo = $('#titleNo').val();
			var comment = $('#comment').val();
			$.ajax({
				url : "/festivalComment",
				type : "get",
				data : {title:title, userId : userId,titleNo : titleNo, comment : comment},
				success : function(data){
					location.href="/placeSelect?titleNo="+titleNo;
					}
			});
		}
</script>
<script>
				function initMap() {
						var uluru = {
							lat:
<%=pr.getPlaceLatitude() %>
	,
							lng:
<%=pr.getPlaceLongtitude() %>
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
				<header style="position:fixed;width:50px;border-right:1px solid #ddd;height:100%;">
				<div id="click">
					<a href="#" class="click"><img
						src="/image/main/menu.png" style="width:30px;margin-top:10px;margin-left:10px;background-color:white;z-index:999;"></a>
				</div>
				<div id="click-open" style="display:none;">
					<a href="http://localhost"><img
						src="/image/main/logo.png" id="main_logo" style="width:260px;margin-left:20px;margin-top:20px;"></a>
						
					<style>
					a{
						font-size:1rem!important;
					}
					#login_join{
						text-align:center;
						margin-top:20px;
						margin-bottom:20px;
					}
					.main-login{
						margin-right:20px;	
					}
					#login_join>a:hover{
						color:#b43029;
					}
					.category{
						cursor:pointer;
						width:100%;
						display:block;
						border-left:3px solid white;
						padding-left:17px;
					}
					.category:hover{
						border-left:3px solid #b43029;
					}
					.subcategory{
						display:none;
					}
					.subcategory>li{
						height:40px;
						line-height:40px;
					}
					.subcategory>li>a{
						display:block;
						width:100%;
						padding-left:40px;
					}
					.subcategory>li>a:hover{
						background-color:rgba(0,0,0,0.05);
					}
					a, ul>li{
						font-size:1rem!important;
					}
					
					</style>
						
					<% if(user==null){ %>
			        <div id="login_join">
			        	<a href="/views/main/login.jsp" class="main-login" style="font-size:1.5rem!important;">로그인</a>
			        	<a href="/views/main/joinus.jsp" style="font-size:1.5rem!important;">회원가입</a>
			        </div>    
			        <% } else { %>
			        <div id="login_join" class="login_after">	
					<% if(user.getUserId().equals("admin")){ %>
						<p style="margin-bottom:8px;font-size:1.5rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>로 로그인 하셨습니다</p>
					<% } else { %>
						<p style="margin-bottom:8px;margin-left:-20px;font-size:1.5rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>님 환영합니다</p>
						<a href="/myPage" style="margin-left:-19px;margin-right:15px;font-size:1.5rem!important;">마이페이지</a>
					<% } %>
					<a href="/logout" style="font-size:1.5rem!important;">로그아웃</a><br>
			        </div>
			        <% } %>	
			        
			        <style>
			        	#login_join>a:hover{
			        		text-decoration:none;
			        	}
			        	.mainCategory>li{
			        		font-size:1.7rem!important;
			        		margin-left:-40px;
			        		padding-top:20px;
			        		padding-bottom:20px;
			        	}
			        	.mainCategory>li>ul{
			        		list-style:none;
			        	}
			        	.mainCategory>li>ul>li{
			        		margin-left:-40px;
			        		padding-top:20px;
			        		padding-bottom:20px;
			        	}
			        	.mainCategory>li>ul>li>a{
			        		width:100%;
			        		display:block;
			        		font-size:1.7rem!important;
			        	}
			        	.mainCategory>li>ul>li>a:hover{
			        		text-decoration:none;
			        	}
			        </style>	        	
					<!-- common category -->
					<ul class="mainCategory" style="clear:both;list-style:none;">
						<li><span class="category category1">하이라이트</span>
							<ul class="subcategory subcategory1" style="display:block;">
								<li><a href="/views/placerank/place_Photo.jsp">Top 10</a></li>
								<li><a href="/views/festival/festivalPhoto.jsp">축제&amp;행사</a></li>
							</ul>
						</li>
						<li><span class="category category2">서울즐기기</span>
							<ul class="subcategory subcategory2">
								<li><a href="/enjoyList?type=type1">추천코스</a></li>
								<li><a href="/enjoyList?type=type2">명소</a></li>
								<li><a href="/enjoyList?type=type3">쇼핑</a></li>
								<li><a href="/enjoyList?type=type5">음식점</a></li>
								<li><a href="/enjoyList?type=type6">캘린더</a></li>
							</ul>
						</li>
						<li><span class="category category3">예약하기</span>
							<ul class="subcategory subcategory3">
								<li><a href="/concertList">공연예약</a></li>
								<li><a href="/hotelList">호텔예약</a></li>
								<li><a href="/doboList">서울도보관광예약</a></li>
							</ul>
						</li>
						<li><span class="category category4">여행준비</span>
							<ul class="subcategory subcategory4">
								<li><a href="/guideBookDown">가이드북</a></li>
								<li><a href="/views/travelReady/travelInformation.jsp">여행필수정보</a></li>
								<li><a href="/seoulImage">서울 관광 이미지</a></li>
								<li><a href="/faq">FAQ</a></li>
							</ul>
						</li>
					</ul>
		
					<script>
					$(".category1").click(function(){
						$(".subcategory1").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category2").click(function(){
						$(".subcategory2").toggle("slow");
						$(".subcategory1").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category3").click(function(){
						$(".subcategory3").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory1").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category4").click(function(){
						$(".subcategory4").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory1").css('display','none');
					});			
					</script>
				</div>

				
				</header>
			
					<section style="margin-left:51px;">
						<div class="container">
							<div class="container-fluid">
								<div class="head" style="text-align: center">
									<p class="font">
										<%=pr.getPlaceTitle()%>
									</p>
								</div>

								<!-- 캐러셀 시작 -->
								<%if(pr.getPlaceSubImg1()!=null){ %>
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
											<img src="<%=pr.getPlaceMainImg()%>">

										</div>
										<div class="item">
											<img src="<%=pr.getPlaceSubImg1()%>">
										</div>
										<div class="item">
											<img src="<%=pr.getPlaceSubImg2()%>">
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
											<img src="<%=pr.getPlaceMainImg()%>">

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
								<div class="panel panel-primary">
									<div class="panel-heading" data-toggle="collapse" data-target="#collapseOne">
										<h4 class="panel-title">
											기본정보
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<%=pr.getPlaceDetailInfo()%>
										</div>
									</div>
								</div>
								<div class="panel panel-primary">
									<div class="panel-heading" data-toggle="collapse" data-target="#collapseTwo">
										<h4 class="panel-title">
											상세정보
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">

											<table style="height: 100%; width: 100%;">
												<%if(pr.getPlaceAddr()!=null){ %>
												<tr>
													<td>주소</td>
													<td>
														<!-- 03131 서울 종로구 삼일대로 464(윤현궁) -->
														<%=pr.getPlaceAddr()%>
													</td>
												</tr>
												<%}if(pr.getPlaceTell()!=null){ %>
												<tr>
													<td>전화번호</td>
													<td>
														<!-- 02-766-9090 -->
														<%=pr.getPlaceTell()%>
													</td>
												</tr>
												<%}if(pr.getPlaceSite()!=null){ %>
												<tr>
													<td>웹사이트</td>
													<td>
														<!-- <a href="http://www.naver.com/">웹사이트 보기</a> -->
														<a href="<%=pr.getPlaceSite()%>">웹사이트 보기</a>
													</td>
												</tr>
												<%}if(pr.getPlaceOntime()!=null){ %>
												<tr>
													<td>이용시간</td>
													<td>
														<%=pr.getPlaceOntime()%>
													</td>
												</tr>
												<%}if(pr.getPlacePeriod()!=null){ %>
												<tr>
													<td>운영 요일</td>
													<td>
														<%=pr.getPlaceOntime()%>
													</td>
												</tr>
												<%}if(pr.getPlaceUtility()!=null){ %>
												<tr>
													<td>장애인 편의시설</td>
													<td>														
														<%=pr.getPlaceUtility()%>
													</td>
												</tr>
												<%}if(pr.getPlaceNotice()!=null){ %>												
												<tr>
													<td>이것만은 꼭!</td>
													<td>
													<%=pr.getPlaceNotice()%>
													</td>
												</tr>
												<%}if(pr.getPlacePayment()!=null){ %>
												<tr>
													<td>이용요금</td>
													<td>
														<%=pr.getPlacePayment()%>
													</td>
												</tr>
												<%} %>
												
											</table>


										</div>
									</div>
								</div>
								<%if(pr.getPlaceLatitude()!=0||pr.getPlaceLongtitude()!=0){ %>
								<div class="panel panel-primary">
									<div class="panel-heading" data-toggle="collapse" data-target="#collapseThree">
										<h4 class="panel-title">
											 지도&교통
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">
											<div id="mapContent" style="width: 635px; height: 300px;">
											</div>
										</div>
									</div>
								</div>
								<%} %>
								<div class="panel panel-primary">
									<div class="panel-heading" data-toggle="collapse" data-target="#collapseFour">
										<h4 class="panel-title"">
											댓글 
										</h4>
									</div>
									<div id="collapseFour" class="panel-collapse collapse">
										<div class="panel-body" class="form-horizontal">
											<%if(session.getAttribute("user")!=null){ %>
												<div class="row form-group">
													<label class="col-sm-1 control-label" style="padding-top:7px;"><%=user.getUserId() %></label>
													<input type="hidden" calss="form-control" value="<%=pr.getPlaceTitle() %>" id="title"/>
													<input type="hidden" class="form-control" value="<%=user.getUserId() %>" id="userId"/>
													<input type="hidden" class="form-control" value="<%=pr.getTitleNo() %>" id="titleNo"/>
													<div class="col-xs-9 col-xs-offset-1">
														<input type="text" class="form-control" placeholder="댓글내용" id="comment" name="comment"/>
													</div>
													<div class="col-xs-1">
														<button type="button" onclick="insertComment();"class="btn btn-primary" style="font-size:14px; font;font-weight: bold;">전송</button>
													</div>
												</div>
												<div class="container-fulid">
												<div class="row">
													<table class="table">
														<tr>
															<th>아이디</th>
															<th>내용</th>
															<th>작성일</th>
														</tr>
														
														<%for(PlaceRankComment prc : list) { %>
														<tr>
															<td><%=prc.getUserId() %></td>
															<%if(prc.getUserId().equals(((SeoulUser)session.getAttribute("user")).getUserId())){ %>
															<td><%=prc.getUserComment() %><span class="glyphicon glyphicon-trash pull-right" onclick="return commentDelete(<%=prc.getTitleNo()%>,<%=prc.getReviewNo()%>);"></span></td>
															<%}else{ %>
															<td><%=prc.getUserComment() %></td>
															<%} %>
															<td><%=prc.getWriteDate() %></td>
														</tr>
														<%} %>
														<script>
														function commentDelete(titleNo,reviewNo) {
															if(confirm("정말로 삭제하시겠습니까?"))
															{
															location.href="/commentDelete?titleNo="+titleNo+"&reviewNo="+reviewNo;
															}
														}
														</script>
													</table>
												</div>
											</div>
												<%}else {%>
												 <div class="row form-group">
													<label class="col-sm-1 control-label" style="padding-top:7px;">비로그인</label>	
													<div class="col-xs-9 col-xs-offset-1">
														<input type="text" class="form-control" placeholder="로그인후 이용이 가능합니다." id="comment" name="comment" readonly onclick="login()"/>
													</div>
													<script>
													function login() {
														alert("로그인을 먼저 진행해 주세요");
														window.open("/views/main/login_popup.jsp","_black","width=870px,height=600px");
													}
													</script>
													<div class="col-xs-1">
														<button type="button" onclick="insertComment();"class="btn btn-primary disabled" style="font-size:14px; font;font-weight: bold;">전송</button>
													</div>
												</div><div class="container-fulid">
												<div class="row">
													<table class="table">
														<tr>
															<th>아이디</th>
															<th>내용</th>
															<th>작성일</th>
														</tr>
														
														<%for(PlaceRankComment prc : list) { %>
														<tr>
															<td><%=prc.getUserId() %></td>
															<td><%=prc.getUserComment() %></td>
															<td><%=prc.getWriteDate() %></td>
														</tr>
														<%} %>
														
													</table>
												</div>
											</div>
												<%} %>
											
										</div>
									</div>
								</div>
								<button class="btn btn-primary pull-right" onclick="back();">목록</button>
								<br>
								<br>
								<br>
								<br>
								<script>
									function back(){
										location.href="/placeRankList?type=<%=pr.getPlaceType()%>";
									}
								</script>
							</div>
						</div>



					</section>
					<%-- <%@ include file="/views/main/footer.jsp"%> --%>
						<script>
							$('.carousel').carousel();
						</script>
						
				<script>
					$('.click').click(function(){
						$('header').css('width','300px');
						$('#click').css('display','none');
						$('section').css('margin-left','301px');
						$('section').css('opacity','0.5');
						$('section').css('background-color','rgba(0,0,0,0.5)');
						$('#click-open').css('display','block');
					});
					$('section').click(function(){
						$('header').css('width','50px');
						$('#click').css('display','block');
						$('section').css('margin-left','51px');
						$('section').css('opacity','1');
						$('section').css('background-color','white');
						$('#click-open').css('display','none');
					});
				</script>						
			</body>

			</html>