<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Seoulaim - Top 10</title>
		<link rel="icon" href="../../image/main/favicon.ico">
		<link rel="stylesheet" href="../../css/bootstrap.min.css">
		<link rel="stylesheet" href="../../css/bootstrap-theme.min.css">
		<script src="../../js/jquery-3.3.1.min.js"></script>
	</head>
	<style>
		.photo1 {
			float: left;
			background-image: url(http://familyseoul.or.kr/sites/default/files/wysiwyg/%EB%B0%98%ED%8F%AC%20%EB%8B%AC%EB%B9%9B%EB%AC%B4%EC%A7%80%EA%B0%9C%EB%B6%84%EC%88%98_0.jpg);
		}
		.photo2 {
			float: right;
			background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=86&fileTy=ATTACH&fileNo=3&thumbTy=L);
		}
		.photo3 {
			float: left;
			background-image: url(http://www.royalpalace.go.kr/content/images/season/spring/16.jpg);
		}
		.photo4 {
			float: right;
			background-image: url(https://t1.daumcdn.net/cfile/tistory/2629DD4058630ADA18);
		}
		.photo5 {
			float: left;
			background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=718&fileTy=ATTACH&fileNo=5&thumbTy=L);
		}
		.photo6 {
			float: right;
			background-image: url(http://familyseoul.or.kr/sites/default/files/wysiwyg/%EC%84%9C%EB%9E%98%EC%84%AC%20%EB%A9%94%EB%B0%80%EA%BD%83%28%EB%B0%98%ED%8F%AC%29_0.JPG);
		}
		.font {
			color: white;
			text-shadow: 1px -1px 1px #F6C467, -1px 2px 2px #E96187;
			height: 60px;
			margin-bottom: 10px;
			font: italic bold 3.3rem "나눔스퀘어";
			overflow: hidden;
			text-overflow: ellipsis;
			margin-top: 250px;
			margin-left: 80px;
		}
		.fontPosition {
			line-height: normal;
			display: inline-block;
			width: 90%;
			height: 100px;
			vertical-align: middle;
			margin-left: 5%;
			margin-top: 200px;
			position: absolute;
			z-index: 2;
		}
		.fontPosition:after {
			content: '';
			display: block;
			width: 60px;
			height: 3px;
			background: #E96187;
			position: absolute;
			top: 5;
			left: 0;
		}
		.picture {
			width: 50%;
			height: 350px;
			background-repeat: no-repeat;
			background-size: 100% 100%;
			z-index: 1;
			vertical-align: middle;
			position: relative;
		}
		.effectLeft {
			height: 80px;
			transition: all 0.8s, color 0.3s 0.3s;
			color: #504f4f;
			cursor: pointer;
		}
		.effectLeft:hover {
			box-shadow: 1000px 0 0 0 rgba(0, 0, 0, 0.5) inset;
		}
		.effectRight {
			height: 80px;
			transition: all 0.8s, color 0.3s 0.3s;
			color: #504f4f;
			cursor: pointer;
		}
		.effectRight:hover {
			box-shadow: -1000px 0 0 0 rgba(0, 0, 0, 0.5) inset;
		}
		.under-bar {
			top:10px;
			width: 156px;
			height: 2px; 
			border: 3px solid #3071a9;
			margin-left:88px;
		}
		.container-fluid{
			padding-left:0px;
			padding-right:0px;
		}
		.row{
			margin-bottom:0px!important;
		}
		@media (max-width:1265px){
		
			.picture{
				width:100%;
			}
		}
	</style>

	<body id="scroll">
		<%@ include file="/views/main/header.jsp"%>
			<section>
				<style>
					.container-fluid{
						padding-left:0px;
						padding-right:0px;
					}
				</style>
				<div class="container-fluid">
					<div class="row">
						<a href="/placeRankList?type=1">
							<div class="col-xs-6 picture photo1">

									<h2 class="font">Top 10 관광명소</h2>
									<div class="under-bar"></div>

							</div>
						</a>
						<a href="/placeRankList?type=2">
							<div class="col-xs-6 picture photo2">

									<h2 class="font">Top 10 나이트라이프</h2>
									<div class="under-bar"></div>	


							</div>
						</a>
					</div>

					<div class="row">
						<a href="/placeRankList?type=3">
							<div class="col-xs-6 picture photo3">

									<h2 class="font">Top 10 전통</h2>
									<div class="under-bar"></div>	

							</div>
						</a>
						<a href="/placeRankList?type=4">
							<div class="col-xs-6 picture photo4">

									<h2 class="font">Top 10 쇼핑</h2>
									<div class="under-bar"></div>	


							</div>
						</a>
					</div>

					<div class="row">
						<a href="/placeRankList?type=5">
							<div class="col-xs-6 picture photo5">

									<h2 class="font">Top 10 서울의불빛</h2>
									<div class="under-bar"></div>	

							</div>
						</a>
						<a href="/placeRankList?type=6">
							<div class="col-xs-6 picture photo6">

									<h2 class="font">Top 10 가족여행</h2>
									<div class="under-bar"></div>

							</div>
						</a>
					</div>

				</div>

			</section>
<%-- 			<%@ include file="/views/main/footer.jsp"%> --%>
	</body>

	</html>