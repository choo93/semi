<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="semi.place.model.vo.*" import="java.util.*"%>
<%
	PlaceRank pr = (PlaceRank) request.getAttribute("place");
	ArrayList<PlaceRankComment> list = (ArrayList<PlaceRankComment>) request.getAttribute("comment");
%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="../../css/main.css"> -->
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script>
	// 이거는 자바 스크립트 선언에서 가져오는 듯
	function initMap() {
		var uluru = {
			lat :
<%=pr.getPlaceLatitude()%>
	,
			lng :
<%=pr.getPlaceLongtitude()%>
	};
		var map = new google.maps.Map(document.getElementById('mapContent'), {
			zoom : 18,
			center : uluru
		});
		var marker = new google.maps.Marker({
			position : uluru,
			map : map
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


<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGT4VwYUrA0PeXg-MIt2MvQBGEyDLBQ4Y&callback=initMap"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
		<div class="container">
			<div class="panel panel-danger">
				<div class="containner-fluid panel-heading"
					style="height: 50px; text-align: center;">
					<H2 class="panel-title"><%=pr.getPlaceTitle()%></H2>
				</div>
				<br>
				<div class="container-fluid" style="height: 500px;">
					<img src="<%=pr.getPlaceMainImg()%>" alt=""
						style="width: 100%; height: 100%;">
				</div>
				<hr>
				<div class="container-fluid" style="height: 50%;">
					<br>
					<div class="panel-body">
						<div class="row">
							<%=pr.getPlaceDetailInfo()%>
						</div>
						<hr>
						<div class="row">
							<div class="tags">
								<p class="ptags">태그</p>
								<div style="display: inline;">
									<%
										StringTokenizer sT = new StringTokenizer(pr.getPlaceTag(), "#");
									%>
									<%
										int su1 = sT.countTokens();
									%>
									<%
										if (su1 < 6) {
									%>
									<%
										for (int i = 0; i < su1; i++) {
									%>
									<a href="#">#<%=sT.nextToken()%></a>
									<%
										}
									%>
									<%
										} else {
									%>
									<%
										for (int i = 0; i < 6; i++) {
									%>
									<a href="#">#<%=sT.nextToken()%></a>
									<%
										}
										}
									%>
								</div>
							</div>
						</div>
						<hr>
					</div>
				</div>
			</div>
			<%if(pr.getPlaceLatitude()!=0&&pr.getPlaceLongtitude()!=0){ %>
			<div class="container">
				<div class="panel panel-danger">
					<div class="containner-fluid panel-heading">
						<h2 class="panel-title">지도</h2>
					</div>

					<div class="panel-body">
						<div id="mapContent" style="width: 635px; height: 300px;"></div>
					</div>
				</div>
			</div>
			<%}%>
			<div class="container">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h2 class="panel-title">댓글</h2>
					</div>
					<div class="panel-body" class="form-horizontal">
						<form action="/PlaceComment">
							<div class="row form-group">
								<label class="col-sm-1 control-label" style="padding-top: 7px;">아이디</label>
								<input type="hidden" class="form-control" value="아이디"
									name="userId" /> <input type="hidden" class="form-control"
									value="<%=pr.getPlaceTitle()%>" name="title" /> <input
									type="hidden" class="form-control" value="<%=pr.getTitleNo()%>"
									name="titleNo" />
								<div class="col-xs-9 col-xs-offset-1">
									<input type="text" class="form-control" placeholder="댓글내용"
										name="comment" />
								</div>
								<div class="col-xs-1">
									<button type="submit" class="btn btn-default"
										style="font-size: 14px; font; font-weight: bold;">전송</button>
								</div>
							</div>
						</form>
						<div class="container-fulid">
							<div class="row">
								<table class="table">
									<tr>
										<th>아이디</th>
										<th>내용</th>
										<th>작성일</th>
									</tr>

									<%
										for (PlaceRankComment prc : list) {
									%>
									<tr>
										<td><%=prc.getUserId()%></td>
										<td><%=prc.getUserComment()%><a href="/commentDelete"><span
												class="glyphicon glyphicon-trash pull-right"></span></a></td>
										<td><%=prc.getWriteDate()%></td>
									</tr>
									<%
										}
									%>

								</table>
							</div>
						</div>
					</div>
				</div>
				<br>
			</div>

		</div>
	</section>
	<br>
	<%@ include file="/views/main/footer.jsp"%>
</body>

</html>