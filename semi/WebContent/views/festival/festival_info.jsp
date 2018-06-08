<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="../../css/main.css">
		<link rel="stylesheet" href="../../css/bootstrap.min.css">
		<script src="../../js/jquery-3.3.1.min.js"></script>
		<script src="../../js/main.js"></script>
		<script src="../../js/bootstrap.min.js"></script>

		
		<style>
			.item {
				padding-left: 20%;
				padding-right: 20%;
			}

			.row-fluid {
				border: 0;
				margin: 0;
				padding: 0;
			}

			#top {
				margin-top: 1%;
				height: 20%;
				display: inline-block;
			}
		</style>
	</head>

	<body id="scroll">
		<%@ include file="/views/main/header.jsp" %>
			<section>
				<div style="width:100%; height:100%; background-color:white;">
					<div id="top" class="panel panel-danger" style="border-top: 10%; display: inline-block;">
						<div class="panel-heading">
							<h3 class="panel-title">&nbsp;&nbsp; 동대문</h3>
						</div>
						<div class="panel-body" style="padding: 0;">
							<div class="row-fluid">

								<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
									<!-- Indicators ( 이미지 하단에 동그란 것들 ) -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"></li>
										<li data-target="#carousel-example-generic" data-slide-to="3"></li>
									</ol>
									<!-- Wrapper for slides ( 이미지가 들어가는 부분 ) -->
									<div id="f_img" class="carousel-inner" role="listbox" style="width: 100%; height: 10%;">
										<div class="item active" style="width: 100%; height: 100%;">
											<img class="img-responsive displayed" src="../../image/festival/main.jpg" alt="..." style="width: 100%;height: 100%;">
											<div class="carousel-caption">
											</div>
										</div>
										<div class="item" style="width: 100%; height: 100%;">
											<img class="img-responsive displayed" src="../../image/festival/sub1.jpg" alt="..." style="width: 100%;height: 100%;">
											<div class="carousel-caption">
											</div>
										</div>
										<div class="item" style="width: 100%; height: 100%;">
											<img class="img-responsive displayed" src="../../image/festival/sub2.jpg" alt="..." style="width: 100%;height: 100%;">
											<div class="carousel-caption">
											</div>
										</div>
										<div class="item" style="width: 100%; height: 100%;">
											<img class="img-responsive displayed" src="../../image/festival/sub3.jpg" alt="..." style="width: 100%;height: 100%;">
											<div class="carousel-caption">
											</div>
										</div>
									</div>

									<!-- Controls ( 컨트롤러 부분 ) -->
									<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">

										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>

										<span class="sr-only">Previous</span>

									</a>

									<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">

										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>

										<span class="sr-only">Next</span>

									</a>

								</div>

							</div>
						</div>
					</div>

					<!-- <div id="frm_img" style="background-color: red; width: 100%; height: 400px;">
						<div id="main_img" style="background-color: powderblue; width:100%; height: 300px;">
							<img src="../../image/festival/main.jpg" class="main_img" style="width: 100%; height: 100%;">
						</div>
						<div id="sub_img" style="background-color: rebeccapurple; width:100%; height: 100px;">
							<div id="sub1_img" class="sub_imgs" style="background-color: palevioletred; width:33.33%; height: 100%;">
								<img src="../../image/festival/sub1.jpg" class="main_img" style="width: 100%; height: 100%;">
							</div>
							<div id="sub2_img" class="sub_imgs" style="background-color: olivedrab; width:33.33%; height: 100%;">
								<img src="../../image/festival/sub2.jpg" class="main_img" style="width: 100%; height: 100%;">
							</div>
							<div id="sub3_img" class="sub_imgs" style="background-color: midnightblue; width: 33.34%; height: 100%;">
								<img src="../../image/festival/sub3.jpg" class="main_img" style="width: 100%; height: 100%;">
							</div>
						</div> -->

					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">&nbsp;&nbsp; 기본정보</h3>
						</div>
						<div class="panel-body">
							<div class="row-fluid">
								<p class="navbar-text">
									<table>
										<td>
											동대문디자인플라자(DDP) 이간수문전시장 옆에 펼쳐진 25,550송이의 눈부신 장미정원이 상설전시한다.
											<br> 지난 해 가을 DDP 잔디언덕에서 선보여 시민들의 많은 사랑을 받았던 LED 장미정원이 4월 18일부터 이간수문전시장
											<br> 옆 잔디공원에서 시민들을 맞이하고 있다. 가족과 친구, 연인 등 소중한 사람들과 함께 장미정원을 산책하며 아름다운 야경을 함께 즐길 수 있다.
											<br> 이번 LED 장미정원은 총 25,550송이로 구성됐다. 이는 70에 365를 곱한 수로, 대한민국이 광복을 맞은 지 70주년이 되는 해를 기념하여
											<br> 1년 365일 세계 시민들과 축제처럼 즐기고자 하는 마음에서 비롯됐다. 우리나라 사람들이 가장 좋아하는 꽃으로 20년간
											<br> 부동의 1위를 차지해 온 장미(여론조사기관 갤럽 발표)를 택해 '모두를 위한 콘텐츠'로서의 의미를 더했다.
											<br> [2016.01.02 작성일 / 2016.01.02 발행일]
										</td>
									</table>
								</p>
							</div>
						</div>
					</div>


					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">&nbsp;&nbsp; 상세정보</h3>
						</div>
						<div class="panel-body">
							<div class="row-fluid">
								<p class="navbar-text">
									<table>
										<tr>
											<td>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소 : </td>
											<td>04564 서울 중구 장충단로 253 (을지로6가, 헬로우APM)</td>
										</tr>
										<tr>
											<td>전화번호 : </td>
											<td>02-120</td>
										</tr>
										<tr>
											<td>웹사이트 : </td>
											<td>웹사이트 보기</td>
										</tr>
										<tr>
											<td>이용시간 : </td>
											<td>각 상가별로 이용시간에 차이가 있음</td>
										</tr>

									</table>
								</p>
							</div>
						</div>
					</div>

					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">&nbsp;&nbsp; 지도&교통편</h3>
						</div>
						<div class="panel-body">
							<div class="row-fluid"></div>
								<div id="map" style="width:100%;height:0%; text-align: center;"></div>
								<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d4e6c43661540959967707e9637a11f3"></script>
								<script>
									var container = document.getElementById('map');
									var options = {
										center: new daum.maps.LatLng(33.450701, 126.570667),
										level: 3
									};

									var map = new daum.maps.Map(container, options);
								</script>
							</div>
						</div>
					</div>



				</div>
				</div>
			</section>
			<%@ include file="/views/main/footer.jsp" %>
	</body>

	</html>