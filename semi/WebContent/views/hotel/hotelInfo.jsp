<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="/lib/w3.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script src="/js/hotelInfoToogle.js"></script>

</head>

<style>
.mySlides {
	display: none
}
</style>

<body id="scroll">

	<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#contents {
	width: 100%;
	height: 150px;
	background-color: RGB(0, 125, 195);
}

#contents-1 {
	width: 70%;
	height: 100%;
	float: left;
}

#contentTitle {
	width: 100%;
	height: 50%;
	background-color: RGB(0, 125, 195);
	font-size: 40px;
	color: white;
}

#hotelAddress {
	width: 100%;
	height: 50%;
	background-color: RGB(0, 125, 195);
	font-size: 20px;
	color: white;
}

#hotelPhoto {
	width: 100%;
	height: 500px;
	border: 2px solid black;
	margin-top: 1%;
	position:relative;
}

#hotelMainPhoto {
	width: 100%;
	height: 398px;
	padding-left: 25%;
	padding-right: 5%;
	padding-top: 4%;
	padding-bottom: 5%;
	background-color: #363636;

}

#hotelInfoSubPhoto {
	width: 100%;
	height: 100px;
	border: 2px solid black;
	background-color: #363636;
}

#hotelSubPhoto1 {
	width: 20%;
	height: 100%;
	float: left;
	padding: 1%;
}

#hotelSubPhoto2 {
	width: 20%;
	height: 100%;
	float: left;
	padding: 1%;
}

#hotelSubPhoto3 {
	width: 20%;
	height: 100%;
	float: left;
	padding: 1%;
}

#hotelSubPhoto4 {
	width: 20%;
	height: 100%;
	float: left;
	padding: 1%;
}

#hotelSubPhoto5 {
	width: 20%;
	height: 100%;
	float: left;
	padding: 1%;
}

#hotelName {
	width: 100%;
	height: 100px;
	font-size: 20px;
	padding-top: 1%;
	margin-top: 1%;
}
#button{
	width:100%;
	height:50px;
	padding-top: 1%;
}

#reserve{
	width:50%;
	height:100%;
	float:left;
}

#reserve>button{
    width: 80px;
	height: 100%;
	margin-left: 45%;
	background-color: RGB(0, 125, 195);
	border: RGB(0, 125, 195);
	border-radius: 5px;
	color: white;
	font-weight: bold;
}

#back{
	width:50%;
	height:100%;
	float:left;
}

#back>button{
    width: 80px;
	height: 100%;
	margin-left: 45%;
	background-color: RGB(0, 125, 195);
	border: RGB(0, 125, 195);
	border-radius: 5px;
	color: white;
	font-weight: bold;
}

