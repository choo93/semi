<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import ="java.util.*" import = "semi.enjoy.model.vo.EnjoyFestival"
	import ="java.text.ParseException"
	import ="java.text.SimpleDateFormat"
	%>
<%@ page import="semi.login.model.vo.*"%>
		<%
	SeoulUser user = (SeoulUser)session.getAttribute("user");%>	
	
	<% 
ArrayList<EnjoyFestival> list = null; 
if((ArrayList<EnjoyFestival>)request.getAttribute("list")!=null)
	{
	list = 	(ArrayList<EnjoyFestival>)request.getAttribute("list");
	}
ArrayList<EnjoyFestival> list2 = null; 
if((ArrayList<EnjoyFestival>)request.getAttribute("list2")!=null)
	{
	list2 = 	(ArrayList<EnjoyFestival>)request.getAttribute("list2");
	}

ArrayList<EnjoyFestival> list3 = null; 
if((ArrayList<EnjoyFestival>)request.getAttribute("list3")!=null)
	{
	list3 = 	(ArrayList<EnjoyFestival>)request.getAttribute("list3");
	}


ArrayList<EnjoyFestival> list4 = null; 
if((ArrayList<EnjoyFestival>)request.getAttribute("list4")!=null)
	{
	list4 = 	(ArrayList<EnjoyFestival>)request.getAttribute("list4");
	}

SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
Date currentTime = new Date ();
String mTime = mSimpleDateFormat.format ( currentTime );

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 캘린더</title>
		<link rel="icon" href="../../image/main/favicon.ico">
<link rel="stylesheet" href="../../css/enjoy/fullcalendar.min.css">
<link rel="stylesheet" href="../../css/enjoy/fullcalendar.print.min.css" media="print">


<script src="../../js/jquery-3.3.1.min.js"></script>
<script src='../../js/enjoy/jquery-ui.min.js'></script>


