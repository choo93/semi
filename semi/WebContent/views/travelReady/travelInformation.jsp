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
</style>
<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
	<section>

			<div id="pagecontent">
				<section id="content">
					<div class="dis" style="height:200px; background-color:red;">
						
					</div>
					
					
				</section>
			
			</div>
		</section>
<%@ include file="/views/main/footer.jsp" %>
</body>
</html>