<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="../../css/hotel/hotelPayment.css">
<body>


<div style="width:100%; height:500px; ">
<div id="contents">
<div id="hotelReserveDate">토, 03/18,2017</div>
<div id="hotelPrice">\120,000</div><br><hr>	
</div>

<div id="contents-1">
<div id="hotelServicePriceExplain">세금 및 서비스 요금</div>
<div id="hotelServicePrice">\12,000</div><br><hr>
</div>

<div id="contents-2">
<div id="hotelTotalPrice">총 요금</div>
<div id="hotelTotalPrice-1">\132.000</div><br><hr>
</div>

<div id="content-3">지불하실 총 금액은 호텔 객실 예약 시 청구됩니다.</div><br><hr>

<div id="content-4"><button onclick="pricePayment()">결제하기</button>
<button onclick="back();">취소</button>
</div>

</div>

<script>
        function pricePayment() {
            var IMP = window.IMP; // 생략가능
            IMP.init('imp15333677'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
            
            IMP.request_pay({
                pg: 'inicis', // version 1.1.0부터 지원.
                pay_method: 'card',
                merchant_uid: 'merchant_' + new Date().getTime(),
                name: '주문명:결제테스트',
                amount: 14000,
                buyer_email: 'iamport@siot.do',
                buyer_name: '구매자이름',
                buyer_tel: '010-1234-5678',
                buyer_addr: '서울특별시 강남구 삼성동',
                buyer_postcode: '123-456',
                m_redirect_url: 'https://www.yourdomain.com/payments/complete'
            }, function(rsp) {
                if (rsp.success) {
                    var msg = '결제가 완료되었습니다.';
                    msg += '고유ID : ' + rsp.imp_uid;
                    msg += '상점 거래ID : ' + rsp.merchant_uid;
                    msg += '결제 금액 : ' + rsp.paid_amount;
                    msg += '카드 승인번호 : ' + rsp.apply_num;
                } else {
                    var msg = '결제에 실패하였습니다.';
                    msg += '에러내용 : ' + rsp.error_msg;
                }
                alert(msg);
            });

        }
    </script>


</body>
</html>