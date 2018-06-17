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

<link rel="stylesheet" type="text/css" href="/css/travelReady/slider-pro.min.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="css/travelReady/examples.css" media="screen"/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

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

<body style="margin:0px;">

	<div id="example3" class="slider-pro" >
		<div class="sp-slides">
		  <%for(SeoulImageFile sif:list){ %>
			<div class="sp-slide">
				<img class="sp-image"data-src="%>"/>
			</div>
		<%} %>
	
		</div>

		<div class="sp-thumbnails" style="height:200px;">
			  <%for(SeoulImageFile sif:list){ %>
			<img class="sp-thumbnail" src="<%=sif.getImageViewPath()%>"/>
				<%} %>
		</div>
    </div>
    
    
    

</body>
</html>