<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="semi.travelready.model.vo.*" import="java.util.*" import="semi.login.model.vo.*" %>
<%
	SeoulImagePageData sipd=(SeoulImagePageData)request.getAttribute("SeoulImagePageData");
	ArrayList<SeoulImageFile> list=sipd.getNoticelist();
	SeoulUser user=(SeoulUser)session.getAttribute("user");
	int index = 0;
%>
    
<!DOCTYPE html>
<html>
<head>

<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link href="../../css/kfonts2.css" rel="stylesheet">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Seoulaim - 서울 관광 이미지</title>
<link rel="icon" href="../../image/main/favicon.ico">
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
		

<style>
*{margin:0; padding:0;font-family: 'Nanum Gothic', sans-serif;}
a
{text-decoration:none!important;color:black;}
     #pagecontent
    {
    	min-height:1000px;
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
   
    }
    #content
    {
    margin:0 auto;
    width:960px;
    min-height:1000px;
    padding-left:0px;
    }
    
  .keyword-recommend a{
    display: inline-block;
    margin: 4px;
    color: #0171b0;
    line-height: 22px;
}


</style>
<script>


function contentChange(id){
	$.ajax({
		url : "/seoulImageBody",
		type : "get",
		data : {id:id},
		success : function(){
			location.href="/seoulImageBody?id="+id;
			
		},
		error : function(){
			console.log("실패");
		}
	});

	
	
}

function insert(){
	window.open("/views/travelReady/imagePop.jsp","_blank","width=500,height=200");
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
						padding-left:75px;
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
						<a href="/myPage" style="margin-left:-19px;margin-right:15px;font-size:1rem!important;">마이페이지</a>
					<% } %>
					<a href="/logout" style="font-size:1rem!important;">로그아웃</a><br>
			        </div>
			        <% } %>	
			        
			        <style>
			        	#login_join>a:hover{
			        		text-decoration:none;
			        	}
			        	.mainCategory>li{
			        		font-size:1rem!important;
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
					<ul class="mainCategory" style="clear:both;list-style:none;margin-left:50px;">
						<li><span class="category category1">하이라이트</span>
							<ul class="subcategory subcategory1" style="display:block;font-size:1rem!important;">
								<li><a href="/views/placerank/place_Photo.jsp">Top 10</a></li>
								<li><a href="/views/festival/festivalPhoto.jsp">축제&amp;행사</a></li>
							</ul>
						</li>
						<li><span class="category category2">서울즐기기</span>
							<ul class="subcategory subcategory2">
								<li><a href="/enjoyList?type=type1">추천코스</a></li>
								<li><a href="/enjoyList?type=type2">명소</a></li>
								<li><a href="/enjoyList?type=type3">쇼핑</a></li>
				<li><a href="/hotelList">숙소</a></li>
					<li><a href="/enjoyList?type=type5">음식점</a></li>
					<li><a href="/enjoyCalendar">캘린더</a></li>
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
<center>
<form class="form-inline" action="/seoulImageSearch" method="post">
<div style="height:150px; padding-top:50px; background-color: #f5f5f5;">
	
  <div class="form-group mx-sm-3">
    <input type="text" class="form-control" name="search">
  </div>
  <input type="submit" class="btn btn-primary" value="검색">
  <div class="keyword-recommend">
					<a href="/seoulImageSearch?search=광화문광장">광화문광장</a>
					<a href="/seoulImageSearch?search=경복궁">경복궁</a>
					<a href="/seoulImageSearch?search=동대문디자인플라자">동대문디자인플라자</a>
					<a href="/seoulImageSearch?search=문화역서울284">문화역서울284</a>
					<a href="/seoulImageSearch?search=삼청동">삼청동</a>
					<a href="/seoulImageSearch?search=북악스카이웨이">북악스카이웨이</a>
					</div>
  
  </div>
</form>
</center>
<div id="div1" style="width:100%; height:700px; display:none;"></div>
  	
	<div id="imagechange" class="container"> 
 <h1> 서울 관광 이미지   </h1>
 <%if(user!=null && user.getUserId().equals("admin")) {%>
 <botton class="btn btn-primary" onclick="insert();">등록</botton><%} %><h2>총<%=sipd.getRecordTotalCount()%></h2>
  <%for(SeoulImageFile sif:list){ 
  if(index<3){
	  if(index==0){
  %> <div class="row">
  <%} %>  

   
    <div class="col-sm-3 col-md-3">
      <div class="thumbnail">
        <img src="<%=sif.getImageViewPath()%>" alt="...">
          <div class="caption">
            <h3><%=sif.getTitle()%> </h3>
          
            <p><a href="/seoulImageDown?imageNo=<%=sif.getImageN0()%>" class="btn btn-primary" role="button">다운로드</a> 
            <a href="#" onclick="contentChange(<%=sipd.getCurrentPage()%>);" class="btn btn-default" role="button">보기</a></p>
        </div>
      </div>
    </div> 
   
	

	<%index++;}else { %>
	 <div class="col-sm-3 col-md-3">
      <div class="thumbnail">
        <img src="<%=sif.getImageViewPath()%>" alt="...">
          <div class="caption">
            <h3><%=sif.getTitle()%> </h3>
          
            <p><a href="/seoulImageDown?imageNo=<%=sif.getImageN0()%>" class="btn btn-primary" role="button">다운로드</a> 
            <a href="#" onclick="contentChange(<%=sipd.getCurrentPage()%>);" class="btn btn-default" role="button">보기</a></p>
        </div>
      </div>
    </div>
 </div><%index=0;} %>
 
 
 
 
 

 <%} %>
 </div>
	<div  id="navi" style="width:100%; height:50px; padding-top:30px; padding-bottom:50px; text-align:center;">
			<%if(sipd.getCurrentPage()>1){ %>
					<a class="btn btn-primary btn-lg" href="/seoulImage?currentPage=<%=sipd.getCurrentPage()-1%>"> < </a>
					<%} %>
					<%for(int i=sipd.getStartNavi(); i<=sipd.getEndNavi();i++){ 
					if(i==sipd.getCurrentPage()){%>
						<a class="btn btn-primary btn-lg" href='/seoulImage?currentPage=<%=i%>'><%=i%></a>
					<%}else{ %>
						<a class="btn btn-primary btn-lg" href='/seoulImage?currentPage=<%=i%>'><%=i%></a>
					<%} %>
				<%} %>
				
				<%if(sipd.getCurrentPage()<sipd.getPageTotalCount()){ %>
					<a class="btn btn-primary btn-lg" href="/seoulImage?currentPage=<%=sipd.getCurrentPage()+1%>"> > </a>
				<%} %>
				</div>

			

			
			</section>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  
    <script src="../../js/bootstrap.min.js"></script>
    
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