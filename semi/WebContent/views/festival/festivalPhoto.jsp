<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="../../css/bootstrap.min.css">
		<link rel="stylesheet" href="../../css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="../../css/main.css">
		<script src="../../js/jquery-3.3.1.min.js"></script>
		<script src="../../js/vegas/vegas.min.js"></script>
		<script src="../../js/main.js"></script>
	</head>

	<style>
		.photo1 {
			border: 1px solid pink;
			float: left;
			background-image: url(https://i2.wp.com/sharehows.com/wp-content/uploads/2017/03/spring-festival-0.png?resize=800%2C400&ssl=1);
		}

		.photo2 {
			border: 1px solid pink;
			float: right;
			background-image: url(https://www.crezone.net/wp-content/uploads/2018/03/%EC%88%98%EC%A0%95DSC_2092.jpg);
		}

		.photo3 {
			border: 1px solid pink;
			float: left;
			background-image: url(https://post-phinf.pstatic.net/MjAxNzEwMjNfMjQy/MDAxNTA4NzUwMjI1MTQy.fwwbgcgcK_9o4yGYAojaHDrT_BFwTvf1mvVbn2L1-kIg.9XciZMeo8QMKySw4fKfsLcXu0-SzKyWNdwKbBm7quG8g.JPEG/1.jpg?type=w1200);
		}

		.photo4 {
			border: 1px solid pink;
			float: right;
			background-image: url(https://t1.daumcdn.net/cfile/tistory/123E794D50B843DA2B);
		}

		.photo5 {
			float: left;
			background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=125&fileTy=ATTACH&fileNo=1&thumbTy=L);
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

			margin-top: 400px;
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
			height: 500px;
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
			top: 10px;
			width: 100px;
			height: 2px;
			border: 3px solid skyblue;
		}
	</style>

	<body id="scroll">
		<%@ include file="/views/main/header.jsp"%>

			<section>
				<div class="container-fluid">
					<div class="row">
						<a href="/views/festival/festival_List2.jsp">
							<div class="col-xs-6 picture photo1">

								<h2 class="font">봄
									<div class="under-bar"></div>
								</h2>

							</div>
						</a>
						<a href="#">
							<div class="col-xs-6 picture photo2">

								<h2 class="font">여름
									<div class="under-bar"></div>
								</h2>


							</div>
						</a>
					</div>

					<div class="row">
						<a href="#">
							<div class="col-xs-6 picture photo3">

								<h2 class="font">가을
									<div class="under-bar"></div>
								</h2>

							</div>
						</a>
						<a href="#">
							<div class="col-xs-6 picture photo4">

								<h2 class="font">겨울
									<div class="under-bar"></div>
								</h2>


							</div>
						</a>
					</div>


				</div>

			</section>
			<%@ include file="/views/main/footer.jsp"%>
	</body>

	</html>