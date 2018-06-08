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
		<script src="../../js/bootstrap.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	</head>

	<body id="scroll">
		<%@ include file="/views/main/header.jsp" %>
			<section>				
				<div style="width:100%; height:2000px; ">
					<div style="width:100%; height: 80%; ">
						<!--▼ 메인이미지 -->
						<div style="width: 100%; height: 20%;margin-bottom: 5%; position: relative;">
							<div style="width:5%; height: 100%; background-color: rgb(155, 155, 155); float: left; "  >
									<a class="w3-btn-floating" style="line-height: 300px; margin-left:50%;" onclick="plusDivs(-1)"> < </a>
							</div>
							<div style="width: 90%; height: 100%; float: left;">
									<img class="mySlides" src="/image/bg1.jpg" height="100%" width="100%" >
									<img class="mySlides" src="/image/bg2.jpg" height="100%" width="100%" >
									<img class="mySlides" src="/image/bg3.jpg" height="100%" width="100%" >
									<img class="mySlides" src="/image/menu.png" height="100%" width="100%">
							</div>
							<div style="width:5%; height: 100%; background-color:  rgb(155, 155, 155); float: left;">
									<a class="w3-btn-floating" style="line-height: 300px; margin-left:50%;" onclick="plusDivs(1)"> > </a>	
							</div>
						</div>


						<!--▼ 기초내용 -->
						<div style="width: 100%; height: 5%;">

							<!-- 기본정보 바 -->
							<div id="2" style="width:100%; height: 100%; border-top:solid black 3px; ">
								<div style="width:80%;height:100%; float:left;">
									<h3>기본정보</h3>
								</div>
								<div style="width:20%;height:100%;float:left;">
									<h3 class="toggleText" style="text-align: right;">▲</h3>
								</div>
							</div>
						</div>

						<div id="1" style="width: 100%; height: 15%;">
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
						<div style="width: 100%; height: 20%; background-color: gray;">
						</div>

						<!--▼ 지도&교통편-->
						<div style="width: 100%; height: 20%; background-color: white;">
						</div>

						<!--▼ 댓글리뷰-->
						<div style="width: 100%; height: 20%; background-color: black;">
						</div>
					</div>
					<button></button>
				</div>
			</section>
			<!-- ▼ 메뉴 토글1 스크립트 -->
			
			<script>
				var toggleText1 = true;
				$('#2').click(function () {
					
					$('#1').toggle('display');
					if(toggleText1==true)				
					{
						window.document.getElementsByClassName('toggleText')[0].innerHTML=("▼");
						toggleText1=false;
					}
					else{
						window.document.getElementsByClassName('toggleText')[0].innerHTML=("▲");
						toggleText1=true;
					}
				});
			</script>
			<!-- ▲ 메뉴 토글 스크립트 -->

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