<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="semi.concert.model.vo.*"	import="semi.hotel.model.vo.*"	import="semi.dobo.model.vo.*"
	%>
<%
ArrayList<ConcertReserve> concertList = (ArrayList<ConcertReserve>)request.getAttribute("concert");
ArrayList<DoboReserve> doboList = (ArrayList<DoboReserve>)request.getAttribute("dobo");
ArrayList<HotelReserve> hoteltList = (ArrayList<HotelReserve>)request.getAttribute("hotel");
%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
</head>
<style>
	*{
		margin:0;	padding:0;
		box-sizing:border-box;
	}
	div{
	
	}
	#wrap{
		width:100%;
		padding:50px;
	}
	
	.title{
		width:100%;
		height:50px;
		font-size:25px;
		text-align:center;
		line-height:200%;
		margin-top:30px;
	}
	
	#wrap>div:nth-child(even){
		width:100%;	height:500px;
		margin-top:30px;
		margin-bottom:50px;
		/* overflow:auto; */
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
	
</style>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
		<div id="wrap">
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
	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>