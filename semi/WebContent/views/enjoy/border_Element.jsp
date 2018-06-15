<%@page import="java.util.StringTokenizer"%>
<%@page import="semi.enjoy.model.vo.EnjoyDetailData1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="semi.enjoy.model.vo.EnjoyListData"
	import="semi.enjoy.model.vo.EnjoyDetailData1"
	import="semi.enjoy.model.vo.EnjoyElementData"
	import="semi.enjoy.model.vo.EnjoyComment"
	import="semi.enjoy.model.vo.CommentData" import="java.util.*"%>
<%
	EnjoyElementData EED = (EnjoyElementData) request.getAttribute("EED");
	EnjoyListData ELD = EED.getELD();
	EnjoyDetailData1 edd1 = EED.getEdd1();

	CommentData cd = null;
	ArrayList<EnjoyComment> CommentList = null;
	String pageNavi = null;
	if (EED.getCd() != null) {
		cd = EED.getCd();
		CommentList = cd.getCommentList();
		pageNavi = cd.getPageNavi();
	} else {
		CommentList = new ArrayList<EnjoyComment>();

	}
%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/enjoy/ReviewBox.css">
<link rel="stylesheet" href="../../css/enjoy/reviewInput.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script src="../../js/bootstrap.js"></script>
<script src="../../js/bordertoogle.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>

		<div style="width: 100%; height: 2000px;">
			<div style="width: 100%; height: 100%;">
				<!--▼ 메인이미지 -->
				<div
					style="width: 100%; height: 20%; margin-bottom: 5%; position: relative;">
					<div
						style="width: 5%; height: 100%; background-color: rgb(155, 155, 155); float: left;">
						<a class="w3-btn-floating"
							style="line-height: 300px; margin-left: 50%;"
							onclick="plusDivs(-1)"> < </a>
					</div>
					<div style="width: 90%; height: 100%; float: left;">
						<img class="mySlides" src="/image/bg1.jpg" height="100%"
							width="100%">
						<%-- <% ELD.getIndex_Image(); %> --%>
						<img class="mySlides" src="/image/bg2.jpg" height="100%"
							width="100%"> <img class="mySlides" src="/image/bg3.jpg"
							height="100%" width="100%"> <img class="mySlides"
							src="/image/menu.png" height="100%" width="100%">
					</div>
					<div
						style="width: 5%; height: 100%; background-color: rgb(155, 155, 155); float: left;">
						<a class="w3-btn-floating"
							style="line-height: 300px; margin-left: 50%;"
							onclick="plusDivs(1)"> > </a>
					</div>
				</div>


				<!--▼ 기초내용 -->
				<div style="width: 100%; height: 3%;">

					<!-- 기본정보 바 -->
					<div id="basic_toggle"
						style="width: 100%; height: 100%; border-top: solid black 3px;">
						<div style="width: 80%; height: 100%; float: left;">
							<h3>기본정보</h3>
						</div>
						<div style="width: 20%; height: 100%; float: left;">
							<h3 class="toggleText" style="text-align: right;">▲</h3>

						</div>
					</div>
				</div>

				<div id="basic_info" style="width: 100%; height: 7%;">
					<hr>
					<!-- 내용넣을곳 -->
					<div style="width: 100%; height: 60%;">

						<div>
							<%=ELD.getIndex_BasicInfo()%>
							<!-- 1980년에 첫 면세점을 열어, 현재는 전국적으로 지점이 8개가 있다. 롯데면세는 루이뷔통을 처음으로 국내에 소개한 이래로, 샤넬·구찌·프라다·헤르메스·불가리 등 400개 이상의 해외 브랜드를 판매하고 있다. -->
						</div>

						<p>
							작성일 :
							<%=ELD.getIndex_Ondate()%>
							<!-- 2018.02.09 작성일 / 2018.02.09 발행일] -->
						</p>

					</div>

					<!-- 마진 -->
					<div style="width: 100%; height: 10%;"></div>

					<div style="width: 100%; height: 30%;">

						<p style="display: inline; height: 100%;">태그</p>
						<div style="display: inline;">
							<!-- 	<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a>
									<a href="#">#롯데면세점</a> -->
							<%
								StringTokenizer Tag = new StringTokenizer(ELD.getIndex_Tags(), "#");
								while (Tag.hasMoreTokens()) {
							%><a href="#">#<%=Tag.nextToken()%></a>
							<%
								}
							%>

						</div>
					</div>
				</div>


				<!--▼ 상세정보-->
				<div style="width: 100%; height: 3%;">

					<div id="detail_toggle"
						style="width: 100%; height: 100%; border-top: solid black 3px;">
						<div style="width: 80%; height: 100%; float: left;">
							<h3>상세정보</h3>

						</div>
						<div style="width: 20%; height: 100%; float: left;">
							<h3 class="toggleText1" style="text-align: right;">▲</h3>


						</div>
					</div>
				</div>

				<div id="detail_info" style="width: 100%;">

					<hr>
					<table style="height: 100%; width: 100%;">

						<tr>
							<td>주소</td>
							<td>
								<!-- 03131 서울 종로구 삼일대로 464(윤현궁) --> <%=edd1.getDetail_addr()%>
							</td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td>
								<!-- 02-766-9090 --> <%=edd1.getDetail_tell()%>
							</td>
						</tr>


						<tr>
							<td>웹사이트</td>
							<td>
								<!-- <a href="http://www.naver.com/">웹사이트 보기</a> --> <a
								href="<%=edd1.getDetail_url()%>">웹사이트 보기</a>
							</td>
						</tr>
						<tr>
							<td>이용시간</td>
							<td>
								<!-- 11 ~ 3월 09:00 ~ 18:00
									<br>
										4 ~ 10월 09:00 ~ 19:00 --> <%=edd1.getDetail_onTime()%>
							</td>
						</tr>
						<tr>
							<td>휴무일</td>
							<td>
								<!-- 매주 월요일(월요일이 국가 지정 공휴일인 경우 해당 날짜에 개관) --> <%=edd1.getDetail_offday()%>
							</td>
						</tr>
						<tr>
							<td>운영 요일</td>
							<td>
								<!-- 화수목금토일 --> <%=edd1.getDetail_onday()%>
							</td>
						</tr>
						<tr>
							<td>장애인 편의시설</td>
							<td>
								<!-- 접근가능
										<br>장애인화장실 --> <%=edd1.getDetail_disabled()%>
							</td>
						</tr>
						<tr>
							<td>규모</td>
							<td>
								<!-- 서울 종로구 운니동에 있는 조선 후기 흥선대원군의 사가.
										<br> 고종이 이곳에서 열두 살 때까지 자라다 왕이 됐으며 생부(生父) 이하응은 흥선대원군이 됐다.
										<br> 운현궁(雲峴宮)에서 대원군은 서원 철폐, 경복궁 중건, 세제 개혁 등 많은 사업을 추진했다.
										<br> 원래는 궁궐에 견줄 만큼 크고 웅장하였다고 전해지나 현재는 사랑채 노안당, 안채 이로당과 노락당만이 남아 있다.
										<br> 정원 등은 잘 보존되어 있으며 인기 드라마 궁의 촬영지로도 쓰인 양관이 가까이에 있다. -->
							</td>
						</tr>
						<tr>
							<td>이것만은 꼭!</td>
							<td>
								<!-- 운현궁 양관 : 본래 흥선대원군의 손자인 이준용을 위해 지은 건물로 양관이라고 불린다.
										<br> 프렌치 르네상스 풍의 석재를 혼용한 벽돌 2층 저택에 16개의 천장 문양이 모두 다르다.
										<br> 1948년 덕성여자대학교에 매각되어 한때 교사로 쓰였고 지금도 평생교육원으로 쓰인다.
										<br> 인기 드라마 궁의 촬영 장소로 사용되기도 했다. --> <%=edd1.getDetail_notice()%>
							</td>
						</tr>
						<tr>
							<td>이용요금</td>
							<td><%=edd1.getDetail_payment()%></td>
						</tr>
						<tr>
							<td>이용시설안내</td>
							<td>
								<!-- 운현궁 정례 행사, 운현궁 일요 예술마당, 고종 명성후 가례(국혼례) 행사 안내
										<br> - 궁중의상체험
										<br> - 대원군행차체험 --> <%=edd1.getDetail_utility()%>
							</td>
						</tr>
					</table>
				</div>
				<!--▼ 지도&교통편-->
				<div style="width: 100%; height: 3%;">
					<!-- 지도&교통바 -->
					<div id="map_toggle"
						style="width: 100%; height: 100%; border-top: solid black 3px;";>
						<div style="width: 80%; height: 100%; float: left;">
							<h3>지도&교통</h3>
						</div>
						<div style="width: 20%; height: 100%; float: left;">
							<h3 class="toggleText2" style="text-align: right;">▼</h3>
						</div>
					</div>
				</div>
				<div id="map_info" style="width: 100%; height: 15%; display: none;">
					<hr>
					<!-- 지도교통 내용 넣을곳 -->
					   <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGT4VwYUrA0PeXg-MIt2MvQBGEyDLBQ4Y&callback=initMap">
   </script>
						<script>
        // 이거는 자바 스크립트 선언에서 가져오는 듯
        function initMap() {
           var uluru = {
                    lat: ${37.5606449}, 
                lng: ${126.99718819999998}
            };
            var map = new google.maps.Map(document.getElementById('map_info'), {
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
				
				</div>

				<!--▼ 댓글리뷰-->
				<div style="width: 100%; height: 3%;">
					<!-- 댓글 바 -->
					<div id="review_toggle"
						style="width: 100%; height: 100%; border-top: solid black 3px;">
						<div style="width: 80%; height: 100%; float: left;">
							<h3>리뷰&댓글</h3>
						</div>
						<div style="width: 20%; height: 100%; float: left;">
							<h3 class="toggleText3" style="text-align: right;">▲</h3>
						</div>
					</div>
				</div>
				<div id="review_info" style="width: 100%;">
					<hr>
					<!-- 댓글 내용 불러오는곳 -->

					<%
						if (!CommentList.isEmpty()) {
					%>
					<% for(EnjoyComment EC : CommentList) {%>
					<!-- 커다란 DIV -->
					<div id="review_info" align="center" style="width: 100%;">
						<!-- 댓글 내용 넣을곳 -->
						<div
							style="width: 1000px; height: 180px; position: relative; padding: 20px; text-align: left;">
							<!-- ID, 게시날자 입력하는곳 -->
							<div style="position: relative; top: 20px; float: left;">
								<div class="leftBox"
									style="position: relative; width: 170px; height: 110px; margin-right: 50px;">
									<br> <span id="userId" style="position: absolute; color: #6C4371; margin: 30px; top: 15px; left: 27px; font: bold 1.5rem 나눔스퀘어;"><%=EC.getUSER_ID() %></span>
								</div>
							</div>

							<div class="rightBox"
								style="width: 70%; height: 100%; padding: 5px; float: left; position: relative;">
								<!-- 제목,내용 입력하는곳 -->
								<div style="float: left; position: relative; width: 80%; height: 90%;">
								<form action="/enjoyCommentUpdate" method="post" style="display: inline;">
								<!-- /views/enjoy/commentUpdate.jsp -->
								<input type="hidden" name="index_titleNo" value="<%=edd1.getSEQ_Index_TitleNo()%>" />
								<input type="hidden" name="SEQ_REVIEW" value="<%=EC.getSEQ_REIVEW()%>" />
									<div id="indexTitle" name="Index_Title" style="width: 100%; height: 20%; color: #6C4371; font: bold 1.5rem 나눔스퀘어; margin-top: 15px; margin-left: 15px;">
										<span id="<%=EC.getSEQ_REIVEW()%>_indexTitleHtml" style="font: bold 1.5rem 나눔스퀘어;"><%=EC.getINDEX_TITLE() %></span>
										<input type="hidden" name="Index_Title" id="<%=EC.getSEQ_REIVEW()%>_title" style="width: 380px; height: 20px; border: 1px solid #9B95C9; background-color: #C7C4E2;" value="<%=EC.getINDEX_TITLE()%>" />
									</div>

									<div id="userComment" name="User_Comment" style="width: 100%; height: 80%; color: #6C4371; font: 1.2rem 나눔스퀘어; margin-left: 15px;">
										<span id="<%=EC.getSEQ_REIVEW()%>_userCommentHtml" style="font: bold 1.2rem 나눔스퀘어;"><%=EC.getUSER_COMMNET() %></span>
										<textarea rows="5" cols="60" style="display: none;" name="User_Comment" id="<%=EC.getSEQ_REIVEW()%>_comment"><%=EC.getUSER_COMMNET()%></textarea>
									</div>
									
									<input type="hidden" style="position: absolute; left: 550px; bottom: 1px; width: 40px; height: 20px;" id="<%=EC.getSEQ_REIVEW()%>_submit" value="수정">
									<button type="button" id="<%=EC.getSEQ_REIVEW()%>_reBtn" style="display:none;" onclick="cancel(<%=EC.getSEQ_REIVEW()%>);">취소</button>
								</form>
								</div>
								<!-- 추천점수 입력하는곳 -->
								<div style="float: left; width: 20%; height: 90%; color: #6C4371; text-align: center; line-height: 5;">
									<span id="insertDate" style="color: #6C4371; font: bold 1.2rem 나눔스퀘어; margin: 15px;"><%=EC.getWrite_Date() %></span>
									
								</div>
								<div style="width: 7%; height: 10%; float: right;">
									<form action="/enjoyCommentDelete" method="post"
										style="display: inline;">
										<input type="hidden" name="index_titleNo" value="<%=edd1.getSEQ_Index_TitleNo()%>" />
										<input type="hidden" name="SEQ_REVIEW" value="<%=EC.getSEQ_REIVEW()%>" />
										<input type="submit" id="<%=EC.getSEQ_REIVEW()%>_commentDeleteBtn" style="position: absolute; bottom: 15px; width: 40px; height: 20px" value="삭제" />
									</form>
								</div>

								<div style="width: 7%; height: 10%; float: right;">
								
								<%-- <input type="hidden" name="Index_Title" id="<%=EC.getSEQ_REIVEW()%>_title" value="<%=EC.getINDEX_TITLE()%>" /> --%>
								<%-- <input type="hidden" name="User_Comment" id="<%=EC.getSEQ_REIVEW()%>_comment" value="<%=EC.getUSER_COMMNET()%>" /> --%>
										
										<%-- <input type="hidden" id="<%=EC.getSEQ_REIVEW()%>_submit" value="수정"> --%>
										<!-- <input type="submit" value="수정"/> -->
									

									<button type="button" id="<%=EC.getSEQ_REIVEW()%>_btn" style="position: absolute; bottom: 15px; width: 40px; height: 20px;" onclick="update(<%=EC.getSEQ_REIVEW()%>);">수정</button>

									<script>
         							function update(id){
         								window.document.getElementById(id+"_title").type="text";
         								window.document.getElementById(id+"_comment").style="display:inline; resize: none; border: 1px solid #9B95C9; background-color: #C7C4E2";
         								window.document.getElementById(id+"_indexTitleHtml").style="display:none";
         								window.document.getElementById(id+"_userCommentHtml").style="display:none";
         								window.document.getElementById(id+"_submit").type="submit";
         								window.document.getElementById(id+"_btn").style="display:none";
         								window.document.getElementById(id+"_reBtn").style="display:inline; position: absolute; left: 600px; bottom: 1px; width: 40px; height: 20px;";
         								window.document.getElementById(id+"_commentDeleteBtn").style="display:none";
         							}
         							function cancel(id){
         								window.document.getElementById(id+"_title").type="hidden";
         								window.document.getElementById(id+"_comment").style="display:none";
         								window.document.getElementById(id+"_indexTitleHtml").style="display:inline; font: bold 1.5rem 나눔스퀘어;";
         								window.document.getElementById(id+"_userCommentHtml").style="display:inline; font: 1.2rem 나눔스퀘어;";
         								window.document.getElementById(id+"_submit").type="hidden";
         								window.document.getElementById(id+"_btn").style="display:inline; position: absolute; bottom: 16px; width: 40px; height: 20px;";
         								window.document.getElementById(id+"_reBtn").style="display:none";
         								window.document.getElementById(id+"_commentDeleteBtn").style="display:inline; position: absolute; bottom: 16px; width: 40px; height: 20px;";
         							}
         						</script>
								</div>
							</div>
						</div>
						<%} %>
						<%=pageNavi %>
						<%
				} else {
			%>
						<div
							style="width: 100%; height: 200px; position: relative; padding: 30px;">
						</div>
						<%
				}
			%>
						<!-- 댓글이 없을경우도 처리해야함.  -->
						<br>
						<!-- 댓글 입력폼 -->
						<div class="review" align="center" style="width: 50%">
							<form action="/review" method="post">
								<!-- if(((Member)session.getAttribute("user"))==null) {%> -->
								<div id="notWriteReview">
									<input type="text" name="Not_Index_Title" readonly
										placeholder="로그인 한 사용자만 작성이 가능합니다" maxlength="60"
										style="width: 820px; height: 30px; background-color: #8490C7; color: #FFFFFF; font: 12pt 나눔스퀘어; padding-top: 5px; margin-left: 10px; border-top-left-radius: 20px; border-top-right-radius: 20px; text-indent: 10px;">

									<textarea name="Not_User_Comment" readonly
										placeholder="로그인 한 사용자만 작성이 가능합니다" rows="10" cols="100"
										style="resize: none; border: 1px solid #8490C7; background-color: #FFFFFF; color: #8490C7; font: 12pt 나눔스퀘어; margin-left: 10px; border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; text-indent: 10px;"></textarea>
								</div>
								<!-- }else{ %>-->
								<div id="writeReview">
									<input autocomplete="off" type="text" name="Index_Title"
										placeholder="제목을 입력하세요" maxlength="60"
										style="width: 820px; height: 30px; background-color: #8490C7; color: #FFFFFF; font: 12pt 나눔스퀘어; padding-top: 5px; margin-left: 10px; border-top-left-radius: 20px; border-top-right-radius: 20px; text-indent: 10px;">

									<textarea autocomplete="off" name="User_Comment"
										placeholder="내용을 입력하세요" rows="10" cols="100"
										style="resize: none; border: 1px solid #8490C7; background-color: #FFFFFF; color: #8490C7; font: 12pt 나눔스퀘어; margin-left: 10px; border-bottom-left-radius: 20px; border-bottom-right-radius: 20px; text-indent: 10px;"></textarea>
								</div>
								<div id="reviewBtn" style="margin-top: 10px;">
									<input type="submit" value="댓글작성" id="reviewButton" />
								</div>
								<!-- }%> -->

								<input type="hidden" value="" name="">
								<!-- 유저 ID?? 이걸로넘겨야하나 세션으로넘겨야하나? 세션이맞나..? -->
								<input type="hidden" value="<%=edd1.getSEQ_Index_TitleNo()%>"
									name="index_titleNo">
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- ▼ 이미지 슬라이더 스크립트 -->
	<script>
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			;
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			x[slideIndex - 1].style.display = "block";
		}

		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 3000);
		}
	</script>
	<!-- ▲ 이미지 슬라이더 스크립트 -->

	<%@ include file="/views/main/footer.jsp"%>
</body>

</html>