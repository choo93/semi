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
[type="checkbox"]:checked+span:not (.lever ):before {
	border-right: 2px solid #b43029!important;
	border-bottom: 2px solid #b43029!important;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<section>
		<div class="wrapper">
			<h4 style="margin: 0;">회원가입</h4>
			<div class="step_design">
				<div class="step_circle">
					<img src="../../image/main/step1.png"
						style="width: 35px; margin: 17px;">
				</div>
				<div class="step_write">
					<h6>Step1</h6>
					<p>약관동의</p>
				</div>
				<div class="step_circle" style="background-color: #ddd;">
					<img src="../../image/main/step2.png"
						style="width: 35px; margin: 18px; margin-left: 21px;">
				</div>
				<div class="step_write">
					<h6 style="color: #999;">Step2</h6>
					<p style="color: #999;">정보입력</p>
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
			<div class="authorized_box" style="margin-bottom:20px;">
				<label> <input type="checkbox" id="checkall" /> <span>회원 약관동의(회원
						정책, 개인정보 수집 및 활용)에 모두 동의 합니다.</span>
				</label>
				<div class="authorized_white">
					<h5>회원 약관동의</h5>
					<h6>
						설레임 사이트 회원 정책 <span>(필수)</span>
					</h6>
					<div class="authorized_content">
						<p class="authorized_content_title">1. 신규가입</p>
						<p class="authorized_content_subject">아이디 발급</p>
						<p class="authorized_content_text">회원은 한 개의 아이디(ID)만을 사용 하실 수
							있으며, 이름과 전화번호로 중복가입 여부를 확인합니다. 또한 회원의 정보가 설레임이 보유한 고객정보와 일치 할
							경우에는 설레임의 정책에 따라 개인정보를 통합하여 관리 합니다.</p>

						<p class="authorized_content_subject">회원의 비밀번호</p>
						<p class="authorized_content_text">설레임은 개인정보를 암호화하는 등 엄격한 보호와
							관리를 하고 있으며, 특히 회원의 비밀번호는 설레임 담당자도 확인할 수 없습니다. 비밀번호는 8자 이상, 영문대문자,
							영문소문자, 숫자, 특수문자 중 3가지 이상을 혼합하여 생성하여야 합니다.</p>

						<p class="authorized_content_title">2. 회원정보 수정</p>
						<p class="authorized_content_subject">회원 정보수정방법</p>
						<p class="authorized_content_text">아이디(ID), 비밀번호로 본인여부를 확인한 후
							원하시는 내용으로 수정하실 수 있습니다.</p>

						<p class="authorized_content_subject">비밀번호변경</p>
						<p class="authorized_content_text">비밀번호는 언제든지 변경하실 수 있습니다.
							변경하신 이후에는 반드시 새로운 비밀번호로만 로그인 하실 수 있습니다.</p>

						<p class="authorized_content_title">3. 아이디 또는 비밀번호 분실</p>
						<p class="authorized_content_subject">아이디 찾기</p>
						<p class="authorized_content_text">아이디 찾기를 통해서 이름/전화번호 인증 후
							아이디를 확인할 수 있습니다.</p>

						<p class="authorized_content_subject">비밀번호 찾기</p>
						<p class="authorized_content_text">비밀번호 찾기를 통해서 확인이 가능하며, 가입 시
							기재한 이메일 주소로 확인 결과가 발송됩니다.</p>

						<p class="authorized_content_title">4. 회원탈퇴 및 제재</p>
						<p class="authorized_content_subject">회원의 탈퇴</p>
						<p class="authorized_content_text">설레임 사이트의 회원 탈퇴는 본 웹사이트를 통해
							언제든지 가능합니다. 회원 탈퇴 시 고객님의 회원 정보는 영업일 기준 최대 하루 내로 삭제됩니다. 다만 회원 정보와는
							별개로 설레임 내부의 영업정보와 기록정보, 설레임 멤버십 정보 등이 별도로 존재 할 경우에는 설레임의 개인정보
							관리정책에 의거 별도로 유지 및 관리될 수 있습니다.</p>

						<p class="authorized_content_subject">회원의 제제</p>
						<p class="authorized_content_text">설레임 정책에 위배되는 게시물을 게시할 경우 해당
							게시물에 대하여 이용자에게 사전통보 없이 설레임이 삭제할 수 있습니다. 또한, 회원 약관에 의거 회원의 부적절한
							게시물 또는 행위로 인하여 타인 또는 설레임에 피해를 줄 경우 웹사이트 이용이 제한될 수 있습니다.</p>

						<p class="authorized_content_title">5. 홈페이지 서비스 및 회원관리 문의</p>
					</div>
					<div style="margin-top: 13px;">
						<label style="margin-top: 20px;"> <input type="checkbox" name="chk" id="checkedtwo" class="checkone"/>
							<span>동의 합니다.</span>
						</label>
						<p class="authorized_content_check">※ 필수 항목에 대한 동의를 하지 않을 권리는
							있으나, 미동의 시 가입을 진행하실 수 없습니다.</p>
					</div>

					<h6>
						개인정보 수집 및 활용 <span>(필수)</span>
					</h6>
					<div class="authorized_content">
						<p class="authorized_content_title">1. 개인정보의 처리목적</p>
						<p class="authorized_content_text">설레임 원활한 서비스 제공을 위하여 회원님의 개인정보를 수집•이용하고 있습니다. 구체적인
							처리목적은 다음과 같습니다.</p>
						<p class="authorized_content_subject">가. 회원 가입 및 관리</p> 
						<p class="authorized_content_text">- 온라인, 웹 사이트를 통한 상품구매, 예약, 정보전달 서비스 제공</p>
						<p class="authorized_content_text">- 본인확인, 주문, 배송, 취소 환불 등 관련 서비스를 위한 의사소통 경로 확보</p> 
						<p class="authorized_content_subject">나. 멤버십 회원 가입 및 관리</p>
						<p class="authorized_content_text">- 회원제 서비스 이용에 따른 본인 확인</p>
						<p class="authorized_content_text">- 고지사항 전달, 불만처리 등을 위한 원활한 의사소통 경로의 확보 </p>
						<p class="authorized_content_text">- 회원권 배송에 대한 정확한 배송지 확보 </p>
						<p class="authorized_content_subject">다. 기타 서비스 제공</p>
						<p class="authorized_content_text">- 서비스 제공에 관련한 본인확인 및 계약내용 이행 </p>
						<p class="authorized_content_text">- 고객 만족도 조사에의 활용 </p>
						<p class="authorized_content_text">- 맞춤 서비스 제공</p>
						<p class="authorized_content_title">2. 처리하는 개인정보의 항목</p>
						<p class="authorized_content_text">설레임은 원활한 민원처리를 위하여 필요한 최소한의 범위 내에서 아래와 같이 회원님의 개인정보를 수집하고 있습니다.</p> 
						<p class="authorized_content_subject">가. 회원가입 </p>
						<p class="authorized_content_text">- 필수항목 : 이름, 이메일, 전화번호, 생년월일 </p>
						<p class="authorized_content_text">- 선택항목 : 주소, 성별, 국가정보 </p>
						<p class="authorized_content_title">3. 개인정보의 처리 및 보유기간</p>
						<p class="authorized_content_text">설레임은 회원님이 개인정보의 수집에 대한 동의를 철회하거나 보유기간의 경과, 개인정보의 처리목적 달성 등 그 개인정보가
						불필요하게 되었을 때에는 지체 없이 개인정보를 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 아래와
						같은 경우 회사는 일정한 기간 동안 회원정보를 보관합니다. </p>
						<p class="authorized_content_text">- 계약 또는 청약철회 등에 관한 기록 : 5년 </p>
						<p class="authorized_content_text">- 대금결제 및 재화 등의 공급에 관한 기록 : 5년 </p>
						<p class="authorized_content_text">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 </p>
						<p class="authorized_content_text">회원의 경우 1년간(최종 로그인 후 12개월) 웹사이트 이용기록이 없을 시, 해당 회원의 개인정보는 정보통신망 이용촉진 및 정보보호 등에 관한
						법률 제29조에 근거하여 해당 회원에게 사전통지한 후 개인정보를 파기하거나 별도로 분리하여 저장 관리합니다.</p>

						<p class="authorized_content_title">4. 개인정보 수집거부 및 거부시의 불이익</p>
						<p class="authorized_content_text">회원님은 본인의 개인정보 수집•이용에 관한 동의를 거부할 권리가 있습니다. 다만 필수항목 수집동의를 거부하는 경우
						원활한 서비스 제공에 문제가 있을 수 있습니다.</p>
					</div>
					<div style="margin-top: 13px;">
						<label style="margin-top: 20px;"> <input type="checkbox" name="chk" id="checkedone" class="checkone"/>
							<span>동의 합니다.</span>
						</label>
						<p class="authorized_content_check">※ 필수 항목에 대한 동의를 하지 않을 권리는
							있으나, 미동의 시 가입을 진행하실 수 없습니다.</p>
					</div>					
				</div>
				<div style="background-color:#f5f5f5;height:25px;"></div>
			</div>
			<button id="next_button" onclick="next();" style="cursor:pointer;">다음</button>
			
		</div>
		<div style="background-color:white;height:20px;"></div>
	</section>
</body>
</html>