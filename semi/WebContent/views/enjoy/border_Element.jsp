<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "semi.enjoy.model.vo.EnjoyListData"
    %>
<% EnjoyListData ELD = (EnjoyListData)request.getAttribute("ELD"); %>    
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="../../css/main.css">
		<link rel="stylesheet" href="../../css/bootstrap.min.css">
		<link rel="stylesheet" href="../../css/arrow-box.css">
		<script src="../../js/jquery-3.3.1.min.js"></script>
		<script src="../../js/main.js"></script>
		<script src="../../js/bootstrap.js"></script>
		<script src="../../js/bordertoogle.js"></script>
	</head>

	<body id="scroll">
		<%@ include file="/views/main/header.jsp" %>
			<section>
				<div style="width:100%; height:2000px; ">
					<div style="width:100%; height: 100%; ">
						<!--▼ 메인이미지 -->
						<div style="width: 100%; height: 20%;margin-bottom: 5%; position: relative;">
							<div style="width:5%; height: 100%; background-color: rgb(155, 155, 155); float: left; ">
								<a class="w3-btn-floating" style="line-height: 300px; margin-left:50%;" onclick="plusDivs(-1)">
									< </a>
							</div>
							<div style="width: 90%; height: 100%; float: left;">
								<img class="mySlides" src="/image/bg1.jpg" height="100%" width="100%">
								<img class="mySlides" src="/image/bg2.jpg" height="100%" width="100%">
								<img class="mySlides" src="/image/bg3.jpg" height="100%" width="100%">
								<img class="mySlides" src="/image/menu.png" height="100%" width="100%">
							</div>
							<div style="width:5%; height: 100%; background-color:  rgb(155, 155, 155); float: left;">
								<a class="w3-btn-floating" style="line-height: 300px; margin-left:50%;" onclick="plusDivs(1)"> > </a>
							</div>
						</div>


						<!--▼ 기초내용 -->
						<div style="width: 100%; height: 3%;">

							<!-- 기본정보 바 -->
							<div id="basic_toggle" style="width:100%; height: 100%; border-top:solid black 3px; ">
								<div style="width:80%;height:100%; float:left;">
									<h3>기본정보</h3>
								</div>
								<div style="width:20%;height:100%;float:left;">
									<h3 class="toggleText" style="text-align: right;">▲</h3>
								</div>
							</div>
						</div>

						<div id="basic_info" style="width: 100%; height: 7%;">
							<hr>
							<!-- 내용넣을곳 -->
							<div style="    width:100%; height: 60%;">

								<div>
									1980년에 첫 면세점을 열어, 현재는 전국적으로 지점이 8개가 있다. 롯데면세는 루이뷔통을 처음으로 국내에 소개한 이래로, 샤넬·구찌·프라다·헤르메스·불가리 등 400개 이상의 해외 브랜드를 판매하고 있다.
								</div>

								<p>
									2018.02.09 작성일 / 2018.02.09 발행일]
								</p>

							</div>

							<!-- 마진 -->
							<div style="  width:100%; height: 10%; ">
							</div>

							<div style="width:100%; height: 30%; ">

								<p style="display: inline; height: 100%;">태그</p>
								<div style="display: inline;">
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>

								</div>
							</div>
						</div>


						<!--▼ 상세정보-->
						<div style="width: 100%; height: 3%;">

							<div id="detail_toggle" style="width:100%; height: 100%; border-top:solid black 3px; ">
								<div style="width:80%;height:100%; float:left;">
									<h3>상세정보</h3>
									
								</div>
								<div style="width:20%;height:100%;float:left;">
									<h3 class="toggleText1" style="text-align: right;">▼</h3>
								</div>
							</div>
						</div>

						<div id="detail_info" style="width: 100%; display: none;">

							<hr>
							<table style="height: 100%; width: 100%;">

								<tr>
									<td>주소</td>
									<td>03131 서울 종로구 삼일대로 464(윤현궁)</td>
								</tr>
								<tr>
									<td>전화번호</td>
									<td>02-766-9090</td>
								</tr>
								<tr>
									<td>팩스번호</td>
									<td>02-742-3900</td>
								</tr>
								<tr>
									<td>웹사이트</td>
									<td>
										<a href="http://www.naver.com/">웹사이트 보기</a>
									</td>
								</tr>
								<tr>
									<td>이용시간</td>
									<td>11 ~ 3월 09:00 ~ 18:00
										<br>4 ~ 10월 09:00 ~ 19:00
									</td>
								</tr>
								<tr>
									<td>휴무일</td>
									<td>매주 월요일(월요일이 국가 지정 공휴일인 경우 해당 날짜에 개관)</td>
								</tr>
								<tr>
									<td>운영 요일</td>
									<td>화수목금토일</td>
								</tr>
								<tr>
									<td>장애인 편의시설</td>
									<td>접근가능
										<br>장애인화장실
									</td>
								</tr>
								<tr>
									<td>규모</td>
									<td>서울 종로구 운니동에 있는 조선 후기 흥선대원군의 사가.
										<br> 고종이 이곳에서 열두 살 때까지 자라다 왕이 됐으며 생부(生父) 이하응은 흥선대원군이 됐다.
										<br> 운현궁(雲峴宮)에서 대원군은 서원 철폐, 경복궁 중건, 세제 개혁 등 많은 사업을 추진했다.
										<br> 원래는 궁궐에 견줄 만큼 크고 웅장하였다고 전해지나 현재는 사랑채 노안당, 안채 이로당과 노락당만이 남아 있다.
										<br> 정원 등은 잘 보존되어 있으며 인기 드라마 궁의 촬영지로도 쓰인 양관이 가까이에 있다.
									</td>
								</tr>
								<tr>
									<td>이것만은 꼭!</td>
									<td>운현궁 양관 : 본래 흥선대원군의 손자인 이준용을 위해 지은 건물로 양관이라고 불린다.
										<br> 프렌치 르네상스 풍의 석재를 혼용한 벽돌 2층 저택에 16개의 천장 문양이 모두 다르다.
										<br> 1948년 덕성여자대학교에 매각되어 한때 교사로 쓰였고 지금도 평생교육원으로 쓰인다.
										<br> 인기 드라마 궁의 촬영 장소로 사용되기도 했다.
									</td>
								</tr>
								<tr>
									<td>이용요금</td>
								</tr>
								<tr>
									<td>이용시설안내</td>
									<td>운현궁 정례 행사, 운현궁 일요 예술마당, 고종 명성후 가례(국혼례) 행사 안내
										<br> - 궁중의상체험
										<br> - 대원군행차체험
									</td>
								</tr>
							</table>
						</div>
						<!--▼ 지도&교통편-->
						<div style="width: 100%; height: 3%;;">
							<!-- 지도&교통바 -->
							<div id="map_toggle" style="width:100%; height: 100%; border-top:solid black 3px; ";>
								<div style="width:80%;height:100%; float:left;">
									<h3>지도&교통</h3>
								</div>
								<div style="width:20%;height:100%;float:left;">
									<h3 class="toggleText2" style="text-align: right;">▼</h3>
								</div>
							</div>
						</div>
						<div id = "map_info"style="width: 100%; height: 7%; display:none;">
							<hr>
							<!-- 지도교통 내용 넣을곳 -->

						</div>


						<!--▼ 댓글리뷰-->
						<div style="width: 100%; height: 3%;">
							<!-- 댓글 바 -->
							<div id="review_toggle" style="width:100%; height: 100%; border-top:solid black 3px; ">
									<div style="width:80%;height:100%; float:left;">
										<h3>리뷰&댓글</h3>
									</div>
									<div style="width:20%;height:100%;float:left;">
										<h3 class="toggleText3" style="text-align: right;">▼</h3>
									</div>
								</div>
						</div>
						<div id = "review_info"style="width: 100%; height: ; display:none;">
								<hr>
								<!-- 댓글 내용 넣을곳 -->
								<div style="width:100%;height:200px; position: relative; padding:30px;">
										<!-- ID, 게시날자 입력하는곳 -->
										<div style="width:20%;height:100%;; float:left; border:1px solid black;">
										<br>
										<span>ID</span>
										<br><br>
										<span>날짜</span>
										<br><br>
										</div>    

										<div class="arrow_box" style="width:70%;height:100%;padding:5px;background-color:gray; float:left; position:relative;">
											<!-- 제목,내용 입력하는곳 -->
												<div style="float:left; width:80%; height:100%;">
														<div style="width:100%;height:20%;">제목</div>
														
														<div style="width:100%;height:80%;">내용</div>
												</div>
												<!-- 추천점수 입력하는곳 -->
												<div style="float:left; width:20%;height:100%; text-align:center; line-height:5;">
														점수
												</div>
												
												<!-- 리스트 버튼// 삭제예정 -->
												<form action="/enjoyList" method="post">
												<input type="submit" value="버튼">
												</form>
										</div>
								</div>
						</div>						
					</div>
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
					if (n > x.length) { slideIndex = 1 }
					if (n < 1) { slideIndex = x.length };
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
					if (myIndex > x.length) { myIndex = 1 }
					x[myIndex - 1].style.display = "block";
					setTimeout(carousel, 3000);
				}

			</script>
			<!-- ▲ 이미지 슬라이더 스크립트 -->

			<%@ include file="/views/main/footer.jsp" %>
	</body>

	</html>