<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<style>

#wrap {
	width: 500px;
	height: 300px;
}
</style>
<body>
	<div id="wrap">
		<form action="/concertReserve" method="get">
			날짜선택 : <input type="date" name="date"><br> 
			시간 선택 : <input type="time" name="time"><br> 
			<input type="hidden" name="indexNo" value="<%=request.getParameter("indexNo")%>">
			<input type="hidden" name="concertCode" value="<%=request.getParameter("concertCode")%>">
			가격: <label><%=request.getParameter("price")%></label><br>
			<input type="hidden" name="price" value="<%=request.getParameter("price")%>">
			<button id="payy" type="button" onclick="pay();">결제하기</button>
			<input id="submit" type="submit" value="결제 완료" onclick="return reserveComplete();" style="display:none;">
		</form>
		
	</div>
	<script>
		var result = false;
		function pay() {
			
			var IMP = window.IMP; // 생략가능
			IMP.init('imp15333677'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			
			IMP.request_pay({
				pg : 'inicis', // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '주문명:결제테스트',
				amount : <%=request.getParameter("price") %>,
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
					document.getElementById('payy').style.display = 'none';
					document.getElementById('submit').style.display = 'block';
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					result = false;
					window.close();
				}
				alert(msg);
				
			});
		}
		
		function reserveComplete(){
			return result;
		}
	</script>
</body>
</html>