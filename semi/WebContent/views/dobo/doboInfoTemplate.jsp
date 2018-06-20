<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="semi.dobo.model.vo.*"	import="semi.enjoy.model.vo.*"
    import="java.util.*"
%>
<%
	DoboInfo di = (DoboInfo)request.getAttribute("doboInfo");
	CommentData cd = (CommentData)request.getAttribute("commentData");
	ArrayList<EnjoyComment> commentList = new ArrayList<EnjoyComment>();
	String navi="";
	if(cd!=null){
		commentList = cd.getCommentList();
		navi = cd.getPageNavi();
	}
%>    
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/dobo/doboInfo.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script src="/js/dobo/doboInfo.js"></script>
</head>
<body id="scroll">
	<jsp:include page="/views/main/header.jsp" />
	<section>

		<div id="wrap">
			<div id="contents">
				<div id="contentTitle">${requestScope.doboInfo.doboTitle }</div>
				<div id="contentTop">
					<div id="contentTop1">
						<p>${requestScope.doboCourse }</p>
						<div id="summary">${requestScope.doboInfo.doboSummary }</div>
						<div id="mainInfo">
							<div>
								<img id="photo" src=${requestScope.doboInfo.doboMainPhoto } alt="도보관광메인사진">
							</div>
							<div>${requestScope.doboInfo.doboMainExplain }</div>
						</div>
						<div id="reserve">
							<button onclick="reserve(${requestScope.doboInfo.doboCode});">예약하기!</button>
						</div>
					</div>
					<div id="contentTop2">
						<p>도보코스 안내</p>
						<div id="courseInfo">
							<p>도보코스</p>
							<div>${requestScope.doboInfo.doboCourse }</div>
							<p>소요시간</p>
							<div>${requestScope.doboInfo.doboTime }</div>
							<p>만남 장소</p>
							<div>${requestScope.doboInfo.doboMeet }</div>
						</div>
						<p>※ 도보관광코스에 포함되어 있지 않는 체험프로그램은 관광 종료 후, 개별적으로 체험 해주시기 바랍니다.</p>
					</div>
				</div>
				<div id="contentBottom">
					<div id="subInfo">
						<p>코스 내 주요 관광 명소</p>
						<div>
							<p>${requestScope.doboInfo.doboSubTitle1 }</p>
							<div>
								<div>
									<img src=${requestScope.doboInfo.doboSubPhoto1 } alt="사진1">
								</div>
								<div>${requestScope.doboInfo.doboSubExplain1 }</div>
							</div>
						</div>
						<%if(di.getDoboSubTitle2()!=null){ %>
						<div>
							<p>${requestScope.doboInfo.doboSubTitle2 }</p>
							<div>
								<div>
									<img src=${requestScope.doboInfo.doboSubPhoto2 } alt="사진2">
								</div>
								<div>${requestScope.doboInfo.doboSubExplain2 }</div>
							</div>
						</div>
						<%} %>
						<%if(di.getDoboSubTitle3()!=null){ %>
						<div>
							<p>${requestScope.doboInfo.doboSubTitle3 }</p>
							<div>
								<div>
									<img src=${requestScope.doboInfo.doboSubPhoto3 } alt="사진3">
								</div>
								<div>${requestScope.doboInfo.doboSubExplain3 }</div>
							</div>
						</div>
						<%} %>
						<%if(di.getDoboSubTitle4()!=null){ %>
						<div>
							<p>${requestScope.doboInfo.doboSubTitle4 }</p>
							<div>
								<div>
									<img src=${requestScope.doboInfo.doboSubPhoto4 } alt="사진4">
								</div>
								<div>${requestScope.doboInfo.doboSubExplain4 }</div>
							</div>
						</div>
						<%} %>
						
					</div>
					<div id="additional">
					
						
						<%
						if(((DoboInfo)request.getAttribute("doboInfo")).getDoboAdditionType()!=null){
						
						if(((DoboInfo)request.getAttribute("doboInfo")).getDoboAdditionType().equals("video")){ %>
							<iframe allowfullscreen="" frameborder="0" height="315" src="${requestScope.doboInfo.doboAddition }" width="560"></iframe>
						<%}else if(((DoboInfo)request.getAttribute("doboInfo")).getDoboAdditionType().equals("map")){ %>
							<img src=${requestScope.doboInfo.doboAddition }>
						<%}
						}%>
						
					</div>
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
                	<input type="hidden" value="dobo" name="type">
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
			<div id="back"><button onclick="back();">목록으로</button></div>
		</div>

	</section>
	<jsp:include page="/views/main/footer.jsp" />
</body>
</html>