<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.enjoy.model.vo.*"
	import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<!-- 부트스트랩 CSS -->
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/moreBtn.css">
<!-- <link rel="stylesheet" href="../../css/enjoySelect.css"> -->
<link rel="stylesheet" href="../../css/enjoy/pagination.css">
<!-- 페이징 CSS (부트스트랩) -->
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/main.js"></script>
</head>

<style>
.photo {
	background-repeat: no-repeat;
	background-size: 100% 100%;
	z-index: 1;
	vertical-align: middle;
	position: relative;
	float: left;
}
</style>

<body id="scroll">

	<%-- <%@ include file="/views/main/header.jsp"%> --%>
	
	<section>

		<!-- 모든걸 감싸는 DIV -->
		<div id="enjoyPage" style="width: 100%;">

			<!-- 정렬하기 DIV -->
			<div id="line" style="margin-left: 10%; padding: 20px;">

				<script>
					function sort1(value) {	
						var type = "<%=type%>";
						location.href = "/enjoyList?sort="+value+"&type="+type;
					}
				</script>
				
					
				
	 			<%if(option.equals("title")){ %>
				<select name="option" id="sort" onchange="sort1(this.value);">
					<option value="">정렬하기</option>
					<option value="title" selected="selected">제목</option>
					<option value="dayOfIssue">최신순</option>
				</select>
				<%} else if(option.equals("dayOfIssue")){%>
				<select name="option" id="sort" onchange="sort1(this.value);">
					<option value="">정렬하기</option>
					<option value="title">제목</option>
					<option value="dayOfIssue" selected="selected">최신순</option>
				</select>
				<%} else{ %>
				<select name="option" id="sort" onchange="sort1(this.value);">
					<option value="" selected="selected">정렬하기</option>
					<option value="title">제목</option>
					<option value="dayOfIssue">최신순</option>
				</select>
				<%} %>

				
			</div>
			
			<% if(!type.equals("type1")){ %>
			<% for (EnjoyListData eld : list) { %>
			<form action="/enjoySelect?IndexNo=<%=eld.getIndex_TitleNo()%>&type=<%=type%>" method="post">
				
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
						
						<!-- 게시물 제목 -->
						<div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
							<!-- word2 = 제목글자수 -->
							<% int word2 = eld.getIndex_Title().length();
							if(word2>20){ %>
							<!-- 제목이 20글자가 넘어갈 시 21번째 글자부터 생략 후 ..으로 표시 -->
							<%=eld.getIndex_Title().substring(0,20)%>..
							<%}else{ %>
							<%=eld.getIndex_Title()%><br>
							<%} %>
						</div>
						
						<div id="contents" style="padding: 5px; margin: 10px; overflow:hidden;">
							<% int word1 = eld.getIndex_BasicInfo().length();
							if(word1>400){ 
							%>
							<%=eld.getIndex_BasicInfo().substring(0,400)%>.....
							<%}else{ %>
							<%=eld.getIndex_BasicInfo()%><br>
							<%} %>

						</div>
						<div id="tags"
							style="position: absolute; margin: 10px; left: 5px; bottom: 1px; overflow:hidden;">


							<div style="display: inline;">
								<%
									StringTokenizer Tag = new StringTokenizer(eld.getIndex_Tags(), "#");
									int su1 = Tag.countTokens();
										if(su1<6){
										for(int i=0;i<su1;i++) {
								%><a href="#">#<%=Tag.nextToken()%></a>
								<%
										}}
										else{
											for(int i=0;i<6;i++){%>
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
		<div class="container" style="text-align: center ">
        <ul class="pagination pagination-lg">
		<%=pageNavi%>
		</ul>
		<%}else{
			PageDataRefer pd2 = (PageDataRefer) request.getAttribute("pageData2");
			ArrayList<EnjoyInforData> list2 = pd2.getEnjoyInforData();
			String pageNavi2 = pd2.getPageNavi();
			
		%>
		 
		 <%
				for (EnjoyInforData EID : list2) {
			%>
			<form action="/enjoySelect?IndexNo=<%=EID.getIndex_TitleNo()%>&type=<%=type%>"
				method="post">
				
				<div class="content" id="list_1"
					style="margin-left: 10%; margin-bottom: 11%; padding: 20px;">
					<div class="photo"
						style="float:left; width: 400px; height: 200px; border-radius: 12px;">
						<img src="<%=EID.getIndex_List_IntroImage()%>" style="width:400px;">
						<!--url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18822&fileTy=MEDIA&fileNo=1&thumbTy=L);  -->
					</div>

					<div id="info"
						style="float: left; width: 800px; height: 200px; margin-left: 20px; border: 1px solid #9B95C9; border-width: 2px 20px 2px 2px; position: relative;">
						<div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
							<% int word2 = EID.getIndex_List_title().length();
							if(word2>20){ 
							%>
							<%=EID.getIndex_List_title().substring(0,20)%>..
							<%}else{ %>
							<%=EID.getIndex_List_title()%><br>
							<%} %>
						</div>
						<div id="contents" style="padding: 5px; margin: 10px; overflow:hidden;">
							<% int word1 = EID.getIndex_in_mainText().length();
							if(word1>400){ 
							%>
							<%=EID.getIndex_in_mainText().substring(0,400)%>.....
							<%}else{ %>
							<%=EID.getIndex_in_mainText()%><br>
							<%} %>

						</div>
						<div id="tags"
							style="position: absolute; margin: 10px; left: 5px; bottom: 1px; overflow:hidden;">


							<div style="display: inline;">
								<%
									StringTokenizer Tag = new StringTokenizer(EID.getIndex_List_Tags(), "#");
									int su1 = Tag.countTokens();
										if(su1<6){
										for(int i=0;i<su1;i++) {
								%><a href="#">#<%=Tag.nextToken()%></a>
								<%
										}}
										else{
											for(int i=0;i<6;i++){%>
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
		<div class="container" style="text-align: center ">
        <ul class="pagination pagination-lg">
		<%=pageNavi2%>
		</ul>
		
		<%} %>
		
		</div>
	

		<%-- <jsp:useBean id="list" class="semi.enjoy.model.vo.EnjoyListData" scope="request">
	</jsp:useBean> --%>
	</section>
	<%@ include file="/views/main/footer.jsp"%>

</body>
</html>
