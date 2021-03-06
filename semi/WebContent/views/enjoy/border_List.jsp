<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.enjoy.model.vo.*"
	import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="semi.login.model.vo.*" import="semi.concert.model.vo.*" import="semi.hotel.model.vo.*"	import="semi.dobo.model.vo.*"%>
<%
	SeoulUser user = (SeoulUser) session.getAttribute("user");
%>
<%	
	String option = "";
	if((String) request.getAttribute("option")!=null)
	{
		option = (String) request.getAttribute("option");
	}
	String type = (String) request.getAttribute("type");
	PageData pd = null;
	ArrayList<EnjoyListData> list = null;
	String pageNavi = null;
	if(!type.equals("type1"))
	{
	pd = (PageData) request.getAttribute("pageData");
	list = pd.getEnjoyList();
	pageNavi = pd.getPageNavi();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 서울즐기기 - 리스트</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<!-- 부트스트랩 CSS -->
<link rel="stylesheet" href="../../css/moreBtn.css">
<!-- <link rel="stylesheet" href="../../css/enjoySelect.css"> -->
<link rel="stylesheet" href="../../css/enjoy/pagination.css">
<!-- 페이징 CSS (부트스트랩) -->
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/main.js"></script>

<script>
if (self.name != 'reload') {
    self.name = 'reload';
    self.location.reload(true);
}
else self.name = '';
</script>

</head>

<style>
  #sort {
    border: 3px solid #D1D0ED;
    border-radius: 5px;
    font: 13px 나눔스퀘어;
    color: #707070;
    padding: 11px;
    line-height: normal;
  }
  option{
	font: 14px 나눔스퀘어;
	color: #707070;
  }
.photo {
	background-repeat: no-repeat;
	background-size: 100% 100%;
	z-index: 1;
	vertical-align: middle;
	position: relative;
	float: left;
}
#currentLocation{
	margin-top:0px!important;
	padding-top:25px!important;
}
.wrapper{
	width:1800px;
	margin:0 auto;
}
form{
	width:1800px;
	margin:0 auto;
}
.container{
	width:1800px;
	margin:0 auto;
}
.active{
	height:47px!important;
	line-height:47px!important;
}
.active>a{
	height:47px!important;
	line-height:47px!important;
}
</style>

