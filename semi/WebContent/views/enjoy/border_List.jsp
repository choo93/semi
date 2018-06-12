<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.enjoy.model.vo.*"
	import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	
	PageData pd = (PageData)request.getAttribute("pageData");
	ArrayList<EnjoyListData> list = pd.getEnjoyList();
	String pageNavi = pd.getPageNavi();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/main.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>

		<!-- 내용물 -->
		<div id="enjoyPage" style="height: 2000px;">

			<div id="line" style="background-color: pink; margin-left: 10%;">
				<select name="list">
					<option value="">정렬하기</option>
					<option value="title">제목</option>
					<option value="dayOfIssue">발행일</option>
				</select>
			</div>

			<%
				for (EnjoyListData eld : list) {
			%>
			<form action="/enjoySelect?IndexNo=<%=eld.getIndex_TitleNo()%>" method="post">
			<div class="content" id="list_1"
				style="margin-left: 10%; padding: 20px;">
				<%
					eld.getIndex_TitleNo();
				%>
				<%
					eld.getList_Element();
				%>
				<div id="photo"
					style="float: left; width: 400px; height: 200px; background-image:"<%eld.getIndex_Image();%>">
					<!--url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18822&fileTy=MEDIA&fileNo=1&thumbTy=L);  -->
				</div>
		
				<div id="info"
					style="float: left; height: 200px; background-color: orange">
					<div id="title" style="font: bold 30pt 나눔스퀘어;">
						<%=eld.getIndex_Title()%>
					</div>
					<div id="contents">
						<%=eld.getIndex_BasicInfo()%>
					</div>
					<div id="tags">
						<p style="display: inline; height: 100%;">태그</p>
						<div style="display: inline;">
							<%=eld.getIndex_Tags()%>
						</div>
					</div>
					<br> 작성일 :
					<%=eld.getIndex_Ondate()%>
					<br>
					<input type="submit" value="자세히">
					
				</div>
			</div>
			</form>
			<%
				}
			%>
	</div>
	<label><%=pageNavi%></label><br>

			<%-- <jsp:useBean id="list" class="semi.enjoy.model.vo.EnjoyListData" scope="request">
	</jsp:useBean> --%>
	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>
