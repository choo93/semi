<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<%@ page import="semi.travelready.model.vo.*" import="java.util.*" %>
<%
	SeoulImagePageData sipd=(SeoulImagePageData)request.getAttribute("SeoulImagePageData");
	ArrayList<SeoulImageFile> list=sipd.getNoticelist();
%>
<title>Slider Pro</title>

<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link href="../../css/kfonts2.css" rel="stylesheet">
	<link rel="stylesheet" href="../../css/travelReady/main.css">

<link rel="stylesheet" type="text/css" href="/css/travelReady/slider-pro.min.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="css/travelReady/examples.css" media="screen"/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>



<script type="text/javascript" src="/js/travelReady/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/js/travelReady/jquery.sliderPro.min.js"></script>

<script type="text/javascript">
	$( document ).ready(function( $ ) {
		$( '#example3' ).sliderPro({
			width:1250,
			height: 600,
			fade: true,
			arrows: true,
			buttons: false,
			fullScreen: true,
			shuffle: true,
			smallSize: 500,
			mediumSize: 1000,
			largeSize: 3000,
			thumbnailArrows: true,
			autoplay: false
		});
	});
</script>

</head>

<style>
.keyword-recommend a{
	    display: inline-block;
    margin: 4px;
    color: #0171b0;
    line-height: 22px;
    }
</style>

<body style="margin:0px;">
<%@ include file="/views/main/header.jsp" %>
<section>

<center>
<form class="form-inline" action="/seoulImageSearch" method="post">
<div style="height:150px; padding-top:50px; background-color: #f5f5f5;">
	
  <div class="form-group mx-sm-3">
    <input type="text" class="form-control" name="search">
  </div>
  <input type="submit" class="btn btn-primary" value="검색">
  <div class="keyword-recommend">
					<a href="/seoulImageSearch?search=광화문광장">광화문광장</a>
					<a href="/seoulImageSearch?search=경복궁">경복궁</a>
					<a href="/seoulImageSearch?search=동대문디자인플라자">동대문디자인플라자</a>
					<a href="/seoulImageSearch?search=문화역서울284">문화역서울284</a>
					<a href="/seoulImageSearch?search=삼청동">삼청동</a>
					<a href="/seoulImageSearch?search=북악스카이웨이">북악스카이웨이</a>
					</div>
  
  </div>
</form>
</center>
	
	
	<div id="example3" class="slider-pro" >
	 <h1> 서울 관광 이미지  </h1>
		<div class="sp-slides">
		  <%for(SeoulImageFile sif : list){ %>
			<div class="sp-slide">
				<img class="sp-image"data-src="<%=sif.getImageViewPath()%>"/>
			</div>
		<%} %>
	
		</div>

		<div class="sp-thumbnails" style="height:200px;">
			  <%for(SeoulImageFile sif:list){ %>
			<img class="sp-thumbnail" src="<%=sif.getImageViewPath()%>"/>
				<%} %>
		</div>
    </div>
    
    </section>
			<%@ include file="/views/main/footer.jsp"%>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  
    <script src="../../js/bootstrap.min.js"></script>
    

</body>
</html>