<body>
	
				<header style="position:fixed;width:50px;border-right:1px solid #ddd;height:100%;">
				<div id="click">
					<a href="#" class="click"><img
						src="/image/main/menu.png" style="width:30px;margin-top:10px;margin-left:10px;background-color:white;z-index:999;"></a>
				</div>
				<div id="click-open" style="display:none;">
					<a href="http://localhost"><img
						src="/image/main/logo.png" id="main_logo" style="width:260px;margin-left:20px;margin-top:20px;"></a>
						
					<style>
					a{
						font-size:1rem!important;
					}
					#login_join{
						text-align:center;
						margin-top:20px;
						margin-bottom:20px;
					}
					.main-login{
						margin-right:20px;	
					}
					#login_join>a:hover{
						color:#b43029;
					}
					.category{
						cursor:pointer;
						width:100%;
						display:block;
						border-left:3px solid white;
						padding-left:17px;
					}
					.category:hover{
						border-left:3px solid #b43029;
					}
					.subcategory{
						display:none;
					}
					.subcategory>li{
						height:40px;
						line-height:40px;
					}
					.subcategory>li>a{
						display:block;
						width:100%;
						padding-left:40px;
					}
					.subcategory>li>a:hover{
						background-color:rgba(0,0,0,0.05);
					}
					a, ul>li{
						font-size:1rem!important;
					}
					
					</style>
						
					<% if(user==null){ %>
			        <div id="login_join">
			        	<a href="/views/main/login.jsp" class="main-login" style="font-size:1.5rem!important;">로그인</a>
			        	<a href="/views/main/joinus.jsp" style="font-size:1.5rem!important;">회원가입</a>
			        </div>    
			        <% } else { %>
			        <div id="login_join" class="login_after">	
					<% if(user.getUserId().equals("admin")){ %>
						<p style="margin-bottom:8px;font-size:1.5rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>로 로그인 하셨습니다</p>
					<% } else { %>
						<p style="margin-bottom:8px;margin-left:-20px;font-size:1.5rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>님 환영합니다</p>
						<a href="/myPage" style="margin-left:-19px;margin-right:15px;font-size:1.5rem!important;">마이페이지</a>
					<% } %>
					<a href="/logout" style="font-size:1.5rem!important;">로그아웃</a><br>
			        </div>
			        <% } %>	
			        
			        <style>
			        	#login_join>a:hover{
			        		text-decoration:none;
			        	}
			        	.mainCategory>li{
			        		font-size:1.7rem!important;
			        		margin-left:-40px;
			        		padding-top:20px;
			        		padding-bottom:20px;
			        	}
			        	.mainCategory>li>ul{
			        		list-style:none;
			        	}
			        	.mainCategory>li>ul>li{
			        		margin-left:-40px;
			        		padding-top:20px;
			        		padding-bottom:20px;
			        	}
			        	.mainCategory>li>ul>li>a{
			        		width:100%;
			        		display:block;
			        		font-size:1.7rem!important;
			        	}
			        	.mainCategory>li>ul>li>a:hover{
			        		text-decoration:none;
			        	}
			        </style>	        	
					<!-- common category -->
					<ul class="mainCategory" style="clear:both;list-style:none;">
						<li><span class="category category1">하이라이트</span>
							<ul class="subcategory subcategory1" style="display:block;">
								<li><a href="/views/placerank/place_Photo.jsp">Top 10</a></li>
								<li><a href="/views/festival/festivalPhoto.jsp">축제&amp;행사</a></li>
							</ul>
						</li>
						<li><span class="category category2">서울즐기기</span>
							<ul class="subcategory subcategory2">
								<li><a href="/enjoyList?type=type1">추천코스</a></li>
								<li><a href="/enjoyList?type=type2">명소</a></li>
								<li><a href="/enjoyList?type=type3">쇼핑</a></li>
				<li><a href="/hotelList">숙소</a></li>
					<li><a href="/enjoyList?type=type5">음식점</a></li>
					<li><a href="/enjoyCalendar">캘린더</a></li>
							</ul>
						</li>
						<li><span class="category category3">예약하기</span>
							<ul class="subcategory subcategory3">
								<li><a href="/concertList">공연예약</a></li>
								<li><a href="/hotelList">호텔예약</a></li>
								<li><a href="/doboList">서울도보관광예약</a></li>
							</ul>
						</li>
						<li><span class="category category4">여행준비</span>
							<ul class="subcategory subcategory4">
								<li><a href="/guideBookDown">가이드북</a></li>
								<li><a href="/views/travelReady/travelInformation.jsp">여행필수정보</a></li>
								<li><a href="/seoulImage">서울 관광 이미지</a></li>
								<li><a href="/faq">FAQ</a></li>
							</ul>
						</li>
					</ul>
		
					<script>
					$(".category1").click(function(){
						$(".subcategory1").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category2").click(function(){
						$(".subcategory2").toggle("slow");
						$(".subcategory1").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category3").click(function(){
						$(".subcategory3").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory1").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category4").click(function(){
						$(".subcategory4").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory1").css('display','none');
					});			
					</script>
				</div>

				
				</header>

	
	<section>

		<div class="wrapper">
		<!-- 모든걸 감싸는 DIV -->
		<div id="enjoyPage" style="width: 100%;">
		
		<!-- 헤더 DIV -->
		<div class="header" style="width: 100%;">
			<div id="currentLocation" style="color: #5F4B8B; font: 12pt 나눔스퀘어; margin-top: 25px; margin-left: 158px; ">현재 위치 : 서울즐기기 > 
			<% String CurrentType ="";
			switch(type){
			case "type1" : CurrentType = "추천코스"; break;  
			case "type2" : CurrentType = "명소"; break;
			case "type3" : CurrentType = "쇼핑"; break;
			case "type4" : CurrentType = "숙박"; break;
			case "type5" : CurrentType = "음식점"; break;
			case "type6" : CurrentType = "캘린더"; break;
			} %>
			<%=CurrentType %>
			</div>
			<div id="enjoyText" style="color: #5F4B8B; font: bold 33pt 나눔스퀘어; margin-top: 20px; margin-left: 158px; "><%=CurrentType %>
			<%if(option!=""){ %>
				<% String CurrentSort = ""; 
				switch(option){
				case "title" : CurrentSort="제목순"; break;
				case "dayOfIssue" : CurrentSort="최신순"; break;
				case "hits" : CurrentSort="조회수"; break;
				} %> 
				<span style="font: bold 25pt 나눔스퀘어;">: <%=CurrentSort %></span></div>
			<%}else{%>
				</div>
			<%} %> 
			<div style="width: 95%; height: 2px; background: linear-gradient(to right, #D1D0ED 55%, white); margin-top: 1%; margin-bottom: 2%; margin-left: 158px;"></div>
		</div>

			<!-- 정렬하기 DIV -->
			<div id="line" style="margin-left: 12%; ">

				<!-- 정렬 select 바꿀 때 마다 작동하는 스크립트 -->
				<script>
					function sort1(value) {	
						var type = "<%=type%>";
						location.href = "/enjoyList?sort="+value+"&type="+type;
					}
				</script>

				<!-- 정렬 select -->
	 			<%if(option.equals("title")){ %>
				<select name="option" id="sort" onchange="sort1(this.value);">
					<option value="">정렬하기</option>
					<option value="title" selected="selected">제목순</option>
					<option value="dayOfIssue">최신순</option>
					<option value="hits">조회수</option>
				</select>
				<%} else if(option.equals("dayOfIssue")){%>
				<select name="option" id="sort" onchange="sort1(this.value);">
					<option value="">정렬하기</option>
					<option value="title">제목순</option>
					<option value="dayOfIssue" selected="selected">최신순</option>
					<option value="hits">조회수</option>
				</select>
				<%} else if(option.equals("hits")){ %>
				<select name="option" id="sort" onchange="sort1(this.value);">
					<option value="">정렬하기</option>
					<option value="title">제목순</option>
					<option value="dayOfIssue">최신순</option>
					<option value="hits" selected="selected">조회수</option>
				</select>
				<%} else{ %>
				<select name="option" id="sort" onchange="sort1(this.value);">
					<option value="" selected="selected">정렬하기</option>
					<option value="title">제목순</option>
					<option value="dayOfIssue">최신순</option>
					<option value="hits">조회수</option>
				</select>
				<%} %>
				
			</div>
			
			<!-- 추천명소가 아닌 경우 -->
			<% if(!type.equals("type1")){ %>
			
			<!-- list 갯수만큼 for문 빙글빙글 -->
			<% for (EnjoyListData eld : list) { %>
			<form action="/enjoySelect?IndexNo=<%=eld.getIndex_TitleNo()%>&type=<%=type%>" method="post">
				
				<!-- list 간격 주려고? -->
				<div class="content" id="list_1" style="margin-left: 10%; margin-bottom: 11%; padding: 20px;">
					<%
						eld.getIndex_TitleNo();
						eld.getList_Element();
						StringTokenizer STImage = new StringTokenizer(eld.getIndex_Image(),"##");		
					%>
					
					<!-- LIST 사진 DIV -->
					<div class="photo" style="float:left; width: 400px; height: 200px; border-radius: 12px; background-image: url(<%=STImage.nextToken()%>);"></div>

					<!-- INFO BOX DIV -->
					<div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; border: 1px solid #9B95C9; border-width: 2px 20px 2px 2px; position: relative;">
						
						<!-- 게시물 제목/조회수 부분 큰 DIV -->
						<div id="titleAndHits">
						
							<!-- 게시물 제목 DIV -->
							<div id="title" style="font: bold 25pt 나눔스퀘어; margin: 10px;">
								<!-- word2 = 제목글자수 -->
								<% int word2 = eld.getIndex_Title().length();
								if(word2>15){ %>
								<!-- 제목이 20글자가 넘어갈 시 21번째 글자부터 생략 후 ..으로 표시 -->
								<%=eld.getIndex_Title().substring(0,15)%>..
								<%}else{ %>
								<%=eld.getIndex_Title()%><br>
								<%} %>
							</div>
							
							<div id="hits" style="position: relative; width: 100px; bottom: 55px; font: bold 10pt 나눔스퀘어; margin: 10px; left: 10px; float: right;">
								<img src="/image/enjoy/hitsEye.png" style="height: 23%; width: 23%;"> <%=eld.getIndex_Hits() %>
							</div>
							
						</div>
						
						<div id="contents" style="padding: 5px; margin: 10px; overflow:hidden; font: 11pt 나눔스퀘어;">
							<% int word1 = eld.getIndex_BasicInfo().length();
							if(word1>200){ 
							%>
							<%=eld.getIndex_BasicInfo().substring(0,200)%>.....
							<%}else{ %>
							<%=eld.getIndex_BasicInfo()%><br>
							<%} %>

						</div>
						<div id="tags" style="position: absolute; margin: 10px; left: 5px; bottom: 1px; overflow:hidden;">

							<div style="display: inline;">
								<%
									StringTokenizer Tag = new StringTokenizer(eld.getIndex_Tags(), "#");
									int su1 = Tag.countTokens();
										if(su1<4){
										for(int i=0;i<su1;i++) {
								%><a href="#" style="font: 11pt 나눔스퀘어;">#<%=Tag.nextToken()%></a>
								<%
										}}
										else{
											for(int i=0;i<4;i++){%>
												<a href="#" style="font: 11pt 나눔스퀘어;">#<%=Tag.nextToken()%></a>
											<%}
												
											
										}
										
								%>
							</div>
						</div>

						<button id="button" style="position:absolute; right:30px; bottom: 30px;">자세히</button>

					</div>
				</div>
				
			</form>

		
		<%
			}
		%>
		<div class="container" style="text-align: center ">
        <ul class="pagination pagination-lg">
		<%=pageNavi%>
		</ul>
		<%}else{
			PageDataRefer pd2 = (PageDataRefer) request.getAttribute("pageData2");
			ArrayList<EnjoyInforData> list2 = pd2.getEnjoyInforData();
			String pageNavi2 = pd2.getPageNavi();
			
		%>
		 
		 <!-- 추천명소 -->
		 <% for (EnjoyInforData EID : list2) { %>
			<form action="/enjoySelect?IndexNo=<%=EID.getIndex_TitleNo()%>&type=<%=type%>"
				method="post">
				
				<div class="content" id="list_1"
					style="margin-left: 10%; margin-bottom: 11%; padding: 20px;">
					<div class="photo" style="float:left;">
						<img src="<%=EID.getIndex_List_IntroImage()%>" style="width:400px; height: 200px; border-radius: 12px;">
						<!--url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18822&fileTy=MEDIA&fileNo=1&thumbTy=L);  -->
					</div>

					<div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; border: 1px solid #9B95C9; border-width: 2px 20px 2px 2px; position: relative;">
						
						<!-- 게시물 제목 DIV -->
						<div id="title" style="font: bold 25pt 나눔스퀘어; margin: 10px;">
							<!-- word2 = 제목글자수 -->
							<% int word2 = EID.getIndex_List_title().length();
							if(word2>16){ %>
							<%=EID.getIndex_List_title().substring(0,16)%>..
							<%}else{ %>
							<%=EID.getIndex_List_title()%><br>
							<%} %>
						</div>
						
						<!-- 조회수 부분 -->
						<div id="referHits" style="position: relative; width: 100px; bottom: 55px; font: bold 11pt 나눔스퀘어; margin: 10px; left: 10px; float: right;">
								<img src="/image/enjoy/hitsEye.png" style="height: 23%; width: 23%;"> <%=EID.getIndex_Hits()%>
						</div>

						<div id="contents" style="padding: 5px; margin: 10px; overflow:hidden; font: 11pt 나눔스퀘어;">
							<% int word1 = EID.getIndex_in_mainText().length();
							if(word1>200){ 
							%>
							<%=EID.getIndex_in_mainText().substring(0,200)%>.....
							<%}else{ %>
							<%=EID.getIndex_in_mainText()%><br>
							<%} %>

						</div>
						<div id="tags" style="position: absolute; margin: 10px; left: 5px; bottom: 1px; overflow:hidden;">


							<div style="display: inline;">
								<%
									StringTokenizer Tag = new StringTokenizer(EID.getIndex_List_Tags(), "#");
									int su1 = Tag.countTokens();
										if(su1<4){
										for(int i=0;i<su1;i++) {
								%><a href="#" style="font: 11pt 나눔스퀘어;">#<%=Tag.nextToken()%></a>
								<%
										}}
										else{
											for(int i=0;i<4;i++){%>
												<a href="#">#<%=Tag.nextToken()%></a>

											<%}
										}
								%>
							</div>
						</div>

						<button id="button" style="position:absolute; right:30px; bottom: 30px;">자세히</button>

					</div>
				</div>
				
			</form>
		</div>
		

		<%
			}
		%>
		<div class="wrapper">
		<div class="container" style="text-align: center;margin-bottom:30px;">
        <ul class="pagination pagination-lg">
		<%=pageNavi2%>
		</ul>
		
		<%} %>
		
		</div>
		</div>

		<%-- <jsp:useBean id="list" class="semi.enjoy.model.vo.EnjoyListData" scope="request">
	</jsp:useBean> --%>
	</div>	
	</section>
	
				<script>
					$('.click').click(function(){
						$('header').css('width','300px');
						$('#click').css('display','none');
						$('section').css('margin-left','301px');
						$('section').css('opacity','0.5');
						$('section').css('background-color','rgba(0,0,0,0.5)');
						$('#click-open').css('display','block');
					});
					$('section').click(function(){
						$('header').css('width','50px');
						$('#click').css('display','block');
						$('section').css('margin-left','51px');
						$('section').css('opacity','1');
						$('section').css('background-color','white');
						$('#click-open').css('display','none');
					});
				</script>
	
</body>
</html>
