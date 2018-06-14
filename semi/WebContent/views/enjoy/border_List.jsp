<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.enjoy.model.vo.*"
	import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	PageData pd = (PageData) request.getAttribute("pageData");
	ArrayList<EnjoyListData> list = pd.getEnjoyList();
	String pageNavi = pd.getPageNavi();
	String type = (String) request.getAttribute("type");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/moreBtn.css">
<link rel="stylesheet" href="../../css/enjoySelect.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
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
	<%@ include file="/views/main/header.jsp"%>
	<section>

		<!-- 내용물 -->
		<div id="enjoyPage" style="width: 100%; height: 100%;">

			<div id="line" style="margin-left: 10%; padding: 20px;">

				<select name="option" id="sort" onchange="sort1(this.value);">
					<option value="">정렬하기</option>
					<option value="title">제목</option>
					<option value="dayOfIssue">최신순</option>
				</select>

				<script>
					function sort1(value) {
						var sort = new Array();
						sort[0] =  type;
						sort[1] =  value;
						location.href = "/enjoyList?sort=" + sort;
					}
				</script>


			</div>
			<%
				for (EnjoyListData eld : list) {
			%>
			<form action="/enjoySelect?IndexNo=<%=eld.getIndex_TitleNo()%>"
				method="post">

				<div class="content" id="list_1"
					style="margin-left: 10%; margin-bottom: 11%; padding: 20px;">
					<%
						eld.getIndex_TitleNo();
							eld.getList_Element();
					%>
					<div class="photo"
						style="float:left; width: 400px; height: 200px; border-radius: 12px; background-image: url(<%=eld.getIndex_Image()%>);">
						<!--url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18822&fileTy=MEDIA&fileNo=1&thumbTy=L);  -->
					</div>

					<div id="info"
						style="float: left; width: 800px; height: 200px; margin-left: 20px; border: 1px solid #9B95C9; border-width: 2px 20px 2px 2px; position: relative;">
						<div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
							<%=eld.getIndex_Title()%>
						</div>
						<div id="contents" style="padding: 5px; margin: 10px;">
							<%=eld.getIndex_BasicInfo()%><br>

						</div>
						<div id="tags"
							style="position: absolute; margin: 10px; left: 5px; bottom: 5px;">


							<div style="display: inline;">
								<%
									StringTokenizer Tag = new StringTokenizer(eld.getIndex_Tags(), "#");
										while (Tag.hasMoreTokens()) {
								%><a href="#">#<%=Tag.nextToken()%></a>
								<%
									}
								%>
							</div>
						</div>

						<button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>

					</div>
				</div>
			</form>
		</div>

		<%
			}
		%>

		<label><%=pageNavi%></label><br>

		<%-- <jsp:useBean id="list" class="semi.enjoy.model.vo.EnjoyListData" scope="request">
	</jsp:useBean> --%>
	</section>
	<%@ include file="/views/main/footer.jsp"%>

</body>
</html>
