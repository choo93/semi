<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*" import="semi.travelready.model.vo.*" import="java.util.*" %>
<%
	SeoulUser user = (SeoulUser) session.getAttribute("user");
%>     
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - FAQ</title>
<link rel="icon" href="../../image/main/favicon.ico">
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>

		

<style>
*{margin:0; padding:0;font-family: 'Nanum Gothic', sans-serif; font-size:0.9rem;}
a
{text-decoration:none!important;color:black;}
     #pagecontent
    {
    	height:auto;
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
   
    }
    #content
    {
    margin:0 auto;
    width:960px;
    min-height:auto;
    padding-left:0px;
    }
    #faqtitle
    {
    	width:960px;
    	height:90px;
  
    	margin-top:30px;
    	margin-bottom:30px;
    
    }
    #faqtitleimg
    {
    width: 74px;
    height: 74px;
    background-image:url(/views/travelReady/image/Faq_0.jpg);
    background-repeat: no-repeat;
    background-size:100% 100%;
    margin:0px;
    float:left;
}
legend
{
	visibility: hidden;
}

fieldset{
	text-align:center;
	border:0px;
}
#category ul li{
	width:12.5%;
	height:100%;
	list-style:none;
	float:left;
	 background-repeat: no-repeat; 
	 background-size:100% 70%;
	 text-align:center;
	 line-height:180px;
}
.span
{
	width:100px;
	padding-top:60px;
}
#faqcontent
{
	margin-top:2%;
	width:100%;
	height:auto;

}
dt
{
	border-top:1px solid #dcdcdc;
	padding : 10px 20px 10px 45px;
	background-repeat:no-repeat;
	background-image:url(/views/travelReady/image/question.png);
	background-size:3% 100%;
	line-height:22px;
}


dd
{
display:none; 
border-bottom:1px solid #dcdcdc; 
width:100%; 
padding : 10px 20px 10px 45px;
line-height:22px;
background-color:#e3e3e3;
}





</style>
<script>
var toggleText1 = false;
var toggleText2 = false;
var index=0;
function test(id){

	$('#'+id).toggle('display');

}
</script>

<body id="scroll">

				<header style="position:fixed;width:50px;border-right:1px solid #ddd;height:100%;">
				<div id="click">
					<a href="#" class="click"><img
						src="/image/main/menu.png" style="width:30px;margin-top:10px;margin-left:10px;background-color:white;z-index:999;"></a>
				</div>
				<div id="click-open" style="display:none;">
					<a href="http://localhost"><img
						src="/image/main/logo.png" id="main_logo" style="width:260px;margin-left:20px;margin-top:20px;"></a>
						
					<style>
					a{
						font-size:1rem!important;
					}
					#login_join{
						text-align:center;
						margin-top:20px;
						margin-bottom:20px;
					}
					.main-login{
						margin-right:20px;	
					}
					#login_join>a:hover{
						color:#b43029;
					}
					.category{
						cursor:pointer;
						width:100%;
						display:block;
						border-left:3px solid white;
						padding-left:17px;
					}
					.category:hover{
						border-left:3px solid #b43029;
					}
					.subcategory{
						display:none;
					}
					.subcategory>li{
						height:40px;
						line-height:40px;
					}
					.subcategory>li>a{
						display:block;
						width:100%;
						padding-left:40px;
					}
					.subcategory>li>a:hover{
						background-color:rgba(0,0,0,0.05);
					}
					a, ul>li{
						font-size:1rem!important;
					}
					
					</style>
						
					<% if(user==null){ %>
			        <div id="login_join">
			        	<a href="/views/main/login.jsp" class="main-login" style="font-size:1rem!important;">로그인</a>
			        	<a href="/views/main/joinus.jsp" style="font-size:1rem!important;">회원가입</a>
			        </div>    
			        <% } else { %>
			        <div id="login_join" class="login_after">	
					<% if(user.getUserId().equals("admin")){ %>
						<p style="margin-bottom:8px;font-size:1rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>로 로그인 하셨습니다</p>
					<% } else { %>
						<p style="margin-bottom:8px;margin-left:-20px;font-size:1rem;"><span style="font-weight:bold;"><%=user.getUserName()%></span>님 환영합니다</p>
						<a href="/myPage" style="margin-left:-19px;margin-right:15px;font-size:1.5rem!important;">마이페이지</a>
					<% } %>
					<a href="/logout" style="font-size:1rem!important;">로그아웃</a><br>
			        </div>
			        <% } %>	
			        
			        <style>
			        	#login_join>a:hover{
			        		text-decoration:none;
			        	}
			        	.mainCategory>li{
			        		font-size:1.7rem!important;
			        		margin-left:-40px;
			        		padding-top:20px;
			        		padding-bottom:20px;
			        	}
			        	.mainCategory>li>ul{
			        		list-style:none;
			        	}
			        	.mainCategory>li>ul>li{
			        		margin-left:-40px;
			        		padding-top:20px;
			        		padding-bottom:20px;
			        	}
			        	.mainCategory>li>ul>li>a{
			        		width:100%;
			        		display:block;
			        		font-size:1rem!important;
			        	}
			        	.mainCategory>li>ul>li>a:hover{
			        		text-decoration:none;
			        	}
			        </style>	        	
					<!-- common category -->
					<ul class="mainCategory" style="clear:both;list-style:none;margin-left:73px;">
						<li><span class="category category1">하이라이트</span>
							<ul class="subcategory subcategory1" style="display:block;">
								<li><a href="/views/placerank/place_Photo.jsp">Top 10</a></li>
								<li><a href="/views/festival/festivalPhoto.jsp">축제&amp;행사</a></li>
							</ul>
						</li>
						<li><span class="category category2">서울즐기기</span>
							<ul class="subcategory subcategory2">
								<li><a href="/enjoyList?type=type1">추천코스</a></li>
								<li><a href="/enjoyList?type=type2">명소</a></li>
								<li><a href="/enjoyList?type=type3">쇼핑</a></li>
								<li><a href="/enjoyList?type=type5">음식점</a></li>
								<li><a href="/enjoyList?type=type6">캘린더</a></li>
							</ul>
						</li>
						<li><span class="category category3">예약하기</span>
							<ul class="subcategory subcategory3">
								<li><a href="/concertList">공연예약</a></li>
								<li><a href="/hotelList">호텔예약</a></li>
								<li><a href="/doboList">서울도보관광예약</a></li>
							</ul>
						</li>
						<li><span class="category category4">여행준비</span>
							<ul class="subcategory subcategory4">
								<li><a href="/guideBookDown">가이드북</a></li>
								<li><a href="/views/travelReady/travelInformation.jsp">여행필수정보</a></li>
								<li><a href="/seoulImage">서울 관광 이미지</a></li>
								<li><a href="/faq">FAQ</a></li>
							</ul>
						</li>
					</ul>
		
					<script>
					$(".category1").click(function(){
						$(".subcategory1").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category2").click(function(){
						$(".subcategory2").toggle("slow");
						$(".subcategory1").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category3").click(function(){
						$(".subcategory3").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory1").css('display','none');
						$(".subcategory4").css('display','none');
					});
					$(".category4").click(function(){
						$(".subcategory4").toggle("slow");
						$(".subcategory2").css('display','none');
						$(".subcategory3").css('display','none');
						$(".subcategory1").css('display','none');
					});			
					</script>
				</div>

				
				</header>



