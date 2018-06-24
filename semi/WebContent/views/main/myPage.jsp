<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*" import="semi.concert.model.vo.*" import="semi.hotel.model.vo.*"	import="semi.dobo.model.vo.*"%>
<%
	SeoulUser su = (SeoulUser) session.getAttribute("user");
	ArrayList<ConcertReserve> concertList = (ArrayList<ConcertReserve>)request.getAttribute("concert");
	ArrayList<DoboReserve> doboList = (ArrayList<DoboReserve>)request.getAttribute("dobo");
	ArrayList<HotelReserve> hoteltList = (ArrayList<HotelReserve>)request.getAttribute("hotel");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 마이페이지</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<style>
@media screen and ( max-width:794px ) {
	nav>ul{
		display:none!important;
	}
}
</style>
</head>
<body>
	<%@ include file="/views/main/header.jsp"%>
	<section>
		<nav style="background-color: black;position:fixed;z-index:1;">
			<h3
				style="margin: 0; margin-left: 17px !important; line-height: 1.3; float: left;">MY
				PAGE</h3>
			<ul style="color: white; float: right;">
				<li><a href="#userInfo">회원 정보 수정</a></li>
				<li><a href="#reserveList" style="margin-right:32px;">예약 리스트</a></li>
			</ul>
			<style>
				nav ul>li {
					margin-right: 32px;
				}
				
				nav ul>li>a:hover {
					color: yellow;
				}
			</style>
		</nav>
		<article style="width:1280px;">
		<h4 style="margin:0px; margin-left:17px;padding-top:80px;" id="userInfo">회원 정보 수정</h4>
		<p style="margin-left:17px;margin-top:32px;"><span style="font-weight:bold;margin-right:87px;">이름</span><%=su.getUserName() %></p>
		<p style="margin-left:17px;margin-top:17px;"><span style="font-weight:bold;margin-right:74px;">아이디</span><%=su.getUserId() %></p>	
		<form action="/userUpdate" method="method">
			<input type="hidden" id="user_id" name="userId" value="<%=su.getUserId()%>">	
			<p style="margin-left:17px;margin-top:7px;"><span style="font-weight:bold;margin-right:56px;">비밀번호</span>
				<input onchange="pwdCheck();" type="password" id="user_pwd" name="userPwd" value="<%=su.getUserPwd() %>" style="width:104px;border-bottom:none;">
				<span id="pwd_check" class="helper-text" style="margin-left:20px;font-size:0.7rem;"></span>
			</p>
			<p style="margin-left:17px;margin-top:-9px;"><span style="font-weight:bold;margin-right:21px;">비밀번호 확인</span>
				<input onchange="pwdCheck2();" type="password" id="user_pwd2" name="userPwd2" value="<%=su.getUserPwd() %>" style="width:104px;border-bottom:none;">
				<span id="pwd_check2" class="helper-text" style="margin-left:20px;font-size:0.7rem;"></span>
			</p>
			<p style="margin-left:17px;margin-bottom:17px;"><span style="font-weight:bold;margin-right:57px;">생년월일</span><%=su.getUserBirthday() %></p>		
			<p style="margin-left:17px;"><span style="font-weight:bold;margin-right:74px;">이메일</span><%=su.getUserEmail() %></p>						
			<p style="margin-left:17px;margin-top:7px;"><span style="font-weight:bold;margin-right:56px;">휴대전화</span>
				<input onchange="phoneCheck();" type="text" id="user_phone" name="userPhone" value="<%=su.getUserPhone() %>" style="width:110px;border-bottom:none;font-size:1rem;">
				<span id="phone_check" class="helper-text" style="margin-left:20px;font-size:0.7rem;"></span>
			</p>
			<p style="margin-left:17px;margin-top:2px;"><span style="font-weight:bold;margin-right:81px;">주소</span>
				<input type="text" id="user_addr" name="userAddr" value="<%=su.getUserAddr() %>" style="width:100%;border-bottom:none;font-size:1rem;">
			</p>
			<input type="submit" value="수정" style="cursor:pointer;margin-left:15px;border:1px solid #ddd;height:40px;width:111px;background-color:white;">
			<input type="reset" value="취소" style="cursor:pointer;margin-left:15px;border:1px solid #ddd;height:40px;width:111px;background-color:white;">
		</form>
		<form action="/userDelete" method="post" style="position:relative;top:-40px;left:262px;">
			<input type="hidden" id="user_id" name="userId" value="<%=su.getUserId()%>">
			<button onclick="userDelete();" style="z-index:-10;cursor:pointer;margin-left:15px;border:1px solid #ddd;height:40px;width:111px;background-color:white;">탈퇴</button>
		</form>

		
		<script>
		function userDelete(){
			return confirm("정말 탈퇴 하시겠습니까?")
		}
		
		var submitCount=0;
		function pwdCheck(){
	    	var regExp;
	    	var resultChk;
	    	var userPwd = $('#user_pwd').val();
	    	regExp = /^[a-zA-Z0-9$@$!%*#?&]{6,16}$/;
	    	resultChk = regExp.test(userPwd);
	    	if(resultChk == false){
	    		$('#pwd_check').html("<span style='color:red;'>6~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</span>");
	    	}else{
	    		$('#pwd_check').html("<span style='color:#26a69a;'>OK</span>");
	    		submitCount+=1;
	    	}
	    }
		function pwdCheck2(){
	    	var userPwd = $('#user_pwd').val();
	    	var userPwd2 = $('#user_pwd2').val();
	    	if(userPwd==userPwd2){
	    		$('#pwd_check2').html("<span style='color:#26a69a;'>OK</span>");
	    		submitCount+=1;
	    	}else{
	    		$('#pwd_check2').html("<span style='color:red;'>비밀번호가 일치하지 않습니다.</span>");
	    	}
	    }
		function phoneCheck(){
	    	var regExp;
	    	var resultChk;
	    	var userPhone = $('#user_phone').val();
	    	regExp = /^\d{3}-\d{4}-\d{4}$/;
	    	resultChk = regExp.test(userPhone);
	    	if(resultChk == false){
	    		$('#phone_check').html("<span style='color:red;'>형식에 맞춰서 작성해주세요. (010-0000-0000)</span>");
	    	}else{
	    		$('#phone_check').html("<span style='color:#26a69a;'>OK</span>");	
	    	}
	   }	
		</script>
		


		<h4 style="margin-left:17px;padding-top:80px;" id="reserveList">예약 리스트</h4>
		<center>
		<div id="wrap" style="margin-left:17px;">
			<div class="title">공연 예약 목록</div>
			<div>
				<div id="concertTitle">
					<div>공연 이름</div><div>날짜</div><div>시간</div><div>좌석</div><div>가격</div><div>주소</div>
				</div>
				<div id="concert">
				<%
				for(ConcertReserve cr : concertList){ %>
					<div  id="concertContent">
						<div><%=cr.getConcertTitle() %></div><div><%=cr.getConcertReserveDate() %></div><div><%=cr.getConcertReserveTime() %></div>
						<div>
							<%=(char)(65+(cr.getSeatNo()/10)) %><%=cr.getSeatNo()%10 %>석
						</div>
						<div><%=cr.getConcertPrice() %></div><div><%=cr.getConcertAddress() %></div>
					</div>
				<%}
				%>
				</div>
				<%
				if(concertList.size()==0){
					%>
						<div class="noList">예약된 목록이 없습니다.</div>
					<%	
					}
				
				%>
			</div>
			<div class="title">호텔 예약 목록</div>
			<div>
				<div id="hotelTitle">
					<div>호텔 이름</div><div>날짜</div><div>주소</div><div>호실</div>
				</div>
				<div>
				<%for(HotelReserve hr : hoteltList){ %>
					<div id="hotelContent">
						<div><%=hr.getHotelName() %></div><div><%=hr.getReserveDate() %></div>
						<div><%=hr.getAddress() %></div><div><%=(100*(10-((hr.getRoomNo()-1)/8)))+((hr.getRoomNo()-1)%8)+1 %>호실</div>
					</div>
				<%} %>
				</div>
				<%
				if(hoteltList.size()==0){
				%>
					<div class="noList">예약된 목록이 없습니다.</div>
				<%	
				}
				
				%>
			</div>
			<div class="title">도보 관광 예약 목록</div>
			<div>
				<div id="doboTitle">
					<div>도보관광</div><div>날짜</div><div>시간</div><div>만남장소</div>
				</div>
				<div>
				<%for(DoboReserve dr : doboList){ %>
					<div id="doboContent">
						<div><%=dr.getDoboTitle() %></div><div><%=dr.getDate() %></div><div><%=dr.getTime() %></div><div><%=dr.getDoboMeet() %></div>
					</div>
				<%} %>
				</div>
				<%
				if(doboList.size()==0){
					%>
						<div class="noList">예약된 목록이 없습니다.</div>
					<%	
					}
				
				%>
			</div>
		</div>
		</center>
<style>
	*{
		margin:0;	padding:0;
		box-sizing:border-box;
		font-family: 'Nanum Gothic', sans-serif;
	}
	div{
		margin:0 auto;
	}
	
	.title{
		width:100%;
		height:60px;
		font-size:25px;
		text-align:center;
		line-height:200%;
		margin-top:30px;
		border-bottom:1px solid lightgrey;
		border-top:1px solid lightgrey;
		background-color:rgb(180,48,41);
		font-weight:bold;
		color:white;
	}
	
	#wrap>div:nth-child(even){
		width:100%;	height:500px;
		margin-top:30px;
		margin-bottom:50px;
	}
	
	#wrap>div:nth-child(even)>div:first-child{
		width:100%;	height:10%;
		
	}
	#wrap>div:nth-child(even)>div:last-child{
		width:100%;	height:90%;
		overflow:auto;
	}
	
	#wrap>div:nth-child(even)>div:first-child>div{
		float:left;
		text-align:center;
		line-height:40px;
		font-size:20px;
		font-weight:bold;
	}
	
	#wrap>div:nth-child(even)>div:last-child>div{
		width:100%;	height:50px;
	}
	
	#concertTitle>div:first-child{
		width:25%;	height:100%;
	}
	#concertTitle>div:nth-child(2){
		width:10%;	height:100%;
	}
	#concertTitle>div:nth-child(3){
		width:10%;	height:100%;
	}
	#concertTitle>div:nth-child(4){
		width:10%;	height:100%;
	}
	#concertTitle>div:nth-child(5){
		width:10%;	height:100%;
	}
	#concertTitle>div:last-child{
		width:35%;	height:100%;
	}
	
	#wrap>div:nth-child(even)>div:last-child>div>div{
		float:left;
		text-align:center;
	}
	
	#concertContent>div:first-child{
		width:25%;	height:100%;
	}
	#concertContent>div:nth-child(2){
		width:10%;	height:100%;
	}
	#concertContent>div:nth-child(3){
		width:10%;	height:100%;
	}
	#concertContent>div:nth-child(4){
		width:10%;	height:100%;
	}
	#concertContent>div:nth-child(5){
		width:10%;	height:100%;
	}
	#concertContent>div:last-child{
		width:35%;	height:100%;
	}
	
	#hotelTitle>div:first-child{
		width:20%;	height:100%;
	}
	#hotelTitle>div:nth-child(2){
		width:15%;	height:100%;
	}
	#hotelTitle>div:nth-child(3){
		width:50%;	height:100%;
	}
	#hotelTitle>div:last-child{
		width:15%;	height:100%;
	}
	
	#hotelContent>div:first-child{
		width:20%;	height:100%;
	}
	#hotelContent>div:nth-child(2){
		width:15%;	height:100%;
	}
	#hotelContent>div:nth-child(3){
		width:50%;	height:100%;
	}
	#hotelContent>div:last-child{
		width:15%;	height:100%;
	}
	
	#doboTitle>div:first-child{
		width:30%;	height:100%;
	}
	
	#doboTitle>div:nth-child(2){
		width:15%;	height:100%;
	}
	
	#doboTitle>div:nth-child(3){
		width:15%;	height:100%;
	}
	
	#doboTitle>div:last-child{
		width:40%;	height:100%;
	}
	
	#doboContent>div:first-child{
		width:30%;	height:100%;
	}
	#doboContent>div:nth-child(2){
		width:15%;	height:100%;
	}
	#doboContent>div:nth-child(3){
		width:15%;	height:100%;
	}
	#doboContent>div:last-child{
		width:40%;	height:100%;
	}
	
	.noList{
		width:100%;
		height:400px !important;
		text-align:center;
		font-size:50px;
		line-height:200px;
		color:lightgrey;
	}
	
	#back{
		width:100%;	height:70px;
	}
	
	#back>button{
		width:100px;	height:40px;
		margin-left:40%;
		margin-top:30px;
		font-size:16px;
		background-color:rgb(180,48,41);
		font-weight:bold;
		color:white;
		border:0;
		cursor:pointer;
	}
	
</style>
		
		</article>
	</section>
</body>
</html>