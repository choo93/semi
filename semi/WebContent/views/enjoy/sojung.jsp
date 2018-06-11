<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/moreButton.css">
<link rel="stylesheet" href="../../css/enjoySelect.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<body id="scroll">
   <%@ include file="/views/main/header.jsp"%>
   <section>
   <%-- <!-- 명소 Header -->
   <%@ include file="/views/enjoy/enjoyListHeader.jsp" %> --%>
   
   <!-- 내용물 -->
   <div id="enjoyPage" style="height: 2000px;">
   
      <div id="line" style="background-color: pink; margin-left: 10%;">
         <select name="list">
             <option value="">정렬하기</option>
             <option value="title">제목</option>
             <option value="dayOfIssue">발행일</option>
         </select>
      </div>
      
      <div class="content" id="list_1" style="margin-left: 10%; padding: 20px;">
         <div id="photo" style="float: left; width: 400px; height: 200px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18822&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
         <div id="info" style="float: left; height: 200px; background-color: orange">
            <div id="title" style="font: bold 30pt 나눔스퀘어;">
               갤러리 3안
            </div>
            <div id="contents">
               삼청동에 개관한 갤러리 3안은 회화, 영상, 조각, 설치 외 다양한 예술 분야를 다루고 있으며 구애받지 않는 실험 정신을 가진 아티스트들의 작품을 감상할 수 있다.
            </div>
            <div id="tags">
            <p style="display: inline; height: 100%;">태그</p>
               <div style="display: inline;">
               <a href="#">#갤러리3안</a>
               <a href="#">#갤러리3안</a>
               <a href="#">#갤러리3안</a>
               <a href="#">#갤러리3안</a>
               <a href="#">#갤러리3안</a>
               <a href="#">#갤러리3안</a>
               </div>
            </div>
            <button id="button">자세히</button>
         </div>
      </div>
      
      <div class="content" id="list_2" style="margin-left: 10%; padding: 20px; clear: left;">
         <div id="photo" style="float: left; width: 400px; height: 200px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18795&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
         <div id="info" style="float: left; height: 200px; background-color: orange">
            <div id="title" style="font: bold 30pt 나눔스퀘어;">
               아원공방
            </div>
            <div id="contents">
               1983년도에 개업한 은 금속으로 공예를 만드는 공방이다. 30년 이상 이어온 오랜 시간 동안 많은 사랑을 받아왔다.<br>
               만들어진 공예작품 하나하나에는 정성이 담겨 있으며, 차가운 금속의 따스함을 느끼게 한다.
            </div>
            <div id="tags">
            <p style="display: inline; height: 100%;">태그</p>
               <div style="display: inline;">
               <a href="#">#아원공방</a>
               <a href="#">#아원공방</a>
               <a href="#">#아원공방</a>
               <a href="#">#아원공방</a>
               <a href="#">#아원공방</a>
               <a href="#">#아원공방</a>
               </div>
            </div>
            <button id="button">자세히</button>
         </div>
      </div>
      
      <div class="content" id="list_3" style="margin-left: 10%; padding: 20px; clear: left;">
         <div id="photo" style="float: left; width: 400px; height: 200px; background-color: red;"></div>
         <div id="info" style="float: left; height: 200px; background-color: orange">
            <div id="title" style="font: bold 30pt 나눔스퀘어;">
               인천공항 제2여객터미널 관광정보센터
            </div>
            <div id="contents">
               인천공항 제2여객터미널에 위치한 관광정보센터로 2018년 1월 18일에 개관하였다.
            </div>
            <div id="tags">
            <p style="display: inline; height: 100%;">태그</p>
               <div style="display: inline;">
               <a href="#">#인천공항</a>
               <a href="#">#인천공항</a>
               <a href="#">#인천공항</a>
               <a href="#">#인천공항</a>
               <a href="#">#인천공항</a>
               <a href="#">#인천공항</a>
               </div>
            </div>
            <button id="button">자세히</button>
         </div>
      </div>
      
      <div class="content" id="list_4" style="margin-left: 10%; padding: 20px; clear: left;">
         <div id="photo" style="float: left; width: 400px; height: 200px; background-color: red;"></div>
         <div id="info" style="float: left; height: 200px; background-color: orange">
            <div id="title" style="font: bold 30pt 나눔스퀘어;">
               골든블루마리나
            </div>
            <div id="contents">
               골든블루마리나는 다양한 요트 체험 프로그램을 할 수 있는 곳이다.
            </div>
            <div id="tags">
            <p style="display: inline; height: 100%;">태그</p>
               <div style="display: inline;">
               <a href="#">#워크샵</a>
               <a href="#">#세빛섬</a>
               <a href="#">#태그</a>
               <a href="#">#태그</a>
               <a href="#">#태그</a>
               <a href="#">#태그</a>
               </div>
            </div>
            <button id="button">자세히</button>
         </div>
      </div>
      
      <div class="content" id="list_5" style="margin-left: 10%; padding: 20px; clear: left;">
         <div id="photo" style="float: left; width: 400px; height: 200px; background-color: red;"></div>
         <div id="info" style="float: left; height: 200px; background-color: orange">
            <div id="title" style="font: bold 30pt 나눔스퀘어;">
               서울중앙우체국
            </div>
            <div id="contents">
               서울의 중심부인 명동에 위치한 서울중앙우체국은 스카이홀의 해외 비즈니스 고객에 알맞은 동시통역뿐만 아니라, 다목적용으로 쓸 수 있는 편안하고 효율적인 회의장과 리셉션홀도 제공하고 있다.
            </div>
            <div id="tags">
            <p style="display: inline; height: 100%;">태그</p>
               <div style="display: inline;">
               <a href="#">#우체국</a>
               <a href="#">#우체국</a>
               <a href="#">#우체국</a>
               <a href="#">#우체국</a>
               <a href="#">#우체국</a>
               <a href="#">#우체국</a>
               </div>
            </div>
            <button id="button">자세히</button>
         </div>
      </div>
      
      <div style="clear: left; text-align: center;">
      페이지
      </div>
      
   </div>
   </section>
   <%@ include file="/views/main/footer.jsp"%>
</body>
</html>