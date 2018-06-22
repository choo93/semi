<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 서울즐기기</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link rel="stylesheet" href="../../css/moreButton.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<style>
#photo1{
	width:50%;
	height:350px;
	background-repeat:no-repeat;
	background-size:100% 100%;
	z-index:1;
	vertical-align: middle;
	position: relative;
	float: left;
	background-image: url(../../image/enjoy/SEOUL1.png);
}
#photo2{
	width:50%;
	height:350px;
	background-repeat:no-repeat;
	background-size:100% 100%;
	z-index:1;
	vertical-align: middle;
	position: relative;
	float: right;
	background-image: url(../../image/enjoy/SEOUL2.png);
}
#photo3{
	width:50%;
	height:350px;
	background-repeat:no-repeat;
	background-size:100% 100%;
	z-index:1;
	vertical-align: middle;
	position: relative;
	float: left;
	background-image: url(../../image/enjoy/SEOUL3.png);
}
#photo4{
	width:50%;
	height:350px;
	background-repeat:no-repeat;
	background-size:100% 100%;
	z-index:1;
	vertical-align: middle;
	position: relative;
	float: right;
	background-image: url(../../image/enjoy/SEOUL4.png);
}
#photo5{
	width:50%;
	height:350px;
	background-repeat:no-repeat;
	background-size:100% 100%;
	z-index:1;
	vertical-align: middle;
	position: relative;
	float: left;
	background-image: url(../../image/enjoy/SEOUL5.png);
}
#photo6{
	width:50%;
	height:350px;
	background-repeat:no-repeat;
	background-size:100% 100%;
	z-index:1;
	vertical-align: middle;
	position: relative;
	float: right;
	background-image: url(../../image/enjoy/SEOUL6.png);
}
.font {
	color: white;
	text-shadow: 1px -1px 1px #F6C467, -1px 2px 2px #E96187;
	height: 60px;
	margin-bottom: 10px;
	font: italic bold 3.3rem "나눔스퀘어";
	overflow: hidden;
	text-overflow: ellipsis;
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
.fontPosition:after{
	content: '';
	display: block;
	width: 60px;
	height: 3px;
	background: #E96187;
	position: absolute;
	top: 5;
	left: 0;
}
.effectLeft{
		height:80px; 
		transition:all 0.8s, color 0.3s 0.3s;  
		color:#504f4f; cursor: pointer;  
	}
.effectLeft:hover{
box-shadow:1000px 0 0 0 rgba(0,0,0,0.5) inset;
}
.effectRight{
		height:80px; 
		transition:all 0.8s, color 0.3s 0.3s;  
		color:#504f4f; cursor: pointer;  
	}
.effectRight:hover{
box-shadow:-1000px 0 0 0 rgba(0,0,0,0.5) inset;
}
@media (max-width:808px){
		
			.photo1{
				width:100%;
			}
		}
</style>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	
	<section>
		<div id="enjoyPhoto" style="width: 100%;">
			
			<!-- 1 -->
			<a href="/enjoyList?type=type1">
				<div class="effectRight" id="photo1" style="height: 350px; float: left;">
						<div class="fontPosition">
							<div class="font">추천코스</div>
						</div>	
				</div>
			</a>
			
			<!-- 2 -->
			<a href="/enjoyList?type=type2">
				<div class="effectLeft" id="photo2" style="height: 350px; float: left;">
					<div class="fontPosition">
						<div class="font">명소</div>
					</div>							
				</div>
			</a>
			
			<!-- 3 -->
			<a href="/enjoyList?type=type3">
				<div class="effectRight" id="photo3" style="height: 350px; float: left;">
					<div class="fontPosition">
						<div class="font">쇼핑</div>
					</div>
				</div>
			</a>
			
			<!-- 4 -->
			<a href="/hotelList">
				<div class="effectLeft" id="photo4" style="height: 350px; float: left;">
					<div class="fontPosition">
						<div class="font">숙박</div>
					</div>
				</div>
			</a>
			
			<!-- 5 -->
			<a href="/enjoyList?type=type5">
				<div class="effectRight" id="photo5" style="height: 350px; float: left;">
					<div class="fontPosition">
						<div class="font">음식점</div>
					</div>
				</div>
			</a>
			
			<!-- 6 -->
			<a href="/enjoyCalendar">
				<div class="effectLeft" id="photo6" style="height: 350px; float: left;">
					<div class="fontPosition">
						<div class="font">캘린더</div>
					</div>
				</div>
			</a>
			
		</div>
	</section>
</body>
</html>