<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" import="semi.hotel.model.vo.*"
%>
<%ArrayList<String> list = (ArrayList<String>)request.getAttribute("room");
HotelReserve hr = (HotelReserve)request.getAttribute("reserve");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/hotel/roomSelect.css">
<script src="/js/hotel/roomSelect.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
</head>

<body>
	<div id="wrap">
		<div id="title">호실 선택</div>
        <div id="room">
            <%for(int i=0;i<10;i++){ %>
            	<%for(int j=0;j<8;j++){ %>
            		<div id="<%=i*8+j+1%>"  onclick="select(this);"><%=100*(10-i)+j+1%>호</div>
            	<%
            	}
            	%>
            	<hr>
            <%
            }
            %>
        </div>
        <input id="roomNo" type="hidden" name="roomNo">
        <input id="hotelCode"type="hidden" name="hotelCode" value="<%=hr.getHotelCode() %>">
        <input id="price" type="hidden" name="price" value="<%=hr.getPrice() %>">
        <input id="date" type="hidden" name="date" value="<%=hr.getReserveDate() %>">
        <input id="roomCode" type="hidden" name="roomCode" value="<%=hr.getRoomCode() %>">
        <input id="indexNo" type="hidden" name="indexNo" value="<%=request.getParameter("indexNo") %>" >
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
        	<div>
        		<div id="white"></div>
        		<div>선택 불가 좌석</div>
        	</div>
        </div>
        
        <button id="payy" type="button" onclick="selBool();">결제하기</button>
    </div>
    	
    <script>
		window.onload=function(){
			<%
			for(int i=1;i<=80;i++){
				if(hr.getRoomCode().equals("1")){
					if(!(57<=i && i<=64)){
			%>
						document.getElementById(<%=i%>).style.backgroundColor = "white";
						document.getElementById(<%=i%>).onclick = "";
						document.getElementById(<%=i%>).style.cursor = 'auto';
			<%
					}
			
				}else if(hr.getRoomCode().equals("2")){
					if(!(65<=i && i<=80)){
			%>
						document.getElementById(<%=i%>).style.backgroundColor = "white";
						document.getElementById(<%=i%>).onclick = "";
						document.getElementById(<%=i%>).style.cursor = 'auto';
			<%
					}
			
				}else if(hr.getRoomCode().equals("3")){
					if(!(25<=i && i<=40)){
			%>
						document.getElementById(<%=i%>).style.backgroundColor = "white";
						document.getElementById(<%=i%>).onclick = "";
						document.getElementById(<%=i%>).style.cursor = 'auto';
			<%
					}
			
				}else if(hr.getRoomCode().equals("4")){
					if(!(9<=i && i<=24)){
			%>
						document.getElementById(<%=i%>).style.backgroundColor = "white";
						document.getElementById(<%=i%>).onclick = "";
						document.getElementById(<%=i%>).style.cursor = 'auto';
			<%
					}
			
				}else if(hr.getRoomCode().equals("5")){
					if(!(1<=i && i<=8)){
			%>
						document.getElementById(<%=i%>).style.backgroundColor = "white";
						document.getElementById(<%=i%>).onclick = "";
						document.getElementById(<%=i%>).style.cursor = 'auto';
			<%
					}
			
				}else if(hr.getRoomCode().equals("6")){
					if(!(41<=i && i<=56)){
			%>
						document.getElementById(<%=i%>).style.backgroundColor = "white";
						document.getElementById(<%=i%>).onclick = "";
						document.getElementById(<%=i%>).style.cursor = 'auto';
			<%
					}
				}
			}
			
			%>
			
			
			<%
			for(int i=0;i<list.size();i++){
			%>
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
				amount : <%=hr.getPrice() %>,
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
					
					var roomNo = document.getElementById('roomNo').value;
					var hotelCode = document.getElementById('hotelCode').value;
					var price = document.getElementById('price').value;
					var date = document.getElementById('date').value;
					var roomCode = document.getElementById('roomCode').value;
					var indexNo = document.getElementById('indexNo').value;
					
					location.href="/hotelReserve?roomNo=" + roomNo + "&hotelCode=" + hotelCode + 
							"&price=" + price + "&date=" + date + "&roomCode=" + roomCode + "&indexNo=" + indexNo;
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