<section>
			<div id="pagecontent">
			<article id="content">
				<h2 style="font-size:24px; font-weight:bold; color:#0069d9;padding-top:50px;">자주 하시는 질문</h2>
				<div id="faqtitle">
				<div id="faqtitleimg"></div>
				<strong style="font-size:18px;">"FAQ를 통해서 원하시는 답변을 쉽고 빠르게 찾아보세요"</strong><br>
			

				질문을 하기시 전 자주하시는 질문을 찾아보시면 보다 신속하게 궁금증을 해소하실 수 있습니다.<br>
				원하는 내용을 찾지 못하실 경우 '질문과 답변' 게시판에 문의해 주시면 친절하게 안내해 드리겠습니다.<br>
				</div>
				<a href="/qna" class="btn btn-outline-primary">질문과 답변 게시판 이동</a>
				<fieldset>
					<legend>게시물 검색</legend>
					
					<form action="/faqSearch">
									<div class="input-group">
      <input type="text" class="form-control" name="search" placeholder="Search for..." aria-label="Search for...">
      <span class="input-group-btn">
        <input type="submit" class="btn btn-primary" value="검색"></button>
 
      </span>
      </div>
					</form>
				</fieldset>
				
				<div id="category" style="width:960px; height:100px; margin-top:30px; margin-bottom:30px;">
					<ul style="width:100%;height:100%;float:left; list-style:none;">
						<a href="/faqCategory?search=서울 시티 투어 탑승"><li style="background-image:url(/views/travelReady/image/bus.png);"><span class="span">서울 시티 투어 탑승</span></li></a>
						<a href="/faqCategory?search=호텔 예약"><li style="background-image:url(/views/travelReady/image/hotel.png);"><span class="span">호텔 예약</span></li></a>
						<a href="/faqCategory?search=도보 관광"><li style="background-image:url(/views/travelReady/image/work.png);"><span class="span">도보 관광</span></li></a>
						<a href="/faqCategory?search=모바일서비스"><li style="background-image:url(/views/travelReady/image/mobile.png);"><span class="span">모바일서비스</span></li></a>
						<a href="/faqCategory?search=문화행사 예매"><li style="background-image:url(/views/travelReady/image/culture.png);"><span class="span">문화행사 예매</span></li></a>
						<a href="/faqCategory?search=사이트이용"><li style="background-image:url(/views/travelReady/image/site.png);"><span class="span">사이트이용</span></li></a>
						<a href="/faqCategory?search=가이드북"><li style="background-image:url(/views/travelReady/image/guidebook.png);"><span class="span">가이드북</span></li></a>
						<a href="/faqCategory?search=기타"><li style="background-image:url(/views/travelReady/image/etc.png);"><span class="span">기타</span></li></a>
					</ul>
				</div>
				
				<div style="width:100%; height:auto;">
					<h3 style="font-size:24px; margin-right:50px;">FAQ</h3>
								
				
					<dl id="faqcontent">
				
						<dt style="border-bottom:1px solid #dcdcdc;">등록된 글이 없습니다.</dt>
					
				
					</dl>					
				</div>
				<form action="/views/travelReady/FAQAnswer.jsp">
				<%if(user!=null && user.getUserId().equals("admin")){ %>
				<input type="submit" value="등록" class="btn btn-primary">
				<%} %>
				</form>

				
			
		
			</article>
			
			</div>

			
			</section>
			
				<script>
					$('.click').click(function(){
						$('header').css('width','300px');
						$('#click').css('display','none');
						$('section').css('margin-left','301px');
						$('section').css('opacity','0.5');
						$('section').css('background-color','rgba(0,0,0,0.5)');
						$('#click-open').css('display','block');
					});
					$('section').click(function(){
						$('header').css('width','50px');
						$('#click').css('display','block');
						$('section').css('margin-left','51px');
						$('section').css('opacity','1');
						$('section').css('background-color','white');
						$('#click-open').css('display','none');
					});
				</script>				
	
</body>
</html>