<script src="../../js/enjoy/moment.min.js"></script>
<script src="../../js/enjoy/fullcalendar.min.js"></script>
<script>

  $(document).ready(function() {
	<%-- var today = "<%=mTime%>"; --%>
	  $('#external-events .fc-event').each(function() {

          // store data so the calendar knows to render an event upon drop
          $(this).data('event', {
            title: $.trim($(this).text()), // use the element's text as the event title
            stick: true // maintain when user navigates (see docs on the renderEvent method)
          });

          // make the event draggable using jQuery UI
          $(this).draggable({
            zIndex: 999,
            revert: true,      // will cause the event to go back to its
            revertDuration: 0  //  original position after the drag
          });

        }); 
	  $('#external-events2 .fc-event').each(function() {

          // store data so the calendar knows to render an event upon drop
          $(this).data('event', {
            title: $.trim($(this).text()), // use the element's text as the event title
            stick: true // maintain when user navigates (see docs on the renderEvent method)
          });

          // make the event draggable using jQuery UI
          $(this).draggable({
            zIndex: 999,
            revert: true,      // will cause the event to go back to its
            revertDuration: 0  //  original position after the drag
          });

        });    	 
	  $('#external-events3 .fc-event').each(function() {

          // store data so the calendar knows to render an event upon drop
          $(this).data('event', {
            title: $.trim($(this).text()), // use the element's text as the event title
            stick: true // maintain when user navigates (see docs on the renderEvent method)
          });

          // make the event draggable using jQuery UI
          $(this).draggable({
            zIndex: 999,
            revert: true,      // will cause the event to go back to its
            revertDuration: 0  //  original position after the drag
          });

        }); 
	  
	  
    $('#calendar').fullCalendar({
    	
    	monthNames: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
    	monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
    	dayNames: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
		dayNamesShort: ["일","월","화","수","목","금","토"],
    	buttonText: {
    	today : "오늘",
		month : "월별",
    	week : "주별",
    	day : "일별",
    	}, 
    	header: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'month,agendaWeek,agendaDay'
	      },
	      navLinks: true, // can click day/week names to navigate views,
	      businessHours: true, // display business hours,
      defaultDate: '<%=mTime%>',
      droppable: true,
      drop: function() {
          // is the "remove after drop" checkbox checked?
          if ($('#drop-remove').is(':checked')) {
            // if so, remove the element from the "Draggable Events" list
            $(this).remove();
          }
          if ($('#drop-remove2').is(':checked')) {
              // if so, remove the element from the "Draggable Events" list
              $(this).remove();
            }
          if ($('#drop-remove3').is(':checked')) {
              // if so, remove the element from the "Draggable Events" list
              $(this).remove();
            }
        },
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'Happy New Year',
          start: '2018-01-01'
        },
        {
            title: '세미 발표시작',
            start: '2018-06-25T14:30:00',
            end : '2018-06-25T18:00:00'
        },
        {
            title: '세미 프로젝트 ',
            start: '2018-06-01',
            end : '2018-06-24'
            	
        },
        {
            title: '6-25',
            start: '2018-06-25',
            color: '#257e4a'
            
        },
        {
            title: '회식',
            start: '2018-06-25T19:00:00',
            end : '2018-06-26T00:00:00'
        },
        {
            title: '라식 안과방문(검사)',
            start: '2018-06-30T12:00:00',
            end : '2018:06-30T18:00:00'
        },
        {
			 start : '2018-06-26',
        	 overlap: false,
             rendering: 'background',
             color: '#ff9f89'
        }
        
       	<%for(EnjoyFestival EF : list){%> 
        <% StringTokenizer ST = new StringTokenizer(EF.getFestival_period(), " ~ ");
        String startDate=""; String endDate="";
		startDate = ST.nextToken(); endDate = ST.nextToken();
        %>
        <%if(startDate.equals(endDate)){%>
    	,{title : '<%=EF.getFestival_title()%>',
    		start : '<%=startDate%>',
    		end : '<%=endDate%>',
    		url: '/festivalSelect?titleNo=<%=EF.getSEQ_Index_TitleNo()%>',
    		id : '<%=EF.getSEQ_Index_TitleNo()%>_<%=EF.getFestival_title()%>_today',
    		color: '#5F4B8B'
    		
           	}
        <%}else{%>
       	,{title : '<%=EF.getFestival_title()%>(시작)',
		start : '<%=startDate%>',
		url: '/festivalSelect?titleNo=<%=EF.getSEQ_Index_TitleNo()%>',
		id : '<%=EF.getSEQ_Index_TitleNo()%>_<%=EF.getFestival_title()%>_start',
		color: '#2478FF'
		
       	}
       	,{title : '<%=EF.getFestival_title()%>(종료)',
    		start : '<%=endDate%>',
    		url: '/festivalSelect?titleNo=<%=EF.getSEQ_Index_TitleNo()%>',
    		id : '<%=EF.getSEQ_Index_TitleNo()%>_<%=EF.getFestival_title()%>_end',
    		color : '#FF9090'
       }
       	<%}}%>
     	
      ]
    });

  });

</script>


<style>
    body {
        margin:0;
        padding : 0;
        font-family : "Lucida Grande", Helvetica, Arial, Verdana,sans-serif;
        font-size : 16px;
    }
     #wrap {
    width: 100%;
    margin: 0 auto;
  }

  #external-events {
    float: left;
    width: 15%;
    padding: 0 10px;
    border: 1px solid #ccc;
    background: #eee;
    text-align: center;
  }

  #external-events h4 {
    font-size: 16px;
    margin-top: 0;
    padding-top: 1em;
    text-align : center;
  }

  #external-events .fc-event {
    margin: 10px 0;
    cursor: pointer;
    background-color : #2478FF;
  }

  #external-events p {
    margin: 1.5em 0;
    font-size: 11px;
    color: #666;
  }

  #external-events p input {
    margin: 0;
    vertical-align: middle;
  }
  
  #external-events2 {
    float: left;
    width: 15%;
    padding: 0 10px;
    border: 1px solid #ccc;
    background: #eee;
    text-align: center;
  }

  #external-events2 h4 {
    font-size: 16px;
    margin-top: 0;
    padding-top: 1em;
     text-align : center;
  }

  #external-events2 .fc-event {
    margin: 10px 0;
    cursor: pointer;
    background-color : #FF9090;
  }

  #external-events2 p {
    margin: 1.5em 0;
    font-size: 11px;
    color: #666;
  }

  #external-events2 p input {
    margin: 0;
    vertical-align: middle;
  }
  
  #external-events3 {
    float: left;
    width: 15%;
    padding: 0 10px;
    border: 1px solid #ccc;
    background: #eee;
    text-align: center;
  }

  #external-events3 h4 {
    font-size: 16px;
    margin-top: 0;
    padding-top: 1em;
     text-align : center;
  }

  #external-events3 .fc-event {
    margin: 10px 0;
    cursor: pointer;
    background-color : #0BC904;
  }

  #external-events\3 p {
    margin: 1.5em 0;
    font-size: 11px;
    color: #666;
  }

  #external-events3 p input {
    margin: 0;
    vertical-align: middle;
  }
  
    
    #calendar {
        max-width : 1000px;
        margin : 0 auto;
        position:absolute;
        left:463px;
    }
