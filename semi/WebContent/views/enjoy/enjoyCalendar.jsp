<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import ="java.util.*" import = "semi.enjoy.model.vo.EnjoyFestival"
	import ="java.text.ParseException"
	import ="java.text.SimpleDateFormat"
	%>
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
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/enjoy/fullcalendar.min.css">
<link rel="stylesheet" href="../../css/enjoy/fullcalendar.print.min.css" media="print">


<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
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
       	<%}%>
     	
      ]
    });

  });

</script>


<style>
    body {
        margin :40px 10px;
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
        float:right;
        max-width : 1000px;
        margin : 0 auto;
    }
</style>
</head>
<body id="scroll">
	<%-- <%@ include file="/views/main/header.jsp"%> --%>
	<section>
	<!-- 헤더 DIV -->
		<div class="header" style="width: 100%;">
			<div id="currentLocation" style="color: #5F4B8B; font: 24pt 나눔스퀘어; margin-top: 25px; margin-left: 10%; ">현재 위치 : 서울즐기기 > 캘린더 </div>
			<div style="width: 95%; height: 2px; background: linear-gradient(to right, #D1D0ED 55%, white); margin-top: 1%; margin-bottom: 2%; margin-left: 10%;"></div>
		</div>
<div id='wrap'>
		
    <div id='external-events' style="position: absolute; top:150px; left:450px">
      <h4>7일 이내 시작할 예정사항</h4>
       
      <%if(list2.size()<=5){ %>
      <%for(int i=0; i<list2.size();i++){ %>
        <a href="/festivalSelect?titleNo=<%=list2.get(i).getSEQ_Index_TitleNo()%>">
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
    
    <div id='external-events2' style="position: absolute; top:450px; left:450px">
      <h4>한달 이내 종료될 예정사항</h4>
      <%if(list3.size()<=5){ %>
      <%for(int i=0; i<list3.size();i++){%> 

        <a href="/festivalSelect?titleNo=<%=list3.get(i).getSEQ_Index_TitleNo()%>">
        <div class='fc-event'><%=list3.get(i).getFestival_title() %></div>
        </a>
     <%} %>
     <%}else { for(int i=0;i<5;i++){ %>
      <a href="/festivalSelect?titleNo=<%=list3.get(i).getSEQ_Index_TitleNo()%>">
        <div class='fc-event'><%=list3.get(i).getFestival_title() %></div>
        </a>
     <%}} %>
      <p>
        <input type='checkbox' id='drop-remove2' checked="true"  style="display:none"/>
        <label for='drop-remove2' >클릭시 게시물로 이동합니다.</label>
      </p>
    
      
    </div>
    
    <div id='external-events3' style="position: absolute; top:700px; left:450px">
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
        <a href="/festivalSelect?titleNo=<%=list4.get(i).getSEQ_Index_TitleNo()%>">
        <div class='fc-event'><%=list4.get(i).getFestival_title() %></div>
        </a>
     <%}} else{for(int i=0;i<5;i++){ %>
     <a href="/festivalSelect?titleNo=<%=list4.get(i).getSEQ_Index_TitleNo()%>">
        <div class='fc-event'><%=list4.get(i).getFestival_title() %></div>
        </a>
     <%}} %>
      <p>
        <input type='checkbox' id='drop-remove3' checked="true"  style="display:none"/>
        <label for='drop-remove3' >클릭시 게시물로 이동합니다.</label>
      </p>
    
      
    </div>
  
    

    <div id='calendar'></div>

    <div style='clear:both'></div>
<!-- 목록버튼을 위한 DIV -->
				<div style="width: 100%;">
					<button type="button" class="button" onclick="goToList();" style="position: absolute; left: 892px; width:100px; height:20px">리스트로 이동</button>
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
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>