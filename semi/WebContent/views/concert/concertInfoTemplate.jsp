<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="semi.login.model.vo.*"	import="semi.enjoy.model.vo.*"	import="semi.concert.model.vo.*"
    import="java.util.*"
    %>
<% String reserve = (String)request.getAttribute("reserve"); 
	CommentData cd = (CommentData)request.getAttribute("commentData");
	ArrayList<EnjoyComment> commentList = new ArrayList<EnjoyComment>();
	String navi="";
	if(cd!=null){
		commentList = cd.getCommentList();
		navi = cd.getPageNavi();
	}
	ConcertInfo ci = (ConcertInfo)request.getAttribute("concertInfo");
%>    
<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="/css/concert/concertInfo.css">
	
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>
	<script src="/js/concert/concertInfo.js"></script>
	
	<script>
        // 이거는 자바 스크립트 선언에서 가져오는 듯
        function initMap() {
        	var uluru = {
                    lat: ${requestScope.concertInfo.concertLatitude}, 
                    lng: ${requestScope.concertInfo.concertLongtitude}
                };
                var map = new google.maps.Map(document.getElementById('mapContent'), {
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
	
	
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGT4VwYUrA0PeXg-MIt2MvQBGEyDLBQ4Y&callback=initMap">
    </script>
</head>
<body id="scroll">
	<%-- <jsp:include page="/views/main/header.jsp" /> --%>
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
                            <dd>${requestScope.concertInfo.concertShowTime }</dd>
                            <hr>
                            <dt>가격</dt>
                            <dd>${requestScope.concertInfo.concertPrice }</dd>
                        </dl>
                    </div>
                </div>
                <div id="reserve">
                    <div>
						예약 가능 일자
                    </div>
                    <div id="reserveDate">
                        ${requestScope.concertInfo.concertDate }
                    </div>
                    <div id="reserveBtn">
                    	<%
                    	if(session.getAttribute("user")!=null){ %>                    
                        	<button onclick="reserve(${requestScope.concertInfo.indexNo },${requestScope.concertInfo.concertCode }, '${requestScope.concertInfo.concertPrice }');">예약하기</button>
                        <%}else{ %>
                        	<button onclick="nologin();">예약하기</button>
                        <%} %>
                    </div>
                </div>
            </div>
            <div id="contentBottom">
            	<div>
                	<div id="basicInfo">기본 정보
                		<div id="toggleBtn1">▼</div>
                	</div>
                	<div id="basicInfoContent">
                		<%if(ci.getConcertExplain()!=null){ %>
                			<pre>${requestScope.concertInfo.concertExplain }</pre>
                		<%
                		}
                		if(ci.getConcertPhone()!=null){ %>
                		<div id="phone">
                			<div>전화번호</div>
                			<div>${requestScope.concertInfo.concertPhone }</div>
                		</div>
                		<%}
                		if(ci.getConcertSite()!=null){
                		%>
                		<div id="site">
                			<div>웹사이트</div>
                			<div>${requestScope.concertInfo.concertSite }</div>
                		</div>
                		<%}
                		if(ci.getConcertTraffic()!=null){
                		%>
                		<div id="traffic">
                			<div>교통안내</div>
                			<pre>${requestScope.concertInfo.concertTraffic}</pre>
                		</div>
                		<%} %>
                	</div>
                </div>
                <div>
                	<div id="map">지도
                		<div id="toggleBtn2">▼</div>
                	</div>
                	<div id="mapContent" style="width:635px; height:300px;">
                		
                	</div>
                </div>
                
                <div>
                <form action="/commentAdd" method="get">
                	<div id="commentt">댓글</div>
                	<input type="hidden" value="ds" name="Index_Title">
                	<div id="comment">
                		<%if(session.getAttribute("user")!=null){ %>
                			<textarea name="User_Comment"></textarea>
                    		<input type="submit" value="작성">
                		<%}else{ %>
                			<textarea readonly placeholder="로그인 후 작성이 가능 합니다"></textarea>
                			<input type="button" value="작성">
                		<%} %>
                	</div>
                	<input type="hidden" value="<%= request.getParameter("indexNo") %>" name="index_titleNo">
                	<input type="hidden" value="concert" name="type">
                	</form>
                	<div id="commentList">
                		<%
                		if(commentList.size()>0){ 
                			for(EnjoyComment comment: commentList){
                		%>
                		
						<div>
							<div id="commentTitle">
								<div><%=comment.getUSER_ID() %></div>
								<div><%=comment.getWrite_Date() %></div>
							</div>
							<div id="commentContent"><pre><%=comment.getUSER_COMMNET() %></pre></div>
						</div>
						
						<%
                			}%>
                			<label id="navi"><%= navi%></label>
                		<%
						}else{ %>
							<div id="noComment">등록된 댓글이 없습니다.</div>
						<%} %>
					</div>
                </div>
					
				
				</div>
        </div>
        <div id="back"><button onclick="back();">목록으로</button></div>
    </div>
	</section>
	<jsp:include page="/views/main/footer.jsp" />
</body>
</html>