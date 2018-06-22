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
<script src="../../js/main/jquery-3.3.1.min.js"></script>
<script src="../../js/main/joinus.js"></script>
<style>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
input[type=text]:not(.browser-default):focus:not([readonly]),
input[type=text].valid:not(.browser-default),
input[type=text].valid:not(.browser-default):focus,
input[type=password]:not(.browser-default):focus:not([readonly]),
input[type=password].valid:not(.browser-default),
input[type=password].valid:not(.browser-default):focus,
input[type=email]:not(.browser-default):focus:not([readonly]),
input[type=email].valid:not(.browser-default),
input[type=email].valid:not(.browser-default):focus{
	box-shadow:none!important;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<section>
		<div class="wrapper">
			<h4 style="margin: 0;">회원가입</h4>
			<div class="step_design">
				<div class="step_circle" style="background-color:#ddd;">
					<img src="../../image/main/step1.png"
						style="width: 35px; margin: 17px;">
				</div>
				<div class="step_write">
					<h6 style="color:#999;">Step1</h6>
					<p style="color:#999;">약관동의</p>
				</div>
				<div class="step_circle">
					<img src="../../image/main/step2.png"
						style="width: 35px; margin: 18px; margin-left: 21px;">
				</div>
				<div class="step_write">
					<h6>Step2</h6>
					<p>정보입력</p>
				</div>
				<div class="step_circle" style="background-color: #ddd;">
					<img src="../../image/main/step3.png"
						style="width: 35px; margin: 16px; margin-left: 18px;">
				</div>
				<div class="step_write">
					<h6 style="color: #999;">Step3</h6>
					<p style="color: #999;">가입완료</p>
				</div>
			</div>
				<div class="joinus_box">
				<label>
					<span style="color:black;margin-left:30px;font-size:1rem;font-weight:bold;">아이디</span>
					<input type="text" id="user_id" name="user_id" onchange="idCheck();">
					<span id="id_check" class="helper-text" style="margin-left:140px;color:#9e9e9e;">5~12자의 영문 소문자와 숫자만 사용 가능합니다.</span>
				</label>				
				<label>
					<span style="color:black;margin-left:30px;font-size:1rem;font-weight:bold;">비밀번호</span>
					<input type="password" id="user_pwd" onchange="pwdCheck();">
					<span id="pwd_check" class="helper-text" style="margin-left:140px;">6~16자 영문 대 소문자, 숫자를 사용하세요.</span>
				</label>	
				<label>
					<span style="color:black;margin-left:30px;font-size:1rem;font-weight:bold;">비밀번호 확인</span>
					<input type="password" id="user_pwd2" onchange="pwdCheck2();">
					<span id="pwd_check2" class="helper-text" style="margin-left:140px;">6~16자 영문 대 소문자, 숫자를 사용하세요.</span>
				</label>
				<label>
					<span style="color:black;margin-left:30px;font-size:1rem;font-weight:bold;">이름</span>
					<input type="text" id="user_name" onchange="nameCheck();">
					<span id="name_check" class="helper-text" style="margin-left:140px;">한글만 가능합니다.</span>
				</label>
				<label>
					<span style="color:black;margin-left:30px;font-size:1rem;font-weight:bold;">이메일</span>
					<input type="text" id="user_email" onchange="emailCheck();">
					<span id="email_check" class="helper-text" style="margin-left:140px;">중복된 이메일은 사용하실 수 없습니다.</span>
				</label>
				<label>
					<span style="color:black;margin-left:30px;font-size:1rem;font-weight:bold;">휴대전화</span>
					<input type="text" value="010" readonly style="width:180px!important;padding-left:10px!important;">
					<input type="text" maxlength="4" style="width:190px!important;margin-left:10px!important;" id="user_phone" onchange="phoneCheck();">
					<span style="width:2px;display:inline-block;background-color:white;height:47px;position:relative;top:-1px;left:-5px;border-top:1px solid #ddd;border-bottom:1px solid #ddd;line-height:46px;text-align:center;">-</span>
					<input type="text" maxlength="4" style="width:190px!important;margin-left:-10px!important;" id="user_phone2" onchange="phoneCheck2();">
					<span id="phone_check" class="helper-text" data-error="wrong" data-success="right" style="margin-left:140px;margin-bottom:20px;">숫자만 가능합니다.</span>
				</label>
				<label>
					<span style="color:black;margin-left:30px;font-size:1rem;font-weight:bold;margin-top:10px;float:left;">생년월일</span>
					<select id="user_year" name="user_year" class="browser-default" style="width:194px;float:left;margin-left:44px;border:1px solid #ddd;font-size:1rem;">
					    <option disabled selected>YEAR</option>
					    <% for(int i=2018; i>1909; i--){ %>
							<option><%=i %>년</option>
						<% } %>
					</select>
					  <select id="user_month" name="user_month" class="browser-default" style="width:194px;margin-left:13px;float:left;border:1px solid #ddd;font-size:1rem;">
					    <option disabled selected>MONTH</option>
					    <% for(int i=1; i<=12; i++){ %>
							<option><%=i %>월</option>
						<% } %>
					  </select>
					<select id="user_day" name="user_day" class="browser-default" style="width:194px;margin-left:13px;float:left;border:1px solid #ddd;font-size:1rem;">
					    <option disabled selected>DAY</option>
					    <% for(int i=1; i<=31; i++){ %>
							<option><%=i %>일</option>
						<% } %>
					  </select>					  
				</label>
				<div style="clear:both;height:36px;"></div>
				<label><span style="color:black;margin-left:30px;font-size:1rem;font-weight:bold;">주소</span></label>
				<input type="text" id="sample6_postcode" placeholder="우편번호" style="margin-left:69px;width:182px;background-color:white;border:1px solid #ddd;padding-left:10px;">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="width:192px;background-color:black;color:white;height:46px;border:none;margin-left:10px;cursor:pointer;"><br>
				<input type="text" id="sample6_address" placeholder="주소" style="width:788px;background-color:white;border:1px solid #ddd;margin-left:132px;padding-left:10px;">
				<input type="text" id="sample6_address2" placeholder="상세주소" style="width:788px;background-color:white;border:1px solid #ddd;margin-left:132px;padding-left:10px;">
				</div> 	
				<button onclick="submit();" style="cursor:pointer;">확인</button>
				<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
				<script>
				    function sample6_execDaumPostcode() {
				        new daum.Postcode({
				            oncomplete: function(data) {
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
				                if(data.userSelectedType === 'R'){
				                    //법정동명이 있을 경우 추가한다.
				                    if(data.bname !== ''){
				                        extraAddr += data.bname;
				                    }
				                    // 건물명이 있을 경우 추가한다.
				                    if(data.buildingName !== ''){
				                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				                    }
				                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
				                }
				
				                // 우편번호와 주소 정보를 해당 필드에 넣는다.
				                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
				                document.getElementById('sample6_address').value = fullAddr;
				
				                // 커서를 상세주소 필드로 이동한다.
				                document.getElementById('sample6_address2').focus();
				            }
				        }).open();
				    }
				    
					var submitCount=0;
				    function idCheck(){
				    	var regExp;
				    	var resultChk;
				    	var userId = $('#user_id').val();
				    	regExp = /^[a-z0-9]{5,12}$/;
				    	resultChk = regExp.test(userId);
				    	if(resultChk == false){
				    		$('#id_check').html("<span style='color:red;'>5~12자의 영문 소문자와 숫자만 사용 가능합니다.</span>");
				    	}else{
				    		$.ajax({
					 			url : "/userIdCheck",
					 			data : {userId : userId},
					 			type : "post",
					 			success : function(result){
					 				if(result==1){
					 					$('#id_check').html("<span style='color:red;'>이미 사용중이거나 탈퇴한 아이디입니다.</span>");
					 				} else{
					 					$('#id_check').html("<span style='color:#26a69a;'>사용할 수 있는 아이디입니다.</span>");
					 					submitCount+=1;
					 				}
					 			}
					 		});	
				    	}
				    }
				    
				    function pwdCheck(){
				    	var regExp;
				    	var resultChk;
				    	var userPwd = $('#user_pwd').val();
				    	regExp = /^[a-zA-Z0-9]{6,16}$/;
				    	resultChk = regExp.test(userPwd);
				    	if(resultChk == false){
				    		$('#pwd_check').html("<span style='color:red;'>6~16자 영문 대 소문자, 숫자를 사용하세요.</span>");
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
				    
				    function nameCheck(){
				    	var regExp;
				    	var resultChk;
				    	var userName = $('#user_name').val();
				    	regExp = /^[가-힣]+$/;
				    	resultChk = regExp.test(userName);
				    	if(resultChk == false){
				    		$('#name_check').html("<span style='color:red;'>한글만 가능합니다.</span>");
				    	}else{
				    		$('#name_check').html("<span style='color:#26a69a;'>OK</span>");
				    		submitCount+=1;
				    	}
				    }
				    
				    function emailCheck(){
				    	var regExp;
				    	var resultChk;
				    	var userEmail = $('#user_email').val();
				    	regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
				    	resultChk = regExp.test(userEmail);
				    	if(resultChk == false){
				    		$('#email_check').html("<span style='color:red;'>이메일 형식에 맞춰서 작성해주세요.	`</span>");
				    	}else{
				    		$.ajax({
					 			url : "/userEmail",
					 			data : {userEmail : userEmail},
					 			type : "post",
					 			success : function(result){
					 				if(result==1){
					 					$('#email_check').html("<span style='color:red;'>이미 사용중인 이메일입니다.</span>");
					 				} else{
					 					$('#email_check').html("<span style='color:#26a69a;'>OK</span>");
					 					submitCount+=1;
					 				}
					 			}
					 		});	
				    	}
				    }
				    
				   function phoneCheck(){
				    	var regExp;
				    	var resultChk;
				    	var userPhone = $('#user_phone').val();
				    	regExp = /^[0-9]+$/;
				    	resultChk = regExp.test(userPhone);
				    	if(resultChk == false){
				    		$('#phone_check').html("<span style='color:red;'>숫자만 가능합니다.</span>");
				    	}else{
				    		$('#phone_check').html("<span style='color:#26a69a;'>OK</span>");
				    		
				    	}
				   }
				   
				   function phoneCheck2(){
				    	var regExp;
				    	var resultChk;
				    	var userPhone = $('#user_phone2').val();
				    	regExp = /^[0-9]+$/;
				    	resultChk = regExp.test(userPhone);
				    	if(resultChk == false){
				    		$('#phone_check').html("<span style='color:red;'>숫자만 가능합니다.</span>");
				    	}else{
				    		$('#phone_check').html("<span style='color:#26a69a;'>OK</span>");
				    		submitCount+=1;
				    		console.log(submitCount);
				    	}
				   }
				   function submit(){
					   if(submitCount>=6){
						   var userId = $('#user_id').val();
						   var userPwd = $('#user_pwd').val();
						   var userName = $('#user_name').val();
						   var userEmail = $('#user_email').val();
						   var userPhone = $('#user_phone').val();
						   var userPhone2 = $('#user_phone2').val();
						   var userYear = $('#user_year option:selected').val();
						   var userMonth = $('#user_month option:selected').val();
						   var userDay = $('#user_day option:selected').val();
						   var userAddr = $('#sample6_address').val();
						   var userAddr2 = $('#sample6_address2').val();
						   
						   var user = {id:userId, pwd:userPwd, name:userName, email:userEmail, phone:userPhone, phone2:userPhone2, 
								       year:userYear, month:userMonth, day:userDay, addr:userAddr, addr2:userAddr2};
						   
						   $.ajax({
					 			url : "/joinus",
					 			data : user,
					 			type : "post",
					 			success:function(){
					 				location.href="/views/main/joinusFinal.jsp";
					 			}
					 		});	
					   }
				    }

				</script>		
		</div>
		<div style="background-color:white;height:20px;"></div>
	</section>
</body>
</html>