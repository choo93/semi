<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="semi.place.model.vo.*" import="java.util.*"%>
<%
	PlacePageData pd = (PlacePageData) request.getAttribute("pageData");
	ArrayList<PlaceRank> list = pd.getPlaceList();
	String pageNavi = pd.getPageNavi();
	String title = null;
	switch(list.get(0).getPlaceType())
	{
	case 1: title = "관광명소 Top10"; break;
	case 2: title = "나이트라이프 Top10"; break;
	case 3: title = "전통 Top10"; break;
	case 4: title = "쇼핑 Top10"; break;
	case 5: title = "서울의 불빛 Top10"; break;
	case 6: title = "가족여행 Top10"; break;
	}

%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>명소 리스트</title>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<!-- 부트스트랩 CSS -->
<link rel="stylesheet" href="../../css/festival/moreBtn.css">

<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/main.js"></script>
<script> 	
	function send(index) {
		location.href = "/placeSelect?titleNo="+index;
	};
</script>
</head>

<style>
.photo {
	background-repeat: no-repeat;
	background-size: 100% 100%;
	height: 200px;
	border-radius: 12px;
}

.info {
	width: 800px;
	height: 200px;
	margin-left: 20px;
	border: 1px solid #3071a9;
	border-width: 2px 20px 2px 2px;
}

.title {
	font: bold 20pt 나눔스퀘어;
	margin-top: 10px;
	margin-left: 10px;
}

.content {
	padding: 20px;
	clear: left;
}

.contents {
	padding: 5px;
	margin-top: 10px;
	margin-left: 10px;
}

.tags {
	padding: 5px;
	margin-top: 10px;
	margin-left: 10px;
	display: inline-block;
}

.ptags {
	display: inline;
}

#button {
	margin-top: 20px;
}

hr {
	margin-top: 10px;
	margin-bottom: 10px;
}
.font {
			color: #3071a9;
			text-shadow: 1px -1px 1px black, -1px 2px 2px white;
			height: 60px;
			margin-bottom: 10px;
			font: italic bold 3.3rem "나눔스퀘어";
			overflow: hidden;
			text-overflow: ellipsis;
		}

</style>

<body id="scroll">
<%-- 	<%@ include file="/views/main/header.jsp"%> --%>
	<section>
		<div id="head" class="container-fulid">
                <h1 class="font" style="text-align: center;"><%=title %></h1>
        </div>
        <hr>

		<!-- 내용물 -->
		<div class="container list">
			<!-- 첫번째 컨텐츠 -->
			<%for (PlaceRank pr : list) {%>
			<div class="row">
					<div class="col-xs-12 content" id="list">
						<!-- 첫번째 내용 -->
						<div class="row">
							<!-- 첫번째 사진 -->
							<div class="col-xs-3 photo"	style="background-image:url(<%=pr.getPlaceMainImg()%>)"></div>
							<div class="col-xs-6 col-xs-offset-3 info">
								<!-- 첫번째 컨텐츠 제목 -->
								<div class="title">
									<%=pr.getPlaceTitle()%>
								</div>
								<hr>
								<!-- 첫번째 컨텐츠 설명 -->
								<div class="contents">
								 <%int contentsu=pr.getPlaceBasicInfo().length();%>
                                        <%if(contentsu>100) {%>
                                            <%=pr.getPlaceBasicInfo().substring(0,100)%>.....
                                            
                                        <%}else{%>
                                            <%=pr.getPlaceBasicInfo()%>
                                        <%}%>
								</div>
								<!-- 첫번째 컨텐츠 태그 -->
								<%if(pr.getPlaceTag()!=null){ %>
								<div class="tags">
									<p class="ptags">태그</p>
									<div style="display: inline;">
										<%StringTokenizer sT = new StringTokenizer(pr.getPlaceTag(), "#");%>
                                        <%int su1 = sT.countTokens();%>
                                        <%if(su1<6){ %>                                
                                            <%for(int i=0;i<su1;i++){ %>
                                             <a href="#">#<%=sT.nextToken() %></a>
                                         	<%}%>
                                        <%}else{%>
                                        <%for(int i=0;i<6;i++){%>
                                        <a href="#">#<%=sT.nextToken() %></a>
										<%}
                                        }%>     
									</div>
								</div>
								<%} %>
								 <button class="btn pull-right" id="button" onclick="send(<%=pr.getTitleNo()%>);">자세히</button>
							</div>
						</div>
					</div>
				</div>
<%}%>

		</div>


	</section>
</body>

</html>