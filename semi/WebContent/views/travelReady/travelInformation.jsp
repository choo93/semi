<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="semi.travelready.model.vo.*"
    %>
    
   <%ArrayList<GuideBookDown> list=(ArrayList<GuideBookDown>)request.getAttribute("image"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
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
    	width:48%;
    	height:350px;
    	margin:1%;
    }
    .dis
    {
    margin-top:50px;
    background:url(http://korean.visitseoul.net/media/img/Essential_Information?srvcId=MEDIA&parentSn=116&fileTy=MEDIA&fileNo=1);
	background-repeat:no-repeat;
	background-size:100% 100%;
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
						
					<div class="item" style="background:url(http://korean.visitseoul.net/media/img/Essential_Information?srvcId=MEDIA&parentSn=116&fileTy=MEDIA&fileNo=1);">
						
					</div>
					
					<div class="item" style="background-color:green;">
						
					</div>
					
						<div class="item" style="background-color:green;">
						
					</div>
					
						<div class="item" style="background-color:green;">
						
					</div>
					
						<div class="item" style="background-color:green;">
						
					</div>
					
						<div class="item" style="background-color:green;">
						
					</div>
					
						<div class="item" style="background-color:green;">
						
					</div>
					
						<div class="item" style="background-color:green;">
						
					</div>
					
						<div class="item" style="background-color:green;">
						
					</div>
					
						<div class="item" style="background-color:green;">
						
					</div>
						
					
					</div>
		
			
				</section>
			</div>
		</section>
<%@ include file="/views/main/footer.jsp" %>
</body>
</html>