<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/moreButton.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
	
	<!-- 내용물 -->
	<div id="enjoyRecommendedCoursePage" style="width: 100%;">

	<!-- 코스대표사진 -->
	<div id="aboutRecommendedCourse" style="width: 80%; margin-top: 5%; margin-left: 10%;">
		<div class="photo" style="width: 700px; height: 500px; margin:0 auto; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=19102&fileTy=MEDIA&fileNo=1);"></div>
			<!-- 사진 링크 위의 DIV에 이미지 넣기 -->
	
		<!-- 코스대표내용 -->
		<div class="courseTitleComment" style="width: 75%; margin:0 auto; padding-top: 3%;">
			<p style="font: 1.3rem 나눔스퀘어; color: #4F4B63;">누군가에게 닥칠 불행한 사건, 사고를 꿈으로 미리 볼 수 있는 여자와 그 꿈이 현실이 되는 것을 막기 위해 고군분투하는 검사의 이야기를 그린 드라마 당신이 잠든 사이에. 미스터리 스릴러적 전개와 그 속에서 펼쳐졌던 홍주(수지)와 정재찬(이종석)의 로맨스까지, 다채로운 이야기 구성으로 큰 호평을 받았다. 한류 스타로 최고의 인기를 끌고 있는 이종석과 수지가 등장한 당신이 잠든 사이에 속 촬영지를 소개한다.</p>
			<!-- P 태그 안 내용 지우고 내용 집어넣기 -->
		</div>
	</div>
	<!-- 탐방코스 -->
	<div id="aboutCourse" style="width: 50%; height: 80px; margin-top: 3%; margin-left: 25%; background-color: #DFDCF1; border: 5px solid #6D5B97; border-style: outset;">
		<span style="color: #453188; font: bold 1.6rem 나눔스퀘어; position: relative; top: 15px; left: 15px;">탐방코스</span>
		<p style="color: #6D5B97; font: 1.2rem 나눔스퀘어; position: relative; top: 17px; left: 15px;">안국동 일대 – 카페 펌킨 – 건국대학교 청심대 – 써브웨이 논현역점</p>
	</div>
	
		<!-- 여기부터 for 문 돌리기 -->
	
	<!-- 코스 내용 담을 큰 DIV -->
	<div id="coursePost" style="width: 80%; margin-top: 5%; margin-left: 10%;">
		<!-- 코스 1~ 이미지 -->
		<div id="courseNumImg" style="width: 73px; height: 100px; margin:0 auto; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=19045&fileTy=MEDIA&fileNo=1);"></div>
			<!-- 코스 제목&부제 담을 DIV -->
			<div id="bigCourseTitle" style="width: 40%; height: 80px; margin: 0 auto; text-align: center;">
				<!-- 코스 제목 -->
				<span id="courseSubtitle" style="color: #363D40; font: bold 1.4rem 나눔스퀘어; position: relative; top: 8px;">봄날에 어울리는 꽃집</span>
				<!-- 코스 부제 -->
				<p id="courseTitle" style="color: #851934; font: bold 2rem 나눔스퀘어; position: relative; top: 8px;">보뜨플라워</p>
			</div>
			<!-- 코스 이미지 -->
			<div class="photo" style="width: 700px; height: 500px; margin:0 auto; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=19107&fileTy=MEDIA&fileNo=1);"></div>
	
			<!-- 코스 설명 -->
			<div class="courseComment" style="width: 75%; margin:0 auto; padding-top: 3%;">
				<p style="font: 1.3rem 나눔스퀘어; color: #4F4B63;">안국역 1번 출구 윤보선길을 따라 북촌한옥마을로 올라가다 보면 멀리서도 눈에 띄는 꽃집이 보인다. 홍주(수지)가 반갑게 인사하던 바로 그 꽃집이다. 다양한 꽃이 판매되고 있으며 오랫동안 아름다움을 즐길 수 있는 드라이 플라워나 프리저브드 플라워가 관광객들에게 인기다. 짧은 시간 동안의 플라워 레슨(일본어 가능)도 가능하다.</p>
				<!-- P 태그 안 내용 지우고 내용 집어넣기 -->
			</div>
	<!-- 코스 정보 -->
	<div id="aboutCourseInfo" style="width: 80%; height: 150px; background-color: #DFDCF1; border: 5px solid #6D5B97; border-style: outset; margin-top: 3%; margin-left: 10%;">
	<!-- 이름 -->
	<span style="color: #453188; font: bold 1.6rem 나눔스퀘어; position: relative; top: 15px; left: 15px;">보뜨플라워</span>
	<!-- 주소 -->
	<p style="color: #6D5B97; font: 1.2rem 나눔스퀘어; position: relative; top: 17px; left: 15px;">주소: 서울특별시 종로구 윤보선길 28</p>
	<!-- 운영시간 -->
	<p style="color: #6D5B97; font: 1.2rem 나눔스퀘어; position: relative; top: 17px; left: 15px;">운영시간: 월요일~토요일 09:30~19:30, 일요일 10:00~19:00</p>
	<!-- 문의 -->
	<p style="color: #6D5B97; font: 1.2rem 나눔스퀘어; position: relative; top: 17px; left: 15px;">문의: 02-737-8934</p>
	<!-- 웹사이트 -->
	<p style="position: relative; top: 17px; left: 15px;">
	<a href="http://www.botteflower.com/" style="font: italic bold 1.2rem 나눔스퀘어; color: #6D5B97;">웹사이트 보기</a>
	</p>
	</div>
	</div>
		<!-- 이제 for문 끝내기 -->
	<!-- 지도랑 멘트 담을 DIV -->
	<div id="mapAndComment" style="width: 80%; margin-top: 3%; margin-left: 10%;">
	<!-- 지도 이미지 -->
	<div class="photo" style="width: 700px; height: 565px; margin:0 auto; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=19125&fileTy=MEDIA&fileNo=1);"></div>
		
	<!-- 빨간색 멘트 -->
	<span style="color: red; font: bold 1.4rem 나눔스퀘어; position: relative; top: 15px; left: 30px;">※ 본 정보는 2018년 4월에 작성된 것으로, 이후 내용이 변경될 수 있으니 방문 전 확인하시기 바랍니다.</span>
	</div>
	<!-- 작성일 발행일 -->
	<div id="date" style="width: 80%; margin-top: 3%; margin-left: 10%;">
		<span style="color: #453C4A; font: 1rem 나눔스퀘어;">[2018.05.17 작성일 / 2018.05.16 발행일]</span>
	</div>
	<!-- 태그 -->
	<div id="tag" style="width: 80%; margin-top: 1%; margin-left: 10%;">
	<div style="width: 100%; height: 2px; background: #ddd; margin-bottom: 3%;"></div>
		<p style="display: inline; height: 100%; color: #453C4A; font: 1rem 나눔스퀘어;">태그</p>
		<div style="display: inline;">
			<!-- 태그 토큰?? while문 돌려야 하나?? -->
			<a href="#" style="color: blue; font: 1.2rem 나눔스퀘어;">#당신이잠든사이에</a>
		</div>
	<div style="width: 100%; height: 2px; background: #ddd; margin-top: 3%; margin-bottom: 3%;"></div>
	</div>
	
	
	</div>
		
	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>