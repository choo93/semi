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
	<link rel="icon" href="image/main/favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${requestScope.concertInfo.concertTitle }</title>
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="/css/concert/concertInfo.css">
	
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>
	<script src="/js/concert/concertInfo.js?ver=1"></script>
	
	<script>
        // 이거는 자바 스크립트 선언에서 가져오는 듯
        function initMap() {
        	var uluru = {
                    lat: ${requestScope.concertInfo.concertLatitude-0.00022}, 
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
                            <dd>${requestScope.concertInfo.concertShowTime }</dd>
                            <hr>
                            <dt>가격</dt>
                            <dd id="pp"><%= Integer.parseInt(ci.getConcertPrice())/1000 %>,<%= (Integer.parseInt(ci.getConcertPrice())/100)%10 %>00</dd>
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
                			<textarea id="userComment" name="User_Comment"></textarea>
                    		<input type="submit" value="작성" onclick="return commentCheck();">
                		<%}else{ %>
                			<textarea readonly placeholder="로그인 후 작성이 가능 합니다" onclick="login();"></textarea>
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
    <script>
    	
    	function pp(currentPage,indexNo){
    		$.ajax({
				url : "/commentTest?currentPage="+currentPage+"&indexNo=" + indexNo,
				type : "get",
				success : function(data){
					
					 $('#commentList').html("");
					/* 
					다른 방법
					for(var i=0;i<data.size;i++){
						var commentDiv = $("<div>");	// 제일 큰거
						var titleDiv = $("<div>");
						
						if(i==0){
							var idDiv = $("<div>").html(data.userId0);
							var dateDiv = $("<div>").html(data.date0);
							var pre = $("<pre>").html(data.content0);
						}else if(i==1){
							var idDiv = $("<div>").html(data.userId1);
							var dateDiv = $("<div>").html(data.date1);
							var pre = $("<pre>").html(data.content1);
						}else if(i==2){
							var idDiv = $("<div>").html(data.userId2);
							var dateDiv = $("<div>").html(data.date2);
							var pre = $("<pre>").html(data.content2);
						}else if(i==3){
							var idDiv = $("<div>").html(data.userId3);
							var dateDiv = $("<div>").html(data.date3);
							var pre = $("<pre>").html(data.content3);
						}else if(i==4){
							var idDiv = $("<div>").html(data.userId4);
							var dateDiv = $("<div>").html(data.date4);
							var pre = $("<pre>").html(data.content4);
						}
						
						var contentDiv = $("<div>");
						
						
						titleDiv.attr("id","commentTitle");
						contentDiv.attr("id","commentContent");
						
						titleDiv.append(idDiv);
						titleDiv.append(dateDiv);
						
						contentDiv.append(pre);

						commentDiv.append(titleDiv);
						commentDiv.append(contentDiv);
						
						$('#commentList').append(commentDiv);
					}
					var navi = $("<label>").html(data.pageNavi);
					
					navi.attr("id","navi");
					
					$('#commentList').append(navi);
					 */
					 
					 
					 for(var i=0;i<data.length;i++){
							var commentDiv = $("<div>");	// 제일 큰거
							var titleDiv = $("<div>");
							
							var idDiv = $("<div>").html(data[i].userId);
							var dateDiv = $("<div>").html(data[i].date);
							var pre = $("<pre>").html(data[i].content);
							
							var contentDiv = $("<div>");
							
							titleDiv.attr("id","commentTitle");
							contentDiv.attr("id","commentContent");
							
							titleDiv.append(idDiv);
							titleDiv.append(dateDiv);
							
							contentDiv.append(pre);

							commentDiv.append(titleDiv);
							commentDiv.append(contentDiv);
							
							$('#commentList').append(commentDiv);
						}
						var navi = $("<label>").html(data[0].navi);
						
						navi.attr("id","navi");
						
						$('#commentList').append(navi);
					
					
					
					
					
					
				},
				error : function(){
					alert('실패');
				}
			});
    	};
    
    </script>
    
    
    
	</section>
	<jsp:include page="/views/main/footer.jsp" />
</body>
</html>