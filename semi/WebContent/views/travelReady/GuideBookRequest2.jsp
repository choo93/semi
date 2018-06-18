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
<link rel="stylesheet" href="../../css/login/login.css">
<link rel="stylesheet" href="../../css/travelReady/materialize.min.css">

<script src="../../js/login/materialize.min.js"></script>


<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>	

  </head>
  

  <style>

*{margin:0; padding:0;font-family: 'Nanum Gothic', sans-serif; font-size:0.9rem;}
a
{text-decoration:none!important;color:black;}
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
 
 a{
 	color:black;
 }
  </style>
  
  <script>
  	function back(){
  		history.back(-1);
  	}
  </script>
	
  <body id="scroll">
      <section>

			
			<div id="pagecontent">
				<section id="content">
					<fieldset>
						<legend>가이드북 신청</legend>
						
						<p id="info">
								<b>※무료 가이드북&amp;지도 신청안내</b><br>
								우편배송수량 : 1인당 가이드북 3부, 지도 3부(총 6부)까지 신청 가능<br>
								우편배송일 : 평일기준 약 4-5일 소요(우체국 사정에 따라 달라질 수 있음)<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								일반등기로 보내기 때문에, 배송 추적/수령 여부 확인이 어려우며,  <br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								이에 관한 책임은 본사에 없음을 미리 알려드립니다. <br>
								방문수령: 직접 방문하여 3부 이하 홍보물을 받아보시길 원하는 경우,<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								         	관광안내소로 방문하시기 바랍니다.<br> 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;								         
				
								<br>
								
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
							
		
 			<div class="row">
            <div class="input-field col s12">
                <input type="text" name="name">
                <label for="id">성명</label>
            </div>
    		</div>
            <div class="row">
            <div class="input-field col s12">
                <input type="email" name="email">
                <label for="id">이메일</label>
            </div>
            </div>
                  <div class="row">
            <div class="input-field col s12">
                <input type="text" name="phone">
                <label for="id">전화번호</label>
            </div>
            </div>
                  <div class="row">
            <div class="input-field col s12">
                <input type="text" name="addrnum">
                <label for="id">우편번호</label>
            </div>
            </div>
                  <div class="row">
            <div class="input-field col s12">
               <input type="text" name="addr">
                <label for="id">기본주소</label>
            </div>
            </div>
                  <div class="row">
            <div class="input-field col s12">
               <input type="text" name="addr2">
                <label for="id">상세주소</label>
            </div>
            </div>
            
            <div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="true" data-auto-logout-link="true" data-use-continue-as="true"></div>

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
