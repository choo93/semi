<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="semi.travelready.model.vo.*"
   import="semi.login.model.vo.*"
    %>
    
   <%ArrayList<GuideBookDown> list=(ArrayList<GuideBookDown>)request.getAttribute("image"); 
	SeoulUser su=(SeoulUser)session.getAttribute("user");
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
    .dis
    {
    	width:960px;
    }
    #guidebookrequest
    {
    width:960px; 
 
    height:100%;
    background:url(
				http://korean.visitseoul.net/humanframe/theme/visitseoul/assets/images/content/guidebook.png);
	background-repeat:no-repeat;
	background-size:100% 100%;
    }
   #rq{
   margin-left:55px; 
   font-size:30px; 
   background-color:#b43029;
   border-radius:9px;
   color:white;
   border:5px soild white;
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
    	border:1px solid #b43029;
    	border-radius:5px;
    	text-align:center;
    	color:#b43029;
    	font-weight:800;
    	overflow:hidden;text-overflow:ellipsis;

    }
    #btn{
    color:#b43029;
    background-color:white;
    border:0px;
    font-weight:700;
    }
</style>
<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
	<section>
		
			<div id="pagecontent">
				<section id="content">
					<div class="dis" style="height:200px;">
						<div id="guidebookrequest">
					
								<%if(su!=null && su.getUserId().equals("admin")){ %>
								<a href="/adminGuideBookRequest">
						<div style="padding-left:700px; padding-top:70px;">
							<strong style="font-size:25px;">무료가이드북 & 지도</strong>
							<br>
								<strong id="rq">신청하기</strong>
						</div>
							</a>
							<%}else{ %>
								<a href="/views/travelReady/GuideBookRequest.jsp">
						<div style="padding-left:700px; padding-top:70px;">
							<strong style="font-size:25px;">무료가이드북 & 지도</strong>
							<br>
								<strong id="rq">신청하기</strong>
						</div>
							</a>
							<%} %>
						</div>
						
					</div>
			
				
					
					<div class="dis" style="height:2000px; margin-top:32px;">
					<%for(GuideBookDown gbd : list) {%>
						<div class="item">
							<div class="img" style="<%=gbd.getGuideBookImagePath()%>"></div>
							<div class="name"><%=gbd.getGuideName()%></div>
							
							
							<a href="/pdfDown?orderNo=<%=gbd.getGuideNo()%>"><div class="button" style="font-family:'Nanum Gothic', sans-serif; font-size:0.9rem;">PDF View<br>(<%=gbd.getFileSize()%>)다운로드</div>
							
							</a>
						</div>
						<%} %>
						
					
					</div>
				</section>
			
			</div>
		</section>

</body>
</html>