<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.hotel.model.vo.*"
	import="java.util.*"%>
<%
		HotelInfo hi = (HotelInfo)request.getAttribute("hotelInfo");
	
%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css//hotel/hotelInfo.css?ver=1">
<link rel="stylesheet" href="/lib/w3.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script src="/js/hotel/hotelInfoToogle.js"></script>

<link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">


</head>

<style>
.mySlides {
	display: none
}
</style>

<body id="scroll">

>

	<%@ include file="/views/main/header.jsp"%>
	<section>
	<div style="width: 1200px; height: 1900px; margin-left:15%;">
		<div id="contents">
			<div id="contents-1">
				<div id="contentTitle"><%=hi.getHotelName() %></div>
				<div id="hotelAddress"><%=hi.getHotelAddress() %></div>
			</div>
		</div>


		<div id="hotelPhoto">
			<div id="hotelMainPhoto"  >
		
				<img class="mySlides" src="<%=hi.getHotelMainPhoto() %>" style= "height:300px; width:600px ">
		      
				<img class="mySlides" src="<%=hi.getHotelSubPhoto1() %>" style= "height:300px; width:600px">
		
			    <img class="mySlides"src="<%=hi.getHotelSubPhoto2() %>" style= "height:300px; width:600px"> 
			    
			    <img class="mySlides" src="<%=hi.getHotelSubPhoto3() %>" style= "height:300px; width:600px">
				
				<img class="mySlides" src="<%=hi.getHotelSubPhoto4() %>" style= "height:300px; width:600px">
			    
			    			    
			</div>

			<div id="hotelInfoSubPhoto">
				<div id="hotelSubPhoto1">
					<img class="demo w3-border w3-hover-shadow"  src="<%=hi.getHotelMainPhoto() %>"
						style = "height:100%; width:100%" onclick="currentDiv(1)">
				</div>
				<div id="hotelSubPhoto2">
					<img class="demo w3-border w3-hover-shadow" src="<%=hi.getHotelSubPhoto1() %>"
						style = "height:100%; width:100%"  onclick="currentDiv(2)">
				</div>
				<div id="hotelSubPhoto3">
					<img class="demo w3-border w3-hover-shadow" src="<%=hi.getHotelSubPhoto2() %>"
						style = "height:100%; width:100%" onclick="currentDiv(3)">
				</div>
				<div id="hotelSubPhoto4">
					<img class="demo w3-border w3-hover-shadow" src="<%=hi.getHotelSubPhoto3() %>"
						style = "height:100%; width:100%" onclick="currentDiv(4)">
				</div>
				<div id="hotelSubPhoto5">
					<img class="demo w3-border w3-hover-shadow" src="<%=hi.getHotelSubPhoto4() %>"
						style = "height:100%; width:100%" onclick="currentDiv(5)">
				</div>


			</div>
		</div>
		
		<div id="hotelName">호텔이름 : <%=hi.getHotelName() %></div>
		<div id="hotelPhone" style="padding-bottom:2%">연락처 : <%=hi.getHotelPhone() %></div>
	
		
		<div style="width: 100%; height:3%;">

			<div id="hotelExplainToggle">
				<div style="width: 80%; height: 100%; float: left; font-size:20px;padding-left:2%;padding-top:1%;font:bold 20pt 나눔스퀘어;">
					호텔 설명
				</div>
				<div style="width: 20%; height: 100%; float: left;">
					<h3 class="toggleText1" style="text-align: right; font-size:20px;">▼</h3>
				</div>
			</div>
			<br>
		</div>

		<div id="hotelTotalExplain"
			style="width: 100%; height: 10%; display: none;">
			
			
			<div style="width: 100%; height: 90%; font-size:16px;">
			<hr><%=hi.getHotelExplain() %></div>
		</div>


		<div style="width: 100%; height: 3%;">
			<div id="hotelPriceToggle" style = margin-top:2%;>
				<div style="width: 80%; height: 100%; float: left; padding-left:2%;padding-top:1%;font:bold 20pt 나눔스퀘어;">
					호텔 가격 정보
				</div>

				<div style="width: 20%; height: 100%; float: left;">
					<h3 class="toggleText2" style="text-align: right; font-size:20px;">▲</h3>
				</div>
			</div>
		</div>


		<div id="hotelPriceExplain"
			style="width: 100%; height: 10%; ">
			<hr>
			<div style="height: 100%; width: 100%; ">
			<div id = "hotelRoomPriceExplain">
			      <pre> <%=hi.getHotelRoomPriceExplain() %></pre></div>
			<div id = "hotelCheckInOut">	 
				<%=hi.getHotelCheckInOut() %> </div>
				 </div>
				 
		</div>

		<div style="width: 100% height: 3%">
			<div id="hotelMapToggle" style="margin-top:2%;">
				<div  style="width: 80%; height: 70px; float: left; font-size:20px; background-color: RGB(245, 245, 245); padding-left:2%;padding-top:1%;font:bold 20pt 나눔스퀘어;">
					지도 보기

				</div>
				<div style="width: 20%; height: 100%; float: left; background-color: RGB(245, 245, 245);">
					<h3 class="toggleText3" style="text-align: right; font-size:20px; ">▲</h3>
				</div>
			</div>
		</div>
		<div id="hotelMapInfo" style="width: 100%; height:400px;  border:2px solid black;">
			
			

		</div>
		
		<div id="button">
		<div id="reserve">
		<button onclick="roomInfo(<%=hi.getIndexNum() %>,<%=hi.getHotelRoomCode() %>);" style="cursor:pointer">예약하기</button> 
		</div>
		<div id="back">
		 <button onclick="back();" style="cursor:pointer">호텔 목록페이지</button>
		 </div>
		 </div>
	</div>
	</section>
	<%@ include file="/views/main/footer.jsp"%>


	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGT4VwYUrA0PeXg-MIt2MvQBGEyDLBQ4Y&callback=initMap">
	</script>
	
	<script>
		function back()
		{
			history.go(-1);
		}
	</script>
	
	
	
	<script>
		function roomInfo(index,roomCode){
			<%if(session.getAttribute("user")!=null){ %>
				location.href = "/roomInfo?indexNum="+index+"&roomCode="+roomCode+"&hotelCode="+<%=hi.getHotelCode() %>;
			<%}else{ %>
				alert('로그인후 이용해 주세요');
			<%} %>
		}
	</script>
	
	
	<!-- 지도 api -->
	<script>
        // 이거는 자바 스크립트 선언에서 가져오는 듯
        function initMap() {
        	var uluru = {
                    lat: <%=hi.getHotelLatitude()%>,
                lng: <%=hi.getHotelLongtitude()%>
            };
            var map = new google.maps.Map(document.getElementById('hotelMapInfo'), {
                zoom: 18,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
        
        var latitude;
        var longitude;
        window.onload = function() {
            navigator.geolocation.getCurrentPosition(showYourLocation);
        }

        function showYourLocation(position) {
            latitude = position.coords.latitude;
            longitude = position.coords.longitude;
        }
	</script>


   <!-- 사진 슬라이드 api -->
	<script>
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			;
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-border-red","");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-border-red";
		}

		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 5000); // Change image every 2 seconds
		}
	</script>

	

</body>
</html>