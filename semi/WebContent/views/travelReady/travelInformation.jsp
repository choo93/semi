<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="semi.travelready.model.vo.*"
    %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>	
</head>
	

	<style>
    #content
    {
    margin:0 auto;
    width:960px;
    min-height:1800px;
    padding-left:0px;
    }
    #pagecontent
    {
    	min-height:1000px;
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
    }
     .item
    {
    	float:left;
    	width:46%;
    	height:250px;
    	margin:2%;
    }
    .dis
    {
    background:url(http://korean.visitseoul.net/media/img/Essential_Information?srvcId=MEDIA&parentSn=116&fileTy=MEDIA&fileNo=1);
	background-repeat:no-repeat;
	background-size:100% 100%;
    }
    
    .divimg{
   	 	width:100%; 
   		height:85%;
    }
    .imgfont
    {
    width:100%; 
    height:15%;
    }
</style>
<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
	<section>
	<div id="pagecontent">
				<section id="content">					
					
			
					<div class="dis" style="height:250px; margin-left:1%; margin-right:1%;">
					<div style="color:white; padding-top:110px; padding-left:40px;">
						<h4>여행필수 정보</h4>
						<p>서울 여행에 대한 기본 정보를 참고하시 바랍니다.</p>
					</div>
					</div>
					
					<div style="height:1900px; margin-top:20px;">
					
					<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=123&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont"><a href="/views/travelReady/Seoulvisit.jsp">서울 방문</a></div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=131&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">서울의 교통수단</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=132&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">서울로 가는 교통편</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=133&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">기후</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=136&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">국경일</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=134&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">전화 및 인터넷</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=137&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">예절</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=138&fileTy=ATTACH&fileNo=2&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">관광안내소</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=139&fileTy=ATTACH&fileNo=2&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">겁근성</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=1037&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">도시 간 이동</div>
			
					</div>
					
							<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=777&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">서울의료관광 헬프데스크</div>
			
					</div>
					
									<div class="item">
					<div class="divimg" style="background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=1078&fileTy=ATTACH&fileNo=2&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;">
											</div>
					<div class="imgfont">관광불편처리센터</div>
			
					</div>
			
					
					</div>
		
			
				</section>
			</div>
		</section>
<%@ include file="/views/main/footer.jsp" %>
</body>
</html>