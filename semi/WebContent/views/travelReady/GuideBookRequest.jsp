<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>bootstrap template</title>



<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes"
	rel="stylesheet">
    
     <link rel="stylesheet" href="../../css/main.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>	

  </head>
  
  <body id="scroll">
  <style>
#pagetitle
	{
	position:relative;
 	padding-left:3%;
 	padding-right:3%;
    padding-bottom: 20px;
    border-bottom: 1px solid #d6d6d6;
    width:94%;
    height:120px;
    margin-bottom:35px;
    }
    
    #title
    {
    	position:relative;
    	width:94%;
    	height:120px;
    	margin-left:3%;
    	margin-right:3%;
    	line-height:70px;
    	overflow-x:hidden;
		overflow-y:hidden;
    }
    
    #pagecontent
    {
    min-height:1000px;
    
    margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
    }
    #content
    {
    margin:0 auto;
    width:75%;
    min-height:1000px;
    padding-left:0px;
    }
    #search{
    display: inline-block;
    position: relative;
    z-index: 6;
    padding: 1px 12px 3px 12px;
    border-width: 2px;
    border-style: solid;
    border-radius: 4px;
    border-color: #bbb;
    background: #bbb;
    vertical-align: top;
    font-size: 14px;
    text-align: center;
    color: #fff;
    border-color: #777;
    background: #777;
}
    
    
    fieldset {
    display: block;
    width:700px;
    -webkit-margin-start: 2px;
    -webkit-margin-end: 2px;
    -webkit-padding-before: 0.35em;
    -webkit-padding-start: 0.75em;
    -webkit-padding-end: 0.75em;
    -webkit-padding-after: 0.625em;
    min-width: -webkit-min-content;
    border-width: 2px;
    border-style: groove;
    border-color: threedface;
    border-image: initial;
    vertical-align: middle;
    border:0px;
}

legend, .blind {
    position: absolute;
    width: 0;
    height: 0;
    line-height: 0;
    overflow: hidden;
    text-indent: -9999px;
    font-size: 0;
}
#guidebook li{
	list-style:none;
	display: table-cell;
    width: 50%;
    text-align: center;
	
}
#info
{
    background-color: #e5f2f9;
    color: #007dc3;
    position: relative;
    padding: 20px 20px 20px 100px;
}
#info:before
{
    content: "";
    position: absolute;
    left: 30px;
    width: 45px;
    height: 45px;
    background-repeat:no-repeat;
    background: url(http://korean.visitseoul.net/humanframe/theme/visitseoul/assets/images/content/icon-guidebook.png);
}
#guidebook{
    display: table;
    width: 100%;
    margin-top: 20px;
    max-width: 500px;
    margin: 40px auto;
}
.font
{
	font-weight:700;
	font-family: 'Great Vibes', cursive;
	font-size:18px;
	
}
.input
{
	border-radius:6px;
	border:2px solid #ccc;
	height:30px;
}
 .btn{
 	border-color: #007bc0;
    background: #007bc0;
    border-style: solid;
    border-radius: 4px;
    width:80px;
    height:30px;
    color:white;
    cursor:pointer;
 }
 
 .img{
 width:220px; 
 height:250px;
 background-repeat:no-repeat;
 background-size:100% 100%;
 }
  </style>
  
  <script>
  	function back(){
  		history.back(-1);
  	}
  </script>
	

      <section>
      <%@ include file="/views/main/header.jsp" %>
      
      		<div id="pagetitle">
			<div id="title">
				<p style="height:50px;">현재위치  : 여행준비 > 가이드북&지도</p>
				<h3 style="font-size:50px;">가이드북&지도 신청하기</h3>
			</div>
			</div>
			
			<div id="pagecontent">
				<section id="content">
					<fieldset>
						<legend>가이드북 신청</legend>
						
						<p id="info">안내소찾기
									안내소찾기
									안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기안내소찾기
									안내소찾기<br>
								
								<button id="search">서울 관광 안내소 찾기</button>
								
								</p>
								<form action="/guideBookRequest">
								<ul id="guidebook">
									<li>
									<div class="img" style="background-image:url(http://korean.visitseoul.net/comm/getImage?srvcId=GUIDEBOOK&parentSn=41&fileTy=THUMB&fileNo=11); "></div>
									<div><select name="guidebooknum">
									<option>선택</option>
									<option>1권</option>
									<option>2권</option>
									<option>3권</option>
									</select>2018가이드북</div>
									</li>
									
									<li>
									<div class="img" style="background-image:url(http://korean.visitseoul.net/comm/getImage?srvcId=GUIDEBOOK&parentSn=42&fileTy=THUMB&fileNo=6)"></div>
									<div><select name="mapnum">
									<option>선택</option>
									<option>1권</option>
									<option>2권</option>
									<option>3권</option>
									</select>2017가이드북</div>
									</li>
								</ul>
								<pre>
<label class="font">성명</label> 			<input type="text" name="name" class="input" style="width:100px;"><br><br><br>
<label class="font">email</label>				<input type="email" name="email" class="input"><br><br><br>
<label class="font">전화번호</label> 		<input type="text" name="phone" class="input"><br><br><br>
<label class="font">우편번호</label>		<input type="text" name="addrnum" style="width:100px;" class="input"> <button class="btn">주소검색</button><br><br><br>
<label class="font">기본주소</label>		<input type="text" name="addr" style="width:300px;" class="input"><br><br><br>
<label class="font">상세주소</label>		<input type="text" name="addr2" style="width:300px;" class="input">
										
				<input type="checkBox"><label class="font">가이드북 수신을 위한 개인정보 수입에 동의합니다</label>
					</pre>
					<div style="width:700px;height:50px; text-align:center;margin-top:20px;"><input type="submit" class="btn" value="신청하기">
					
					<button type="button" class="btn" style="background-color:gray;" onclick="back();">취소</button>
					</div>
					</form>
					</fieldset>
					
				</section>
			</div>
			
		
		</section>
		
		

      <%@ include file="/views/main/footer.jsp"%>
   

  </body>
</html>
