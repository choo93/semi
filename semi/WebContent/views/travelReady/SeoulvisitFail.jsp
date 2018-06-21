<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@ page import="semi.travelready.model.vo.*" import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<style>
    #content
    {
    margin:0 auto;
    width:960px;
  	overflow:hidden;
    height:auto;
    padding-left:0px;
    }
    #pagecontent
    {
    	min-height:1000px;
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
    	padding-bottom:200px;
    }
    .dis
    {
    background:url(http://korean.visitseoul.net/media/img/Essential_Information?srvcId=MEDIA&parentSn=116&fileTy=MEDIA&fileNo=1);
	background-repeat:no-repeat;
	background-size:100% 100%;
    }
   #content p{
    	font-weight:700;
    }
    .linka
    {
    font-style: italic;
    color: #007bc0;
    font-weight: 600;
    text-decoration: underline;
    }
    #comment
    {
    width:100%;
    height:300px;
    padding:25px;

    }
    textarea
    {
    	border-radius:10px;
    }
    </style>

<body id="scroll">
<%@ include file="/views/main/header.jsp" %>
	<section>
	<div id="pagecontent">
				<section id="content">					
					<h5>서울 방문에 관한 모든것</h5>
					<p>&nbsp;</p><p>&nbsp;</p>
					<h6>비자</h6>
					<p>&nbsp;</p>
					<p>대한민국에 입국하는 방문객은 입국을 위하여 유효한 여권 및 비자를 소지하고 있어야 합니다. 
					비자면제프로그램에 해당하는 국가 또는 비자 면제국에서 온 방문객은 여행 목적으로만 비자 없이 입국할 수 있습니다. 
					취업 및 교육 등 다른 모든 목적을 위해서는 비자가 있어야 합니다. 
					비자 면제 협정을 체결하지 않은 국가에서 온 방문객은 한국에 입국하기 전 대한민국 대사관 또는 영사관에서 비자를 신청해야 합니다. 
					현지 대사관 또는 영사관과 상담하시기 바랍니다.</p>
					<p>&nbsp;</p>
					<div style="width:50%; height:300px; margin-left:25%; background:url(http://korean.visitseoul.net/comm/getImage?srvcId=SECTION&parentSn=123&fileTy=ATTACH&fileNo=1&thumbTy=L);
											background-repeat:no-repeat;
											background-size:100% 100%;"></div>
					<p>&nbsp;</p>
					<p style="color:#0171b0;">※ 다음은 대한민국과 비자 면제 협정을 체결한 국가 목록입니다. 
					해당 국가의 국민은 명시된 기간 동안 여행자 신분으로 한국에 입국 및 체류할 수 있습니다.</p>
					<p>&nbsp;</p>
					<table style="border-top:1px solid #c8c8c8;">
						<tr>
							<th style="width:20%;" style="padding:3px 4px 4px 26px;">대륙</th>
							<th style="width:80%;">국가</th>
						</tr>
						<tr>
							<td>아시아</td>
							<td>브루나이(30일), 홍콩(90일), 인도네시아(외교 및 공식 30일), 일본(90일), 마카오(90일), 대만(90일)</td>
						</tr>
						<tr>
							<td>북미 및 남미</td>
							<td>아르헨티나(30일), 캐나다(6개월), 에콰도르(90일), 가이아나(30일), 온두라스(30일), 파라과이(30일), 미국(90일)</td>
						</tr>
						<tr>
							<td>중동 및 아프리카</td>
							<td>바레인(30일), 이집트(30일), 쿠웨이트(30일), 레바논(외교 및 공식 30일), 모리셔스(30일), 오만(30일), 카타르(30일), 사우디 아라비아(30일), 세이셸(30일), 남아프리카공화국(30일), 스위스(30일), 아랍에미리트(30일)</td>
						</tr>
						<tr>
							<td>유럽</td>
							<td>알바니아(30일), 안도라(30일), 보스니아 헤르체고비나(30일), 크로아티아(90일), 키프로스(30일), 모나코(30일), 몬테네그로(30일), 산마리노(30일), 세르비아(90일), 슬로베니아(90일), 바티칸(30일)</td>
						</tr>
						<tr>
							<td>오세아니아</td>
							<td>호주(90일), 피지(30일), 괌(30일), 키리바시(30일), 마셜제도(30일), 미크로네시아(30일), 나우루(30일), 뉴칼레도니아(30일), 팔라우(30일), 사모아(30일), 솔로몬제도(30일), 통가(30일), 투발루(30일)</td>
						</tr>
					</table>
					<p>&nbsp;</p>
					<p style="color:#0171b0;">※본 목록은 2015년 기준으로 작성되었습니다. 한국 방문 전 해당 국가의 한국 대사관 또는 영사관에서 관련 정보를 확인하시기 바랍니다.</p>
					<p>&nbsp;</p>
					<p><a href="http://www.hikorea.go.kr/pt/kr/info/popup/icis/VisaWaiver_pop.htm" target="_blank" class="linka">> 비자면제프로그램 국가 목록(2015년 10월 기준)</a></p>
					<p>&nbsp;</p>
					<p><a href="https://www.visa.go.kr/#this" target="_blank" class="linka">> 비자에 대한 보다 자세한 정보</a> </p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					
					<h5 style="color:#0171b0;">출입국 및 세관</h5>
					<p>&nbsp;</p>
					<p>비행기에서 내린 후 공항 내의 표지와 방향을 따라 출입국 관리소로 이동하세요. 비거주 외국인은 입국 신고서를 작성해야 합니다.</p>
					<p>&nbsp;</p>
					
					<div style="width:50%; height:300px; 
					background:url(http://korean.visitseoul.net/humanframe/theme/visitseoul/assets/images/content/img-content-trevelinfo-getting-to-seoul2.jpg);
					background-repeat:no-repeat; background-size:100% 100%;  float:left;">
					</div>
					<div style="width:50%; height:300px; float:left;">
						<ul>
							<li></li>
							<li>2.성</li>
							<li>3.이름</li>
							<li>4.성별</li>
							<li>5.국적</li>
							<li>6.생년월일</li>
							<li>7.여권번호</li>
							<li>8.주소</li>
							<li>9.직업</li>
							<li>10.한국 내 주소(호텔명,사택 주소 등)</li>
							<li>11.방문 목적</li>
							<li>12.비행기 편명</li>
							<li>13.출발지</li>
							<li>14.서명</li>
						</ul>
					</div>
					<p>&nbsp;</p>
					<p>출입국 관리소를 통과하고 수화물을 찾은 후 터미널을 나가기 전 세관을 통과해야 합니다. 
					신고할 내용이 없더라도 세관 신고서를 제시해야 합니다. 
					함께 동행하는 가족 구성원은 하나의 세관 신고서를 사용할 수 있습니다.</p>
					<p>&nbsp;</p>
					<h5 style="color:#0171b0;">자동 출입국 심사(SES)</h5>
					<p>자동출입국심사 신청자는 실제 직원이 아닌 자동 게이트를 이용하여 출입국 심사를 통과하고 이를 통해 대기 및 처리 시간을 줄일 수 있습니다.<br>
					자동출입국심사를 이용하기 위해서는 홈페이지(<a style="color:#0171b0;" href="http://www.ses.go.kr" target="_blank" title="새창으로 이동">www.ses.go.kr</a>)를 통하여 미리 신청 및 등록해야 합니다.
 					본 프로그램은 대한민국 시민, 등록된 외국인 일부, 글로벌 엔트리를 등록한 미국 시민이 이용할 수 있습니다. 
 					자세한 사항은 홈페이지(<a href="http://www.ses.go.kr" target="_blank" style="color:#0171b0;">www.ses.go.kr</a>)를 참고하시기 바랍니다.</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<h5 style="color:#0171b0;">면세 한도 및 신고 요구사항</h5>
					<p>면세 물품은 주류 1병(최대 1리터), 담배 10보루 및 향수 60ml를 초과할 수 없습니다. 
					한국에서 주류 및 담배는 만 19세 이상만 구입할 수 있습니다. 일반적으로 최대 총액 미 400달러까지의 물품에는 세금이 요구되지 않습니다. 
					미 10,000달러를 초과하는 액수의 현금 또는 이와 동등한 수준의 외국 통화를 소지한 경우 입국 시 신고해야 합니다.</p>
					
					<div style="width:100%; height:300px; 
					background:url(http://korean.visitseoul.net//humanframe/theme/visitseoul/assets/images/content/img-content-trevelinfo-getting-to-seoul3.jpg);
					background-repeat:no-repeat; background-size:100% 100%;">
					</div>
					<p>&nbsp;</p>
					<p>세관과 관련한 자세한 사항은 관세청 홈페이지를 참고하시기 바랍니다.</p>
					<p>Website : <a href="http://www.customs.go.kr/kcshome/index.jsp" target="_blank" style="color:#0171b0;">http://www.customs.go.kr/kcshome/index.jsp</a></p>
					<p>&nbsp;</p>
					<p>출입국과 관련한 자세한 사항은 출입국 관리소 홈페이지를 참고하시기 바랍니다.</p>
					<p>Website : <a style="color:#0171b0;" href="http://www.hikorea.go.kr" target="_blank" title="새창으로 이동">http://www.hikorea.go.kr</a></p>
					<p>&nbsp;</p>
					<p>전화 : 1345 (지역번호 없음)</p>
					
					<div id="comment" style="background-color:transparent; border:1px solid #f2f2f2">
						<div style="width:100%; height:20%; font-weight:700"><span>소셜 로그인</span></div>
						<div style="width:100%; height:70%; margin-top:10px;">
							<div style="width:100px; height:130px;float:left; background:url(/image/logo.png); background-repeat:no-repeat; background-size:100%;"></div>
							<form action="/writeComment">
							<div style="width:85%; height:100%; margin-left:15%;">
								<ul style="border-radius:10px;">
									<li><textarea placeholder="소셜 계정으로 작성하세요" rows="1" readonly></textarea></li>
									<li><textarea name="content" rows="10" style="height:80px;"></textarea></li>
									<li style="margin-bottom:10px;height:20px;">
									<ul style="list-style:none; width:100%; height:20px; float:left;">
										<li style="width:50%;list-style:none; float:left;"><button>사진</button></li>
										<li style="padding-left:350px;width:50%;list-style:none; float:right;"><strong>0</strong><span>/250</span></li>
									</ul>
									
									</li>
									<li style="float:right;"><button>보내기</button></li>
								</ul>
							</form>
							</div>
						</div>
					
					</div>
					
					<div style="width:100%; height:30px;  border-bottom:1px solid black; margin-top:20px;">
					전체댓글수<b>0</b>
					<ul style="list-style:none; float:right; width:200px; height:100%;">
						<li style="width:33.3%;list-style:none; float:left;">최신순</li>
						<li style="width:33.3%;list-style:none; float:left;">좋아요</li>
						<li style="width:33.3%;list-style:none; float:left;">싫어요</li>
					</ul>
					</div>
					
					
					
				</section>
			</div>
		</section>

</body>
</html>