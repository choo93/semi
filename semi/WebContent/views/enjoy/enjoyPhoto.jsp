<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/moreButton.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<style>
#photo1{
	float: left;
	background-image: url(../../image/enjoy/SEOUL1.png);
}
#photo2{
	float: right;
	background-image: url(../../image/enjoy/SEOUL2.png);
}
#photo3{
	float: left;
	background-image: url(../../image/enjoy/SEOUL3.png);
}
#photo4{
	float: right;
	background-image: url(../../image/enjoy/SEOUL4.png);
}
#photo5{
	float: left;
	background-image: url(../../image/enjoy/SEOUL5.png);
}
#photo6{
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
.picture{
	width:50%;
	height:350px;
	background-repeat:no-repeat;
	background-size:100% 100%;
	z-index:1;
	vertical-align: middle;
	position: relative;
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
</style>
<body id="scroll">
   <%@ include file="/views/main/header.jsp"%>
   <section>
      <div id="enjoyPhoto" style="width: 100%;">
      
      	<a href="sojung.jsp">
         	<div id="photo1" class="picture" style="width: 50%; height: 350px;">
         		<div class="effectLeft" style="width: 100%; height: 100%;">
         		<div class="fontPosition">
            		<span class="font">추천코스</span>
           		</div>
           		</div>
         	</div>
         </a>
         
         <a href="#">
         <div id="photo2" class="picture" style="width: 50%; height: 350px;">
         <div class="effectRight" style="width: 100%; height: 100%;">
         	<div class="fontPosition">
            	<span class="font">명소</span>
           	</div>
         </div>
         </div>
         </a>
         
         <a href="#">
         <div id="photo3" class="picture" style="width: 50%; height: 350px;">
         <div class="effectLeft" style="width: 100%; height: 100%;">
         	<div class="fontPosition">
            	<span class="font">쇼핑</span>
           	</div>
         </div>
         </div>
         </a>
         
         <a href="#">
         <div id="photo4" class="picture" style="width: 50%; height: 350px;">
         <div class="effectRight" style="width: 100%; height: 100%;">
         	<div class="fontPosition">
            	<span class="font">숙박</span>
           	</div>
         </div>
         </div>
         </a>
         
         <a href="#">
         <div id="photo5" class="picture" style="width: 50%; height: 350px;">
         <div class="effectLeft" style="width: 100%; height: 100%;">
         	<div class="fontPosition">
            	<span class="font">음식점</span>
           	</div>
         </div>
         </div>
         </a>
         
         <a href="#">
         <div id="photo6" class="picture" style="width: 50%; height: 350px;">
         <div class="effectRight" style="width: 100%; height: 100%;">
         	<div class="fontPosition">
            	<span class="font">캘린더</span>
           	</div>
         </div>
         </div>
         </a>
         
      </div>
   </section> 
   <%@ include file="/views/main/footer.jsp"%>
</body>
</html>