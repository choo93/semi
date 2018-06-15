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
		border:0.5px solid black;
	}
	#wrap{
		width:100%;
		padding:5%;
	}
	
	#wrap>div{
		width:90%;
		height:400px;
		margin-bottom:50px;
		padding:3%;
		overflow:scroll;
	}
	#wrap>div>div{
		text-align:center;
		line-height:300%;
	}
	#wrap>div>div{
		width:94%;
	}
	
	#wrap>div>div:last-child{
		heigh:80%;
	}
	#wrap>div>div:not(:first-child)>div{
		float:left;
	}
	
	#wrap>div>div:first-child{
		height: 10%;
	}
	#wrap>div>div>div{
		float:left;
	}
	#wrap>div>div:not(:first-child){
		height:50px;
	}
	
	#concert>div>div{
		width:16.66%;	height:100%;
	}
	
	#dobo>div>div{
		width:25%;	height:100%;
	}
	
	#hotel>div>div{
		width:25%;	height:100%;
	}
	
</style>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
		<div id="wrap">
			<div id="concert">
				<div>
					<div>공연 이름</div><div>날짜</div><div>시간</div><div>좌석</div><div>가격</div><div>주소</div>
				</div>
				<%
				System.out.println(concertList.size());
				System.out.println(hoteltList.size());
				System.out.println(doboList.size());
				for(ConcertReserve cr : concertList){ %>
					<div>
						<div><%=cr.getConcertTitle() %></div><div><%=cr.getConcertReserveDate() %></div><div><%=cr.getConcertReserveTime() %></div><div><%=cr.getSeatNo() %></div><div><%=cr.getConcertPrice() %></div><div><%=cr.getConcertAddress() %></div>
					</div>
				<%} %>
			</div>
			<div id="hotel">
				<div>
					<div>호텔 이름</div><div>날짜</div><div>주소</div><div>호실</div>
				</div>
				<%for(HotelReserve hr : hoteltList){ %>
					<div>
						<div><%=hr.getHotelName() %></div><div><%=hr.getReserveDate() %></div>
						<div><%=hr.getAddress() %></div><div><%=hr.getRoomNo() %></div>
					</div>
				<%} %>
			</div>
			<div id="dobo">
				<div>
					<div>도보관광</div><div>날짜</div><div>시간</div><div>만남장소</div>
				</div>
				<%for(DoboReserve dr : doboList){ %>
					<div>
						<div><%=dr.getDoboTitle() %></div><div><%=dr.getDate() %></div><div><%=dr.getTime() %></div><div><%=dr.getDoboMeet() %></div>
					</div>
				<%} %>
			</div>
		</div>
	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>