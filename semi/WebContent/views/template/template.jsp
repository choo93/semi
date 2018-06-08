<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
		<div style="width: 100%; height: 1000px; background-color: blue;">
			<img src="../../image/bg1.jpg"
				style="width: 100%; height: 1000px; float: right;" />
		</div>

		<div id="wrapper" style="width: 100%; height: 3000px;">
			<div id="title"
				style="width: 100%; height: 75px; box-sizing: border-box;">
				<span style="font: bold 30pt 나눔스퀘어;">윤현궁</span>
				<hr>
			</div>

			<div id="photo" align="center"
				style="width: 100%; height: 500px; box-sizing: border-box;">
				<div
					style="width: 20%; height: 500px; float: left; box-sizing: border-box;">
					<a class="w3-btn-floating" onclick="plusDivs(-1)"><img
						src="/image/left.png" height="30%" width="30%"></a>
				</div>

				<div
					style="width: 60%; height: 500px; float: left; box-sizing: border-box;">
					<img class="mySlides" src="/image/menu.png" height="100%"
						width="100%"> <img class="mySlides" src="/image/bg1.jpg"
						height="100%" width="100%"> <img class="mySlides"
						src="/image/bg2.jpg" height="100%" width="100%"> <img
						class="mySlides" src="/image/bg3.jpg" height="100%" width="100%">
				</div>

				<div
					style="width: 20%; height: 500px; float: left; box-sizing: border-box;">
					<a class="w3-btn-floating" onclick="plusDivs(1)"><img
						src="/image/right.png" height="30%" width="30%"></a>
				</div>

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

			</div>

			<div id="info"
				style="width: 100%; height: 200px; box-sizing: border-box;">
				<span id="infoTitle"
					style="font: bold 30pt 나눔스퀘어; width: 100%; height: 10%; box-sizing: border-box">기본정보</span>

				<div id="infoContents"
					style="width: 100%; height: 90%; box-sizing: border-box; background-color: black">

					<div
						style="width: 100%; height: 75%; box-sizing: border-box; background-color: white">
						운현궁은 조선 후기 흥선대원군의 사가이다.<br> 흥선대원군의 둘째 아들 고종이 출생하여 왕위에 오르기 전까지
						성장한 곳이다.<br> 이곳에서 대원군은 서원철폐, 경복궁 중건, 세제개혁 등 많은 사업을 추진하였다.<br>
						흥선대원군의 한옥과 양관(洋館)은 모두 사적으로 지정되어있다.
					</div>
					<div
						style="width: 100%; height: 25%; box-sizing: border-box; background-color: yellow">
						<table>
							<tr>
								<td>태그</td>
								<td style="color: blue;"><a href="">#역사</a> <a href="">#공연</a>
									<a href="">#안국역</a> <a href="">#종로3가역</a> <a href="">#전통</a> <a
									href="">#랜드마크</a> <a href="">#군중의상체험</a> <a href="">#유적지</a> <a
									href="">#궁</a> <a href="">#윤현궁</a></td>
							</tr>
						</table>
					</div>
				</div>

				<div id="detailInfo"
					style="width: 100%; height: 550px; box-sizing: border-box;">
					<span id="detailInfoTitle"
						style="font: bold 30pt 나눔스퀘어; width: 100%; height: 10%; box-sizing: border-box">상세정보</span>
					<div id="infoContents"
						style="width: 100%; height: 90%; box-sizing: border-box; background-color: pink">
						<table>
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
								<td><a href="http://www.naver.com/">웹사이트 보기</a></td>
							</tr>
							<tr>
								<td>이용시간</td>
								<td>11 ~ 3월 09:00 ~ 18:00<br>4 ~ 10월 09:00 ~ 19:00
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
								<td>접근가능<br>장애인화장실
								</td>
							</tr>
							<tr>
								<td>규모</td>
								<td>서울 종로구 운니동에 있는 조선 후기 흥선대원군의 사가.<br> 고종이 이곳에서 열두 살
									때까지 자라다 왕이 됐으며 생부(生父) 이하응은 흥선대원군이 됐다.<br> 운현궁(雲峴宮)에서 대원군은
									서원 철폐, 경복궁 중건, 세제 개혁 등 많은 사업을 추진했다.<br> 원래는 궁궐에 견줄 만큼 크고
									웅장하였다고 전해지나 현재는 사랑채 노안당, 안채 이로당과 노락당만이 남아 있다.<br> 정원 등은 잘
									보존되어 있으며 인기 드라마 궁의 촬영지로도 쓰인 양관이 가까이에 있다.
								</td>
							</tr>
							<tr>
								<td>이것만은 꼭!</td>
								<td>운현궁 양관 : 본래 흥선대원군의 손자인 이준용을 위해 지은 건물로 양관이라고 불린다.<br>
									프렌치 르네상스 풍의 석재를 혼용한 벽돌 2층 저택에 16개의 천장 문양이 모두 다르다.<br>
									1948년 덕성여자대학교에 매각되어 한때 교사로 쓰였고 지금도 평생교육원으로 쓰인다.<br> 인기 드라마
									궁의 촬영 장소로 사용되기도 했다.
								</td>
							</tr>
							<tr>
								<td>이용요금</td>
							</tr>
							<tr>
								<td>이용시설안내</td>
								<td>운현궁 정례 행사, 운현궁 일요 예술마당, 고종 명성후 가례(국혼례) 행사 안내<br> -
									궁중의상체험<br> - 대원군행차체험
								</td>
							</tr>
						</table>

					</div>

				</div>

				<div id="map"
					style="width: 100%; height: 500px; box-sizing: border-box; background-color: yellow">
					<span id="detailInfoTitle"
						style="font: bold 30pt 나눔스퀘어; width: 100%; height: 10%; box-sizing: border-box">지도</span>
				</div>

				<div id="review"
					style="width: 100%; height: 500px; box-sizing: border-box; background-color: green">
					<span id="detailInfoTitle"
						style="font: bold 30pt 나눔스퀘어; width: 100%; height: 10%; box-sizing: border-box">리뷰</span>
					<div id="infoContents"
						style="width: 100%; height: 90%; box-sizing: border-box; background-color: pink">

						<div style="width: 100%; height: 90%; background-color: red">
							<div id="review_detail">
								<div id="review1">
									<div id="review1_left" style="float: left;"></div>
								</div>
								<div id="review2"></div>
								<div id="review3"></div>
								<div id="review4"></div>
								<div id="review5"></div>
							</div>
						</div>

						<div style="width: 100%; text-align: center;">
							<label>페이지 12345 부분</label><br>
						</div>

						<div id="writeReview">
							<span id="writeReview" style="font: bold 20pt 나눔스퀘어; box-sizing: border-box;">리뷰작성</span>
							<div style="width: 100%;">
							<label style="font: bold 15pt 나눔스퀘어;">★★★★☆</label><br>
								<textarea rows="2" cols="100" name="reviewTitle"
									placeholder="제목을 입력하세요" maxlength="50"
									style="padding-left:10px; padding-top:10px;background-color: #1AAB8A; font: bold 13pt 나눔스퀘어; border-color: #1AAB8A; border-style: dashed; border-top-left-radius: 15px; border-top-right-radius: 15px; resize: none;"></textarea>
								<br>
								<textarea rows="15" cols="100" name="reviewContent"
									placeholder="내용을 입력하세요" maxlength="2000"
									style="padding-left:10px; padding-top:10px; border-color: #1AAB8A; font: 13pt 나눔스퀘어; border-style: dashed; border-bottom-left-radius:15px; border-bottom-right-radius:15px; resize: none;"
									onclick="review();"></textarea>
								<br>
								<button id="reviewButton" onclick="writeReview();">리뷰 작성</button>

								<style>
									html, body {height: 100%;}
									body {
										text-align: center;
									}

									body:before {
										content: '';
										height: 100%;
										display: inline-block;
										vertical-align: middle;
									}

									#reviewButton {
										background: #1AAB8A;
										color: #fff;
										border: none;
										position: relative;
										height: 60px;
										font-size: 1.6em;
										padding: 0 2em;
										cursor: pointer;
										transition: 800ms ease all;
										outline: none;
									}

									#reviewButton:hover {
										background: #fff;
										color: #1AAB8A;
									}

									#reviewButton:before, #reviewButton:after {
										content: '';
										position: absolute;
										top: 0;
										right: 0;
										height: 2px;
										width: 0;
										background: #1AAB8A;
										transition: 400ms ease all;
									}
									
									#reviewButton:after {
										right: inherit;
										top: inherit;
										left: 0;
										bottom: 0;
									}

									#reviewButton:hover:before, #reviewButton:hover:after {
										width: 100%;
										transition: 800ms ease all;
									}
							</style>
								<script>
									function writeReview() {
										location.href = "/review";
									}
								</script>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>



	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>