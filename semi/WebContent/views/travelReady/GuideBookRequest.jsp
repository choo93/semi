<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 회원가입</title>
<link rel="icon" href="../../image/main/favicon.ico">
<link rel="stylesheet" href="../../css/main/joinus.css">
<link rel="stylesheet" href="../../css/main/materialize.min.css">

<script src="../../js/main/joinus.js"></script>
<style>
input[type=text]:not (.browser-default ):focus:not ([readonly] ), input[type=text].valid:not
	(.browser-default ), input[type=text].valid:not (.browser-default ):focus,
	input[type=password]:not (.browser-default ):focus:not ([readonly] ),
	input[type=password].valid:not (.browser-default ), input[type=password].valid:not
	(.browser-default ):focus, input[type=email]:not (.browser-default ):focus:not
	([readonly] ), input[type=email].valid:not (.browser-default ), input[type=email].valid:not
	(.browser-default ):focus {
	box-shadow: none !important;
}

.img {
	width: 250px;
	height: 350px;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.joinus_box>label:nth-child(1)>input {
	margin-left: 73px !important;
}

.joinus_box>label:nth-child(2)>input {
	margin-left: 59px !important;
}

.joinus_box>label:nth-child(3)>input {
	margin-left: 44px !important;
}

.joinus_box>label:nth-child(4)>input {
	margin-left: 44px !important;
}
   fieldset {
   background-color: #e5f2f9;
   margin-left:21%;
 	width:560px;
    border:0px;
}

legend, .blind {
    position: absolute;
    width: 0;
    height: 0;
    line-height: 0;
    overflow: hidden;
    text-indent: -9999px;
    font-size: 0;
}
#info
{
    background-color: #e5f2f9;
    color: #007dc3;
    position: relative;
    padding: 20px 20px 20px 100px;
}
#info:before
{
    content: "";
    position: absolute;
    left: 30px;
    width: 45px;
    height: 45px;
    background-repeat:no-repeat;
    background: url(http://korean.visitseoul.net/humanframe/theme/visitseoul/assets/images/content/icon-guidebook.png);
}

    #search{
    display: inline-block;
    position: relative;
    z-index: 6;
    padding: 1px 12px 3px 12px;
    border-width: 2px;
    border-style: solid;
    border-radius: 4px;
    border-color: #bbb;
    background: #bbb;
    vertical-align: top;
    font-size: 14px;
    text-align: center;
    color: #fff;
    border-color: #777;
    background: #777;
}
</style>

</head>
<body>
	<%@ include file="/views/main/header.jsp"%>
	<section>
		<div class="wrapper">
			<h4 style="margin: 0;">신청하기</h4>
			
			
			
					<fieldset>
						<legend>가이드북 신청</legend>
						
						<p id="info">
								<b>※무료 가이드북&amp;지도 신청안내</b><br>
								우편배송수량 : 1인당 가이드북 3부, 지도 3부(총 6부)까지 신청 가능<br>
								우편배송일 : 평일기준 약 4-5일 소요(우체국 사정에 따라 달라질 수 있음)<br>
								
								일반등기로 보내기 때문에, 배송 추적/수령 여부 확인이 어려우며,  
							
								이에 관한 책임은 본사에 없음을 미리 알려드립니다. <br>
								방문수령: 직접 방문하여 3부 이하 홍보물을 받아보시길 원하는 경우,
								
								         	관광안내소로 방문하시기 바랍니다.<br> 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;								         
				
								<br>
								
						
								
								</p>
									<button id="search" style="width:130px; cursor:pointer;">안내소 찾기</button>
								</fieldset>
			
			
			
			
			
			
			
			<div
				style="float: left; width: 100%; height: 350px; padding-left: 22%;">
				<div class="img"
					style="float: left; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=GUIDEBOOK&amp;parentSn=41&amp;fileTy=THUMB&amp;fileNo=11);"></div>
				<div class="img"
					style="margin-left: 5%; float: left; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=GUIDEBOOK&amp;parentSn=42&amp;fileTy=THUMB&amp;fileNo=6)"></div>

			</div>
			<div style="width: 100%; height: 350px;">
				<select id="guideNum"  class="browser-default"
					style="width: 194px; float: left; margin-left: 24.5%; border: 1px solid #ddd; font-size: 1rem;">
					<option  selected>선택</option>
					<option>1권</option>
					<option>2권</option>
					<option>3권</option>
				</select> <select id="mapNum"class="browser-default"
					style="width: 194px; float: left; margin-left: 10%; border: 1px solid #ddd; font-size: 1rem;">
					<option  selected>선택</option>
					<option>1권</option>
					<option>2권</option>
					<option>3권</option>
				</select>


			</div>
			<div class="joinus_box">
				<label> 
				<span style="color: black; margin-left: 30px; font-size: 1rem; font-weight: bold;">이름</span>
					<input type="text" id="user_name" >
					<span id="name_check" class="helper-text"
					style="margin-left: 140px;"></span>
				</label> 
				<label> 
				<span style="color: black; margin-left: 30px; font-size: 1rem; font-weight: bold;">이메일</span>
					<input type="email" id="user_email">
					<span id="email_check" class="helper-text"
					style="margin-left: 140px;"></span>
				</label> 
				<label> 
				<span style="color: black; margin-left: 30px; font-size: 1rem; font-weight: bold;">휴대전화</span>
					<input type="text" value="010" readonly
					style="width: 180px !important; padding-left: 10px !important;">
					
					
					<input type="text" maxlength="4"
					style="width: 190px !important; margin-left: 10px !important;"
					id="user_phone"> <span
					style="width: 2px; display: inline-block; background-color: white; height: 47px; position: relative; top: -1px; left: -5px; border-top: 1px solid #ddd; border-bottom: 1px solid #ddd; line-height: 46px; text-align: center;">-</span>
					<input type="text" maxlength="4"
					style="width: 190px !important; margin-left: -10px !important;"
					id="user_phone2"> 
					
					<span id="phone_check" class="helper-text" data-error="wrong"
					data-success="right"
					style="margin-left: 140px; margin-bottom: 20px;"></span>
				
				
				</label>
				<div style="clear: both; height: 36px;"></div>
				<label><span
					style="color: black; margin-left: 30px; font-size: 1rem; font-weight: bold;">주소</span></label>
				<input type="text" id="sample6_postcode" placeholder="우편번호"
					style="margin-left: 69px; width: 182px; background-color: white; border: 1px solid #ddd; padding-left: 10px;">
				<input type="button" onclick="sample6_execDaumPostcode()"
					value="우편번호 찾기"
					style="width: 192px; background-color: black; color: white; height: 46px; border: none; margin-left: 10px; cursor: pointer;"><br>
				<input type="text" id="sample6_address" placeholder="주소"
					style="width: 788px; background-color: white; border: 1px solid #ddd; margin-left: 132px; padding-left: 10px;">
				<input type="text" id="sample6_address2" placeholder="상세주소"
					style="width: 788px; background-color: white; border: 1px solid #ddd; margin-left: 132px; padding-left: 10px;">
			</div>
			<button onclick="submit();" style="cursor: pointer; left:370px;">신청하기</button>
			<button onclick="back();" style="cursor: pointer; left:370px;">취소</button>
			<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
			<script>
				function sample6_execDaumPostcode() {
					new daum.Postcode(
							{
								oncomplete : function(data) {
									// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

									// 각 주소의 노출 규칙에 따라 주소를 조합한다.
									// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
									var fullAddr = ''; // 최종 주소 변수
									var extraAddr = ''; // 조합형 주소 변수

									// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
									if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
										fullAddr = data.roadAddress;

									} else { // 사용자가 지번 주소를 선택했을 경우(J)
										fullAddr = data.jibunAddress;
									}

									// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
									if (data.userSelectedType === 'R') {
										//법정동명이 있을 경우 추가한다.
										if (data.bname !== '') {
											extraAddr += data.bname;
										}
										// 건물명이 있을 경우 추가한다.
										if (data.buildingName !== '') {
											extraAddr += (extraAddr !== '' ? ', '
													+ data.buildingName
													: data.buildingName);
										}
										// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
										fullAddr += (extraAddr !== '' ? ' ('
												+ extraAddr + ')' : '');
									}

									// 우편번호와 주소 정보를 해당 필드에 넣는다.
									document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
									document.getElementById('sample6_address').value = fullAddr;

									// 커서를 상세주소 필드로 이동한다.
									document.getElementById('sample6_address2')
											.focus();
								}
							}).open();
				}

				var submitCount = 0;

				function submit() {
						var userName = $('#user_name').val();
						var userEmail = $('#user_email').val();
						var userPhone = $('#user_phone').val();
						var userPhone2 = $('#user_phone2').val();
						var guideNum = $('#guideNum option:selected').val();
						var mapNum = $('#mapNum option:selected').val();
						var userAddr = $('#sample6_address').val();
						var userAddr2 = $('#sample6_address2').val();
						if(userName=="" || userEmail=="" || userPhone=="" || userPhone2=="" || userAddr=="" || userAddr2=="") 
								{
							alert("빈 항목이 있습니다 확인 해주시기 바랍니다.");
						}
						else if(guideNum=="선택" && mapNum=="선택")
							{
							
							alert("가이드북 및 지도의 신청 개수를 선택해주세요");
							}
						else
							{
							location.href="/guideBookRequest?name="+userName+"&email="+userEmail+"&phone="+userPhone+"&phone2="+userPhone2+"&guidebooknum="+guideNum+"&mapnum="+mapNum+"&addr="+userAddr+"&addr2="+userAddr2;

							}
				}
				function back(){
					
						history.back(-1);
				}

				
			</script>
		</div>
		<div style="background-color: white; height: 20px;"></div>
	</section>
</body>
</html>