<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import ="semi.enjoy.model.vo.EnjoyInforData"	
	import ="semi.enjoy.model.vo.EnjoyInforDataDetail"
	import ="java.util.*"
	%>
<%
	EnjoyInforData EID =(EnjoyInforData)request.getAttribute("EID"); 
	ArrayList<EnjoyInforDataDetail> LIST =(ArrayList<EnjoyInforDataDetail>)request.getAttribute("EIDD");
%>
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
	
		<!-- 헤더 DIV -->
		<div class="header" style="width: 100%;">
		
			<!-- 현재 위치 : 서울즐기기 > 추천코스 DIV -->
			<div id="currentLocation" style="color: #5F4B8B; font: 12pt 나눔스퀘어; margin-top: 25px; margin-left: 10%; ">현재 위치 : 서울즐기기 > 추천코스</div>
			
			<!-- 제목과 조회수 -->
			<div id="textAndHits">
			
				<!-- 제목 -->
				<div id="enjoyText" style="color: #5F4B8B; font: bold 33pt 나눔스퀘어; margin-top: 20px; margin-left: 10%;"><%=EID.getIndex_List_title() %></div>
				
				<!-- 조회수 -->
				<div id="enjoyHits" style="position: relative; width: 100px; bottom: 35px; color: #5F4B8B; font: bold 10pt 나눔스퀘어; margin: 10px; right: 100px; float: right;">
					<img src="/image/enjoy/hitsEye.png" style="position: relative; top: 5px; height: 23%; width: 23%;"> <%=EID.getIndex_Hits() %>
				</div>
				
			</div>
			<div style="width: 95%; height: 2px; background: linear-gradient(to right, #D1D0ED 55%, white); margin-top: 1%; margin-bottom: 2%; margin-left: 10%;"></div>
		</div>

	<!-- 코스대표사진 -->

	  <div id="aboutRecommendedCourse" style="width: 80%; margin-top: 5%; margin-left: 10%;">
      <div class="photo" style="width: 700px; height: 500px; margin:0 auto; border-radius: 12px;" >
		<img src="<%=EID.getIndex_List_IntroImage()%>">
		</div>
			<!-- 사진 링크 위의 DIV에 이미지 넣기(background-color은 빼주세욤) -->
	
		<!-- 코스대표내용 -->
		<div class="courseTitleComment" style="width: 75%; margin:0 auto; padding-top: 3%;">
			<p style="font: 1.3rem 나눔스퀘어; color: #4F4B63;">
			<%=EID.getIndex_in_mainText() %>
			</p>

			<!-- P 태그 안 내용 지우고 내용 집어넣기 -->
		</div>
	</div>
	<!-- 탐방코스 -->

	<%if(EID.getIndex_First_Course_title()!=null&&EID.getIndex_first_course_comment()!=null){ %>
	<div id="aboutCourse" style="width: 50%; height: 80px; margin-top: 3%; margin-left: 25%; background-color: #DFDCF1; border: 5px solid #6D5B97; border-style: outset;">
		      <span style="color: #453188; font: bold 1.6rem 나눔스퀘어; position: relative; top: 15px; left: 15px;">
		<%=EID.getIndex_First_Course_title() %>
		</span>
		      <p style="color: #6D5B97; font: 1.2rem 나눔스퀘어; position: relative; top: 17px; left: 15px;">
		<%=EID.getIndex_first_course_comment() %>
		</p>

	</div>
	<%} %>
	
	<%for(EnjoyInforDataDetail EIDD : LIST) {%>
		<!-- 여기부터 for 문 돌리기 -->
	
	<!-- 코스 내용 담을 큰 DIV -->
	<div id="coursePost" style="width: 80%; margin-top: 5%; margin-left: 10%;">
		<!-- 코스 1~ 이미지 -->

		<div id="courseNumImg" style="width: 73px; height: 100px; margin:0 auto;">
		<img src="<%= EIDD.getIndex_CourseIcon() %>">
		</div>

			<!-- 코스 제목&부제 담을 DIV -->
			<div id="bigCourseTitle" style="width: 40%; height: 80px; margin: 0 auto; text-align: center;">
				<!-- 코스 제목 -->
				<span id="courseSubtitle" style="color: #363D40; font: bold 1.4rem 나눔스퀘어; position: relative; top: 8px;">
				<%=EIDD.getIndex_Title() %>
				</span>
				<!-- 코스 부제 -->
				<%if(EIDD.getIndex_SubTitle()!=null){ %>
				<p id="courseTitle" style="color: #851934; font: bold 2rem 나눔스퀘어; position: relative; top: 8px;">
				<%=EIDD.getIndex_SubTitle() %>
				</p>
				<%} %>
			</div>
			<!-- 코스 이미지 -->

			<div class="photo" style="width: 700px; height: 500px; margin:0 auto; border-radius: 12px;">
			<img src="<%=EIDD.getIndex_Image()%>">
			</div>
	
			<!-- 코스 설명 -->
			<div class="courseComment" style="width: 80%; margin:0 auto; padding-top: 3%;">
				<p style="font: 1.3rem 나눔스퀘어;">
				<%=EIDD.getIndex_content() %>
				</p>

				<!-- P 태그 안 내용 지우고 내용 집어넣기 -->
			</div>
	<!-- 코스 정보 -->
	<div id="aboutCourseInfo" style="width: 80%; height: 150px; background-color: #DFDCF1; border: 5px solid #6D5B97; border-style: outset; margin-top: 3%; margin-left: 10%;">

	
	<!-- 이름 -->
	<%if(EIDD.getIndex_utilly_title()!=null){ %>
	 <span style="color: #453188; font: bold 1.6rem 나눔스퀘어; position: relative; top: 15px; left: 15px;">
	<%=EIDD.getIndex_utilly_title() %>
	</span>
	<%} %>
	<!-- 주소 -->
	<%if(EIDD.getIndex_utilly_addr()!=null){ %>
	<p style="color: #6D5B97; font: 1.2rem 나눔스퀘어; position: relative; top: 17px; left: 15px;">
	<%=EIDD.getIndex_utilly_addr() %>
	</p>
	<%} %>
	<!-- 안내사항-->
	<%if(EIDD.getIndex_utilly_phone()!=null||EIDD.getIndex_uitlly_time()!=null){%>
	<p style="color: #6D5B97; font: 1.2rem 나눔스퀘어; position: relative; top: 17px; left: 15px;">
	안내사항:
	<%=EIDD.getIndex_utilly_phone() %>
	<%=EIDD.getIndex_uitlly_time() %>
	</p>
	<%} %>
	
	<!-- 웹사이트 -->
	<%if(EIDD.getIndex_utilly_weburl()!=null){ %>
	<p style="position: relative; top: 17px; left: 15px;">

	<a href="<%=EIDD.getIndex_utilly_weburl() %> %>"  style="font: italic bold 1.2rem 나눔스퀘어; color: #6D5B97;">웹사이트 보기</a>

	</p>
	<%} %>
	</div>
	</div>
	<%} %>
		<!-- 이제 for문 끝내기 -->
		
	<%if(EID.getIndex_LastIamge()!=null){ %>
	<!-- 지도랑 멘트 담을 DIV -->
	<div id="mapAndComment" style="width: 80%; margin-top: 3%; margin-left: 10%;">

	
	<!-- 지도 이미지 -->
	<div class="photo" style="width: 700px; height: 565px; margin:0 auto;">
	<img src="<%=EID.getIndex_LastIamge() %>">
	</div>
	<%} %>
	<%if(EID.getIndex_LastComment()!=null){ %>	
	<!-- 빨간색 멘트 -->
	   <span style="color: red; font: bold 1.4rem 나눔스퀘어; position: relative; top: 15px; left: 30px;">
	<%=EID.getIndex_LastComment() %>
	</span>
	<%} %>
	</div>
	<!-- 작성일 발행일 -->
	
	   <div id="date" style="width: 80%; margin-top: 3%; margin-left: 10%;"><span style="color: #453C4A; font: 1rem 나눔스퀘어;">
      [<%=EID.getIndex_Ondate() %> 작성일]</span>
	</div>
	<!-- 태그 -->
	<div id="tag" style="width: 80%; margin-top: 1%; margin-left: 10%;">
   <div style="width: 100%; height: 2px; background: #ddd; margin-bottom: 3%;"></div>
	<p style="display: inline; height: 100%; color: #453C4A; font: 1rem 나눔스퀘어;">
			<!-- 태그 토큰?? while문 돌려야 하나?? -->
			<% 
			StringTokenizer Tag = new StringTokenizer(EID.getIndex_List_Tags(), "#");
			while (Tag.hasMoreTokens()) { 
			%>
			 <a href="#" style="color: blue; font: 1.2rem 나눔스퀘어;">#<%=Tag.nextToken() %></a><%} %>
		 <div style="width: 100%; height: 2px; background: #ddd; margin-top: 3%; margin-bottom: 3%;"></div>

	</div>
	
	
	</div>
		
	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>