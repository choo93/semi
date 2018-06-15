<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/dobo/doboReserve.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script src="/js/dobo/doboReserve.js"></script>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
	<%System.out.println(request.getParameter("doboCode")); %>

		<form action="/doboReserve" method="get">
			<input type="hidden" value="<%=request.getParameter("doboCode") %>" name="doboCode">
			<div id="wrap">
				<div id="top">
					<div>
						<img>
						<p>문화관광해설사와 함께하는</p>
						<span>서울도보해설관광</span> <span></span>
						<p>오랜역사와 문화를 간직한 서울!</p>
						<p>문화관광해설사의 해설과 함께 서울의 주요 관광 명소를</p>
						<p>도보로 탐방하여 여행해보세요!</p>
					</div>
					<div id="sel">
						<div>제목</div>
						<div>
							<div>
								<label>예약 일</label> <input id="date" type="date" name="date">
							</div>
							<div>
								<label>예약 시간</label> 
								<select id="time" name="time">
            						<option value="09:00">09:00</option>
            						<option value="13:00">13:00</option>
        						</select>
							</div>
						</div>
					</div>
				</div>
				<p>예약자 정보</p>
				<div id="beforeNotice">
					<div>예약 전 안내사항</div>
					<div>
						[예약 전 안내사항] 문의 : dobo@seoulwelcome.com<br> ※ 주말 및 공휴일,
						4월/5월/9월/10월 성수기에는 예약이 조기 마감되오니 이점 유의하셔서 신청해주시기 바랍니다.<br> ※
						경복궁,창덕궁,창경궁,덕수궁 35인이상 관람시, 해당 궁궐사이트에서 15일전 단체입장신청을
						하셔야합니다.(2014.1.1부터 시행)<br> ※ 수학여행 단체 등 50명 이상의 대형 단체일 경우, 관광일
						기준 최소 2주전 예약바랍니다.<br> ※ 상설코스 예약문의는 각 상설 운영지로 문의하시기 바랍니다.<br>
						※ 예약인원 3인 이상일 경우 출발이 확정되며, 예약인원이 1~2인의 경우 출발이 이루어지지 않을 수 있습니다.<br>
						※ 개인예약시 관광일이 익월날짜인 경우 해당 월 15일부터 예약이 가능하오니 참고 바랍니다.<br> <span
							style="color: red; font-weight: bold"> ※ 해설진행시 발생하는 안전사고에
							대해서 도보관광사무국과 서울문화관광해설사는 책임을 지지 않습니다. 유아 및 어린이를 포함한 학생단체는 반드시 인솔자를
							동반해 주시기 바랍니다.<br> ※ 서울 미세먼지 비상저감조치가 발령될 경우 사전에 예약이 완료 되어있더라도
							시민의 건강을 위해 취소될 수 있음을 양해해 주시기 바랍니다.
						</span>
					</div>
				</div>

				<div id="input">
					<div>*필수입력항목</div>
					<div id="form">

						<div>
							<label>이름*</label> <input id="name" type="text" id="name" name="name">
						</div>
						<div>
							<label>성별*</label> <input type="radio" name="gender" value="M" checked><label>남성</label>
							<input type="radio" name="gender" value="F"> <label>여성</label>
						</div>
						<div>
							<label>국적*</label> <input id="nation" type="text" id="nation" name="nation">
						</div>
						<div>
							<label>휴대전화*</label> <input id="phone" type="text" id="phone" name="phone">
						</div>
						<div>
							<label>하고싶은 말</label>
							<textarea name="comment"></textarea>
						</div>
					</div>
				</div>
				<div id="afterNotice">
					<div>예약 후 안내사항</div>
					<div>
						[예약 후 안내사항]<br> ※ [도보관광 홈페이지 내 예약확인 및 취소] 에서 예약 확인 및 취소가
						가능합니다.<br> ※ 예약인원이 3인 이상이 되면 출발이 확정되며, 출발확정 시 문자와 메일로 안내를 받으실
						수 있습니다. 관광일 기준 2일 전 까지 예약인원이 3인 미만일 경우 예약은 자동 취소되며, 문자와 메일로 안내
						드립니다.<br> ※ 단체 예약 시, 희망예약일자에 지원한 해설 자원봉사자가 없을 경우 부득이하게 매칭이
						이루어지지 않을 수 있습니다.<br> ※ 코스 및 시간 변경을 원하실 경우 기존 예약을 취소하고 신규 예약을
						해주셔야 합니다.<br> ※ 예약취소 시, 홈페이지 및 모바일웹에서 관광예약 시간 기준 24시간 전까지만
						취소가 가능하며, 이후에는 홈페이지 및 모바일웹에서 취소가 불가능합니다. 또한 서울도보관광 프로그램은 예약접수와 동시에
						해설사가 배정되므로 신중하게 예약해주시기 바랍니다.<br> ※ 해설사와 개인적으로 코스 및 일시를 변경하는
						것은 삼가 해주십시오.<br> <span style="color: red; font-weight: bold">
							※ 개인 SNS 상에 해설사의 사진이나 실명공개는 삼가해주기시 바랍니다.<br> ※ 관광 시작 시간 이후
							20분 이상 늦게 오시면 해설은 취소 처리 됩니다.
						</span>
					</div>

				</div>
				<div id="btn">
					<input type="submit" value="예약하기" onclick="return check();">
				</div>

			</div>
		</form>

	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>