</style>
</head>
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
						<a href="/myPage" style="margin-left:-19px;margin-right:15px;font-size:1rem!important;text-decoration:none!important;">마이페이지</a>
					<% } %>
					<a href="/logout" style="font-size:1rem!important;text-decoration:none!important;">로그아웃</a><br>
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
					<ul class="mainCategory" style="clear:both;list-style:none;">
						<li><span class="category category1">하이라이트</span>
							<ul class="subcategory subcategory1" style="display:block;font-size:1rem!important;">
								<li><a href="/views/placerank/place_Photo.jsp" style="text-decoration:none;">Top 10</a></li>
								<li><a href="/views/festival/festivalPhoto.jsp" style="text-decoration:none;">축제&amp;행사</a></li>
							</ul>
						</li>
						<li><span class="category category2">서울즐기기</span>
							<ul class="subcategory subcategory2">
								<li><a href="/enjoyList?type=type1" style="text-decoration:none;">추천코스</a></li>
								<li><a href="/enjoyList?type=type2" style="text-decoration:none;">명소</a></li>
								<li><a href="/enjoyList?type=type3" style="text-decoration:none;">쇼핑</a></li>
				<li><a href="/hotelList">숙소</a></li>
					<li><a href="/enjoyList?type=type5" style="text-decoration:none;">음식점</a></li>
					<li><a href="/enjoyCalendar" style="text-decoration:none;">캘린더</a></li>
							</ul>
						</li>
						<li><span class="category category3">예약하기</span>
							<ul class="subcategory subcategory3">
								<li><a href="/concertList" style="text-decoration:none;">공연예약</a></li>
								<li><a href="/hotelList" style="text-decoration:none;">호텔예약</a></li>
								<li><a href="/doboList" style="text-decoration:none;">서울도보관광예약</a></li>
							</ul>
						</li>
						<li><span class="category category4">여행준비</span>
							<ul class="subcategory subcategory4">
								<li><a href="/guideBookDown" style="text-decoration:none;">가이드북</a></li>
								<li><a href="/views/travelReady/travelInformation.jsp" style="text-decoration:none;">여행필수정보</a></li>
								<li><a href="/seoulImage" style="text-decoration:none;">서울 관광 이미지</a></li>
								<li><a href="/faq" style="text-decoration:none;">FAQ</a></li>
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
	<!-- 헤더 DIV -->
		<div class="header" style="width: 100%; padding-top:20px;">
			<div id="currentLocation" style="color: #5F4B8B; font: 24pt 나눔스퀘어; margin-left: 10%; ">현재 위치 : 서울즐기기 > 캘린더 </div>
			<div style="width: 95%; height: 2px; background: linear-gradient(to right, #D1D0ED 55%, white); margin-top: 1%; margin-bottom: 2%; margin-left: 10%;"></div>
		</div>
