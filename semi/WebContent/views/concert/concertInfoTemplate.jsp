<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="/css/concertInfo.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>
</head>
<body id="scroll">
	<jsp:include page="/views/main/header.jsp" />
	<section>
		<div id="wrap">
        <div id="contents">
            <div id="contentTitle">
				${requestScope.concertInfo.concertTitle }
            </div>
            <div id="contentTop">
                <div id="info">
                    <div id="poster">
                        <img src=${requestScope.concertInfo.concertPhoto } alt="공연 포스터">
                    </div>
                    <div id="reserveInfo">
                        <dl>
                            <dt>장르</dt>
                            <dd>${requestScope.concertInfo.concertGanre }</dd>
                            <dt>일시</dt>
                            <dd>${requestScope.concertInfo.concertDate }</dd>
                            <dt>장소</dt>
                            <dd>${requestScope.concertInfo.concertAddress }</dd>
                            <hr>
                            <dt>연령대</dt>
                            <dd>${requestScope.concertInfo.concertAge }</dd>
                            <dt>상영시간</dt>
                            <dd></dd>
                            <hr>
                            <dt>가격</dt>
                            <dd>${requestScope.concertInfo.concertPrice }</dd>
                        </dl>
                    </div>
                </div>
                <div id="reserve">
                    
                </div>
            </div>
            <div id="contentBottom">
            	<div>
                	<div id="basicInfo">기본 정보
                		<div>▼</div>
                	</div>
                </div>
                <div>
                	<div id="map">지도 & 교통편
                		<div>▼</div>
                	</div>
                </div>
                <div>
                	<div id="comment">
                		<textarea>
                    	</textarea>
                    	<input type="submit" value="작성">
                	</div>
                </div>
            </div>
        </div>
    </div>
	</section>
	<jsp:include page="/views/main/footer.jsp" />
</body>
</html>