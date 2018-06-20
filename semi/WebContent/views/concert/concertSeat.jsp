<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"	import="semi.concert.model.vo.*"
%>
<%ArrayList<String> list = (ArrayList<String>)request.getAttribute("seat");%>
<%ConcertReserve cr = (ConcertReserve)request.getAttribute("reserve"); 
	int people = Integer.parseInt(request.getParameter("people"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/concert/concertSeat.css">
<script src="/js/concert/seatSelect.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
</head>

<body>
	<form action="/concertReserve">
	<div id="wrap">
        <div id="screen">SCREEN</div>
        <div id="seat">
            <%for(int i=0;i<6;i++){ %>
            	<%for(int j=0;j<10;j++){ %>
            		<div id="<%=i*10+j+1%>" onclick="select(this);"><%=(char)(i+65) %><%=j+1%>석</div>
            	<%
            	}
            	%>
            <%
            }
            %>
        </div>
        <%for(int i=0;i<people;i++){ %>
        	<input id="seatNo<%=i %>" type="hidden" name="seatNo<%=i%>">
        <%} %>
        <input id="people" type="hidden" name="people" value="<%=people %>">
        <input id="concertCode" type="hidden" name="concertCode" value="<%=cr.getConcertCode() %>">
        <input id="price" type="hidden" name="price" value="<%=cr.getConcertPrice() %>">
        <input id="date" type="hidden" name="date" value="<%=cr.getConcertReserveDate() %>">
        <input id="time" type="hidden" name="time" value="<%=cr.getConcertReserveTime() %>">
        
        <div id="info">
        	<div>
        		<div id="blue"></div>
        		<div>선택 가능 좌석</div>
        	</div>
        	<div>
        		<div id="green"></div>
        		<div>선택한 좌석</div>
        	</div>
        	<div>
        		<div id="gray"></div>
        		<div>사용중인 좌석</div>
        	</div>
        </div>
    </div>
    	<button id="payy" type="button" onclick="selBool();">결제하기</button>
    	<input id="submit" type="submit" value="예약 완료" style="display:none;">
    </form>
    <script>
    	var maxNum = <%=people%>;
    	
		window.onload=function(){
			<%
			for(int i=0;i<list.size();i++){%>
				document.getElementById(<%=list.get(i)%>).style.backgroundColor = 'grey';
				document.getElementById(<%=list.get(i)%>).onclick = "";
				document.getElementById(<%=list.get(i)%>).style.cursor = 'auto';
    		<%}%>
		}
		
		var result = false;
		
		function pay() {
			var IMP = window.IMP; // 생략가능
			IMP.init('imp15333677'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			
			IMP.request_pay({
				pg : 'inicis', // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '주문명:결제테스트',
				amount : <%=request.getParameter("price") %>/10,
				buyer_email : 'iamport@siot.do',
				buyer_name : '구매자이름',
				buyer_tel : '010-1234-5678',
				buyer_addr : '서울특별시 강남구 삼성동',
				buyer_postcode : '123-456',
				m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			}, function(rsp) {
				if (rsp.success) {

					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					result = true;

					var seatNoStr = "";
					for(var i=0;i<<%=people %>;i++){
						seatNoStr += "&seatNo" + i + "=" + document.getElementById('seatNo'+i).value;
					}
					var concertCode = document.getElementById('concertCode').value;
					var price = document.getElementById('price').value;
					var date = document.getElementById('date').value;
					var time = document.getElementById('time').value;
					var people = document.getElementById('people').value;
					
					location.href = "/concertReserve?concertCode=" + concertCode + "&price=" + price + 
							"&date=" + date + "&time=" + date + seatNoStr + "&people=" + <%=people%>;
					
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					result = false;
					window.close();
				}
				alert(msg);
				
			});
		}
		
		
</script>
</body>
</html>