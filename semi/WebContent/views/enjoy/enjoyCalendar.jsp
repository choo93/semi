<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import ="java.util.*" import = "semi.enjoy.model.vo.EnjoyFestival"
	import ="java.text.SimpleDateFormat"
	%>
	<% 
ArrayList<EnjoyFestival> list = null; 
if((ArrayList<EnjoyFestival>)request.getAttribute("list")!=null)
	{
	list = 	(ArrayList<EnjoyFestival>)request.getAttribute("list");
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
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2018-06-20'
        },
        {
            title: 'Long Event',
            start: '2018-06-24',
            end: '2018-06-27'
          },
          {
            id: 999,
            title: 'Repeating Event',
            start: '2018-06-01T16:00:00'
          },
          {
            id: 989,
            title: 'Repeating Event',
            start: '2018-06-16T16:00:00'
          },
          {
            title: 'Conference',
            start: '2018-06-4',
            end: '2018-06-17'
          },
          {
            title: 'Meeting',
            start: '2018-07-12T10:30:00',
            end: '2018-07-18T12:30:00'
          },
          {
            title: 'Lunch',
            start: '2018-07-16T12:00:00'
          },
          {
            title: 'Meeting',
            start: '2018-05-12T14:30:00'
          },
          {
            title: 'Happy Hour',
            start: '2018-05-14T17:30:00'
          },
          {
            title: 'Dinner',
            start: '2018-05-10T20:00:00'
          },
          {
            title: 'Birthday Party',
            start: '2018-06-13T07:00:00'
          },
          {
            title: 'Click for Google',
            url: 'http://google.com/',
            start: '2018-06-24'
          }
       	<%for(EnjoyFestival EF : list){%>
        <% StringTokenizer ST = new StringTokenizer(EF.getFestival_period(), " ~ ");%>
       	,{title : '<%=EF.getFestival_title() %>',
        <%while(ST.hasMoreTokens()){%>
		start : '<%=ST.nextToken()%>',
		end : '<%=ST.nextToken()%>',
		<%}%>
		url: '/festivalSelect?titleNo=<%=EF.getSEQ_Index_TitleNo()%>',
		id : '<%=EF.getSEQ_Index_TitleNo()+EF.getFestival_title()%>'
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
        font-size : 14px;
    }
     #wrap {
    width: 1100px;
    margin: 0 auto;
  }

  #external-events {
    float: left;
    width: 150px;
    padding: 0 10px;
    border: 1px solid #ccc;
    background: #eee;
    text-align: left;
  }

  #external-events h4 {
    font-size: 16px;
    margin-top: 0;
    padding-top: 1em;
  }

  #external-events .fc-event {
    margin: 10px 0;
    cursor: pointer;
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
    
    #calendar {
        float:right;
        max-width : 900px;
        margin : 0 auto;
    }
</style>
</head>
<body id="scroll">
	<%-- <%@ include file="/views/main/header.jsp"%> --%>
	<section>
<div id='wrap'>

    <div id='external-events'>
      <h4>Draggable Events</h4>
      <div class='fc-event'>My Event 1</div>
      <div class='fc-event'>My Event 2</div>
      <div class='fc-event'>My Event 3</div>
      <div class='fc-event'>My Event 4</div>
      <div class='fc-event'>My Event 5</div>
      <p>
        <input type='checkbox' id='drop-remove' />
        <label for='drop-remove'>remove after drop</label>
      </p>
    </div>

    <div id='calendar'></div>

    <div style='clear:both'></div>

  </div>
	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>