<div id='wrap' style="position:relative;">
		
    <div id='external-events' style="position: absolute; top:0px; left:200px;">
      <h4>7일 이내 시작할 예정사항</h4>
       
      <%if(list2.size()<=5){ %>
      <%for(int i=0; i<list2.size();i++){ %>
        <a href="/festivalSelect?titleNo=<%=list2.get(i).getSEQ_Index_TitleNo()%>" style="text-decoration:none;">
        <div class='fc-event'><%=list2.get(i).getFestival_title() %></div>
        </a>
     <%} %>
     <%}else{ for(int i=0;i<5;i++) {%>
     	<a href="/festivalSelect?titleNo=<%=list2.get(i).getSEQ_Index_TitleNo()%>">
        <div class='fc-event'><%=list2.get(i).getFestival_title() %></div>
        </a>
     <%}} %>
      <p>
        <input type='checkbox' id='drop-remove' checked="true" style="display:none" />
        <label for='drop-remove'>클릭시 게시물로 이동합니다.</label>
      </p>
    
      
    </div>
    
    <div id='external-events2' style="position: absolute; top:280px; left:200px">
      <h4>한달 이내 종료될 예정사항</h4>
      <%if(list3.size()<=5){ %>
      <%for(int i=0; i<list3.size();i++){%> 

        <a href="/festivalSelect?titleNo=<%=list3.get(i).getSEQ_Index_TitleNo()%>" style="text-decoration:none;">
        <div class='fc-event'><%=list3.get(i).getFestival_title() %></div>
        </a>
     <%} %>
     <%}else { for(int i=0;i<5;i++){ %>
      <a href="/festivalSelect?titleNo=<%=list3.get(i).getSEQ_Index_TitleNo()%>" style="text-decoration:none;">
        <div class='fc-event'><%=list3.get(i).getFestival_title() %></div>
        </a>
     <%}} %>
      <p>
        <input type='checkbox' id='drop-remove2' checked="true"  style="display:none"/>
        <label for='drop-remove2'>클릭시 게시물로 이동합니다.</label>
      </p>
    
      
    </div>
    
    <div id='external-events3' style="position: absolute; top:560px; left:200px">
    <%String CurrentMonth="";
    switch(list4.get(0).getSeason())
    {
    case "spring" : CurrentMonth = "봄"; break; 
    case "summer" : CurrentMonth = "여름"; break;
    case "fall" : CurrentMonth = "가을"; break;
    case "winter " : CurrentMonth = "겨울"; break;
    }
    %>
    
      <h4> 계절별 행사 (<%=CurrentMonth%>)</h4>
      <%if(list4.size()<=5){ %>
      <%for(int i=0;i<list4.size();i++){%> 
        <a href="/festivalSelect?titleNo=<%=list4.get(i).getSEQ_Index_TitleNo()%>" style="text-decoration:none;">
        <div class='fc-event'><%=list4.get(i).getFestival_title() %></div>
        </a>
     <%}} else{for(int i=0;i<5;i++){ %>
     <a href="/festivalSelect?titleNo=<%=list4.get(i).getSEQ_Index_TitleNo()%>" style="text-decoration:none;">
        <div class='fc-event'><%=list4.get(i).getFestival_title() %></div>
        </a>
     <%}} %>
      <p>
        <input type='checkbox' id='drop-remove3' checked="true"  style="display:none"/>
        <label for='drop-remove3' style="font-size: 11px; color: #666;">클릭시 게시물로 이동합니다.</label>
      </p>
    
      
    </div>
  
    

    <div id='calendar'></div>

    <div style='clear:both'></div>
<!-- 목록버튼을 위한 DIV -->
				<div style="width: 100%;">
					<button type="button" class="button" onclick="goToList();" style="position: absolute; left: 892px; width:100px; height:35px;top:799px;border:none;background-color:a93030;color:white;">리스트로 이동</button>
				</div>

				<!-- 목록 버튼을 눌렀을 때 리스트로 돌아가게 하는 스크립트 -->
				<script>
					function goToList(){
						location.href="/views/enjoy/enjoyPhoto.jsp";
					}
				</script>
				
				<!-- 맨 밑 공백을 위한 DIV -->
				<div style="width: 100%; height: 50px;"></div>

  </div>
	</section>
	
				<script>
					$('.click').click(function(){
						$('header').css('width','300px');
						$('#click').css('display','none');
						$('section').css('margin-left','301px');
						$('section').css('opacity','0.5');
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