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
    }
    #content
    {
    width:100%;
    min-height:1000px;
    padding-left:0px;
    }
    #guidebookRq
    {
    	width:100%;
    	border:3px;
    	height:180px;
    	margin-bottom:30px;
    	background:url(
				http://korean.visitseoul.net/humanframe/theme/visitseoul/assets/images/content/guidebook.png);
		background-repeat:no-repeat;
		background-size:70% 120%;
		
		overflow-x:hidden;
		overflow-y:hidden;
				
    
    }
    #guidebookRq>a
    {
    	width:65%;
    	height:120px;
    	display:inline-block;
    	padding-top:40px;
    	padding-left:60%;
    	font-size:40px;
    	font-weight:400;
    	overflow:hidden;
    	text-overflow:ellipsis;

    }
    
    #guidebookRq>a strong
    {
    	margin-top:5px;
    	border:3px;
    	text-align:center;
    	background-color:#007dc3;
    	color:white;
    	font-size:40px;
    	margin-left:9%;
    	border-radius: 9px;
    }
    #guidebookDn
    {
   
    	width:100%;
    	height:2000px;
    	
    }
    .item
    {
    	float:left;
    	width:26%;
    	height:400px;
    
    	margin:3% 3% 50px 3%;
    }
    .img
    {
     background-repeat:no-repeat;
    	width:100%;
    	height:75%;
    	background-size:100% 120%;
    	
    }
    .name
    {
    	width:100%;
    	height:5%;
    	margin-top:8px;
    	font-weight:700;
    	color:black;
    	overflow:hidden;text-overflow:ellipsis;


    	
    }
    .button
    {
    	border:1px solid red;
    	border-radius:5px;
    	text-align:center;
    	color:red;
    	font-weight:800;
    	overflow:hidden;text-overflow:ellipsis;

    }
    #btn{
    color:red;
    background-color:white;
    border:0px;
    font-weight:700;
    }
	</style>

<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
	<section>
		<%@ include file="/views/travelReady/GuideBookHeader.jsp" %>
			<div id="pagecontent">
				<section id="content">
					<div id="guidebookRq">
						<form action="/adminGuideBookRequest">
							<input type="submit" value="배송확인">
						</form>
						<a href="/views/travelReady/GuideBookRequest.jsp">
							무료가이드북&지도<br>
							<strong>
								 신청하기
							</strong>
						</a>
					</div>
					
						<%for(GuideBookDown gbd : list) {%>
				
						<div class="item">
							<div class="img" style="<%=gbd.getGuideBookImagePath()%>"></div>
							<div class="name"><%=gbd.getGuideName()%></div>
							<form action="/pdfDown" method="post">
							<input type="hidden" name="orderNo" value="<%=gbd.getGuideNo()%>" ><div class="button">PDF View<br>(75MB)<input type="submit" id="btn" value="다운로드"></div>
							</form>
						</div>
						<%} %>
					
					<div id="guidebookDn">
					  

					</div>
				</section>
			</div>
			
	
	</section>
<%@ include file="/views/main/footer.jsp" %>
</body>
</html>