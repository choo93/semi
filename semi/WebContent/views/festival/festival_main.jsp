<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/festivalFont.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 <script src="../../js/bootstrap.min.js"></script>

<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/jquery.fancybox.js"></script>
<script src="../../js/main.js"></script>

<style>
	.div1 {
		color: #fff; text-align: center;
	}
.content2 {
	background: url(../../image/festival/slide1_bg.jpg) /* no-repeat center
		center fixed */;
	background-size: cover;
	width: 100%;
	
}
 /*포트폴리오 사이트 부분 */
  .site { height: 330px;}
  .site h4 { border-bottom: 1px solid #C0C0C0; font-size: 16px; padding-bottom: 5px }
  
</style>
</head>

<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
		<div class="div1">
			<div id="top10"></div>
			<!-- Top10 목록 시작 -->
			<div class="content2">
				<div class="container">
					<h1><small>서울관광 Top 10</small></h1>
					<p>서울에서 인기있는 장소 Top 10 목록입니다.</p>
				</div>
			</div>
			<div class="container top10">
					<h2 class="sans"></h2>
					<div id="carousel-generic" class="carousel2 slide">
					<div class="carousel-inner">
					  <div class="item active">
						 <div class="row"> <!-- 슬라이드 one --> 
							  <div class="col-xs-3 col-md-3">
							   <div class="thumbnail site">
								  <a class="fancybox" rel="gallery1" href="../../image/bg1.jpg"><img src="../../image/bg1.jpg" alt="..."></a>
								  <div class="caption">
									<h4>제주관광문화산업진흥원</h4>
									<p>제주관광문화산업진흥원 사이트로 HTML5와 CSS3 그리고 jQuery와 php 기반으로 제작되었습니다.</p>
								  </div>
								</div>
							  </div>
							  <div class="col-xs-3 col-md-3">
							   <div class="thumbnail site">
								  <a class="fancybox" rel="gallery1" href="../../image/bg2.jpg"><img src="../../image/bg2.jpg" alt="..."></a>
								  <div class="caption">
									<h4>(주)신시웨이</h4>
									<p>국내 DB 보안 3대 회사 중 하나인 신시웨이 웹 사이트 입니다. HTML5와 CSS3 기반으로 php 프로그래밍 되었습니다.</p>
								  </div>
								</div>                                 
							  </div>
							  <div class="col-xs-3 col-md-3">
							   <div class="thumbnail site">
								  <a class="fancybox" rel="gallery1" href="../../image/bg3.jpg"><img src="../../image/bg3.jpg" alt="..."></a>
								  <div class="caption">
									<h4>두바이 아시아나 호텔</h4>
									<p>두바이 5성급 호텔인 아시아나 호텔 사이트입니다. XHTML1.0 과 CSS2 기반으로 2009년 웹 표준 사이트로 제작되었습니다.</p>
								  </div>
								</div>                          
											
							  </div>
							  <div class="col-xs-3 col-md-3">
							   <div class="thumbnail site">
								<a class="fancybox" rel="gallery1" href="../../image/bg4.jpg">
								  <img src="../../image/bg4.jpg" alt="...">
								</a>  
								  <div class="caption">
									<h4>두바이 보라카이 클럽</h4>
									<p>두바이 최대 클럽인 보라카이 클럽 사이트입니다. 웹 표준 기반으로 제작되어 있으며, 다양한 jQuery 기술과 php 기반으로 제작되었습니다.</p>
								  </div>
								</div>                          
							   
							  </div>
						 </div> <!-- 슬라이드 one end --> 
					  </div>
					  <div class="item">
						 <div class="row"> <!-- 슬라이드 one --> 
							  <div class="col-xs-3 col-md-3">
							   <div class="thumbnail site">
								<a class="fancybox" rel="gallery1" href="../../image/bg5.jpg">
								  <img src="../../image/bg5.jpg" alt="...">
								 </a> 
								  <div class="caption">
									<h4>두바이 소반 레스토랑 </h4>
									<p>워드프레스 기반으로 제작되었으며, 두바이에서 가장 유명한 한식, 중식, 일식 레스토랑입니다.</p>
								  </div>
								</div>
							  </div>
							  <div class="col-xs-3 col-md-3">
							   <div class="thumbnail site">
								<a class="fancybox" rel="gallery1" href="../../image/bg6.jpg">
								  <img src="../../image/bg6.jpg" alt="...">
								</a>  
								  <div class="caption">
									<h4>두바이 씨월드 레스토랑 </h4>
									<p>해산물 전문 레스토랑으로 두바이에서 가장 유명한 레스토랑 중 하나입니다. HTML5와 CSS3 기반으로 제작되었으며, jQuery를 적용하였습니다.</p>
								  </div>
								</div>                                 
							  </div>
							  <div class="col-xs-3 col-md-3">
							   <div class="thumbnail site">
								<a class="fancybox" rel="gallery1" href="../../image/bg7.jpg">
								  <img src="../../image/bg7.jpg" alt="...">
								</a>  
								  <div class="caption">
									<h4>에이마트 온라인 쇼핑몰</h4>
									<p>두바이 최대 아시안 푸드 마켓</p>
								  </div>
								</div>     
							  </div>
							  <div class="col-xs-3 col-md-3">
							   <div class="thumbnail site">
								<a class="fancybox" rel="gallery1" href="../../image/bg8.jpg">
								  <img src="../../image/bg8.jpg" alt="...">
								 </a> 
								  <div class="caption">
									<h4>스마트북스</h4>
									<p>경제전문 서적 출판사 스마트북스의 웹 사이트입니다. 웹 표준 기반으로 php를 이용하여 제작되었습니다.</p>
								  </div>
								</div> 
							  </div>
						 </div> <!-- 슬라이드 one end -->
					  </div>              
					</div>
					</div>
				 <h2 class="sans">Graphic Design</h2>  
				 <div class="row">
				   <div class="col-xs-3 col-md-3">
					  <div class="thumbnail">
						<a class="fancybox" rel="gallery2" href="../../image/bg9.jpg">
						 <img src="../../image/bg9.jpg" alt="">
						</a> 
					  </div> 
				   </div>
				   <div class="col-xs-3 col-md-3">
					  <div class="thumbnail">
						<a class="fancybox" rel="gallery2" href="../../image/bg1.jpg">
						 <img src="../../image/bg1.jpg" alt="">
						</a> 
					  </div>  
				   </div>
				   <div class="col-xs-3 col-md-3">
					<div class="thumbnail">
					  <a class="fancybox" rel="gallery2" href="../../image/bg2.jpg">
						<img src="../../image/bg2.jpg" alt="">
					  </a>
					</div>  
				   </div>
				   <div class="col-xs-3 col-md-3">
					<div class="thumbnail">
					  <a class="fancybox" rel="gallery2" href="../../image/bg3.jpg">
						<img src="../../image/bg3.jpg" alt="">
					  </a>
					</div>  
				   </div>
				 </div>  
				 <hr>
				 <ul class="pagination pagination-sm">
				   <li class="disabled"><span>«</span></li>
				   <li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
				   <li><a href="#">2</a></li>
				   <li><a href="#">3</a></li>
				   <li><a href="#">4</a></li>
				   <li><a href="#">5</a></li>
				   <li><a href="#">»</a></li>
				  </ul>  
			   </div> 
			</div>
			<script>
					$('.carousel').carousel();
					$('.carousel2').carousel({interval: 3000 });
					//*  fancybox  실행 스크립트 */
					$(document).ready(function() {
					  $(".fancybox").fancybox({
						openEffect  : 'none',
						closeEffect : 'none'
					  });
					});
				  </script>

	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>