</style>

	<%@ include file="/views/main/header.jsp"%>
	<section>
	<div style="width: 1200px; height: 1800px;">
		<div id="contents">
			<div id="contents-1">
				<div id="contentTitle">호텔아띠 충무로(Goodstay Hotel Atti)</div>
				<div id="hotelAddress">대한민국 > 서울 > 중구</div>
			</div>
		</div>


		<div id="hotelPhoto">
			<div id="hotelMainPhoto"  >
		
				<img class="mySlides" src="//pix6.agoda.net/hotelImages/567/567478/567478_14062708580020059761.jpg?s=1024x768" height="300px" width="600px">
		      
				<img class="mySlides" src="//pix6.agoda.net/hotelImages/567/567478/567478_15051218470027433922.jpg?s=1024x768" height="300px" width="600px">
		
			    <img class="mySlides"src="//pix6.agoda.net/hotelImages/567/567478/567478_15051218470027433912.jpg?s=1024x768" height="300px" width="600px"> 
			    
			    <img class="mySlides" src="//pix6.agoda.net/hotelImages/567/567478/567478_15051218470027433914.jpg?s=1024x768" height="300px" width="600px">
				
				<img class="mySlides" src="//pix6.agoda.net/hotelImages/567/567478/567478_15051218470027433912.jpg?s=1024x768" height="300px" width="600px">
			    
			    			    
			</div>

			<div id="hotelInfoSubPhoto">
				<div id="hotelSubPhoto1">
					<img class="demo w3-border w3-hover-shadow"  src="//pix6.agoda.net/hotelImages/567/567478/567478_14062708580020059761.jpg?s=1024x768"
						height="100%" width="100%" onclick="currentDiv(1)">
				</div>
				<div id="hotelSubPhoto2">
					<img class="demo w3-border w3-hover-shadow" src="//pix6.agoda.net/hotelImages/567/567478/567478_15051218470027433922.jpg?s=1024x768"
						height="100%" width="100%" ; onclick="currentDiv(2)">
				</div>
				<div id="hotelSubPhoto3">
					<img class="demo w3-border w3-hover-shadow" src="//pix6.agoda.net/hotelImages/567/567478/567478_15051218470027433912.jpg?s=1024x768"
						height="100%" width="100%" onclick="currentDiv(3)">
				</div>
				<div id="hotelSubPhoto4">
					<img class="demo w3-border w3-hover-shadow" src="//pix6.agoda.net/hotelImages/567/567478/567478_15051218470027433914.jpg?s=1024x768"
						height="100%" width="100%" onclick="currentDiv(4)">
				</div>
				<div id="hotelSubPhoto5">
					<img class="demo w3-border w3-hover-shadow" src="//pix6.agoda.net/hotelImages/567/567478/567478_15051218470027433912.jpg?s=1024x768"
						height="100%" width="100%" onclick="currentDiv(5)">
				</div>


			</div>
		</div>

		<div id="hotelName" style="border-top: 3px solid black;">호텔이름 : 호텔아띠</div>
		
		<div style="width: 100%; height:3%;">

			<div id="hotelExplainToggle"
				style="width: 100%; height: 100%; border-top: 3px solid black;">
				<div style="width: 80%; height: 100%; float: left; font-size:20px;">
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
			
			
			<div style="width: 100%; height: 90%;">
			<hr>서울 중심에 자리한 럭셔리 호텔인 서울 신라
				호텔은 3호선 동대입구역 5번 출구에서 도보로 5분 거리에 있으며 명동과 동대문 방면으로 무료 셔틀버스를 운행하고
				있습니다. 호텔에서 번화한 명동 거리까지는 차로 15분, 시청까지는 차로 약 20분이 소요됩니다.호텔 내에 유명 작가들의
				조각상이 모여있는 야외조각공원과 겔랑 스파가 있어 여유로운 휴식 시간을 보내실 수 있으며 피트니스 센터, 사우나, 수영장
				등도 있어 다양한 운동을 즐기실 수 있습니다. 뿐만 아니라, 비즈니스 고객님들을 위한 미팅룸과 비즈니스 센터도 있으며
				프런트데스크에서는 환전, 유료 세탁, 룸서비스 등을 이용하실 수 있습니다. 또한, 투숙객에 한하여 무료 주차가 가능하며
				유료로 발렛파킹을 이용하실 수 있습니다.총 426개의 객실을 보유하고 있으며 객실에 따라 남산 또는 영빈관 전망을 감상하실
				수 있습니다. 럭셔리하고 모던한 인테리어가 돋보이는 모든 객실에는 TV, 미나바, 생수 등이 있으며 욕실에는 샤워부스,
				욕조, 비데, 헤어드라이어 등이 완비되어 있습니다. 또한, 이그제큐티브 이상 객실에서는 이규제큐티브 라운지를 이용하실 수
				있습니다. 호텔 내에 중식, 일식, 한식, 프렌치, 뷔페 등 다양한 메뉴를 선보이는 5개의 레스토랑과 1개의 바가 있어
				다이닝 선택의 폭이 넓습니다. 매일 아침 조식은 1층 파크뷰에서 즉석에서 조리한 뷔페를 즐기실 수 있으며 별도의 요금이
				발생합니다.</div>
		</div>


		<div style="width: 100%; height: 3%;">
			<div id="hotelPriceToggle"
				style="width: 100%; height: 100%; border-top: 3px solid black;">
				<div style="width: 80%; height: 100%; float: left; font-size:20px;">
					호텔 가격 정보
				</div>

				<div style="width: 20%; height: 100%; float: left;">
					<h3 class="toggleText2" style="text-align: right; font-size:20px;">▼</h3>
				</div>
			</div>
		</div>


		<div id="hotelPriceExplain"
			style="width: 100%; height: 10%; ">
			<hr>
			<div style="height: 100%; width: 100%; ">
			       호텔 가격(방마다) 싱글룸 : 8만원  , 주말 : 10만원<br>
				더블룸 : 10만원 , 주말 : 11만원 <br> 
				스텐다드 더블  : 12만원 , 주말 :13만원<br>
				 스텐다드룸 트윈 : 12만원 , 주말 : 13만원<br><br>
				 리셉션 종료 시간 : 12:00 AM <br>
				 체크아웃 마감시간 : 12:00 PM <br>
				 체크아웃 시작시간 : 12:00 PM <br>
				 체크인 마감시간 : 12:00 AM <br>
				 체크인 시작시간 : 03:00 PM </div>
		</div>

		<div style="width: 100% height: 3%">
			<div id="hotelMapToggle"
				style="width: 100%; height: 100%; border-top: 3px solid black;">
				<div style="width: 80%; height: 60px; float: left; font-size:20px; ">
					지도 보기

				</div>
				<div style="width: 20%; height: 100%; float: left;">
					<h3 class="toggleText3" style="text-align: right; font-size:20px; ">▼</h3>
				</div>
			</div>
		</div>
		<div id="hotelMapInfo" style="width: 100%; height:400px;  border:2px solid black;">
			
			<div style="width: 100%; height: 400px; position: relative;"></div>

		</div>
		
		<div id="button">
		<div id="reserve">
		<button>예약하기</button>  
		</div>
		<div id="back">
		 <button>호텔 목록페이지</button>
		 </div>
		 </div>
	</div>
	</section>
	<%@ include file="/views/main/footer.jsp"%>


	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGT4VwYUrA0PeXg-MIt2MvQBGEyDLBQ4Y&callback=initMap">
	</script>
	
	<!-- 지도 api -->
	<script>
        // 이거는 자바 스크립트 선언에서 가져오는 듯
        function initMap() {
        	var uluru = {
                    lat: ${37.5606449}, 
                lng: ${126.99718819999998}
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