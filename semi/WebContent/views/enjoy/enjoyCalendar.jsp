<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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




</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>

<script type="text/javascript">
    $(document).ready(function() {
    	
    	   /* initialize the external events
        -----------------------------------------------------------------*/

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
    	
    	
        $("#calendar").fullCalendar({
        	
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
              defaultDate : "2018-06-12"
              
              ,droppable: true
            , editable : true
            , eventLimit : true
            , events: [
            	  {
                      title: 'Business Lunch',
                      start: '2018-06-03T13:00:00',
                      constraint: 'businessHours'
                    },
                {
                      title : "All Day Event"
                    , start : "2018-06-01"
                    
                },
                {
                      title : "Long Event"
                    , start : "2018-06-07"
                    , end : "2018-06-10"
                },
                {
                      id : 999
                    , title : "Repeating Event"
                    , start : "2018-06-09T16:00:00"
                },
                {
                      id : 998
                    , title : "Repeating Event"
                    , start : "2018-06-16T16:00:00"
                },
                {
                    id : 997
                  , title : "Repeating Event2"
                  , start : "2018-06-12T16:00:00"
              	},
              	{
                    id : 996
                  , title : "Repeating Event3"
                  , start : "2018-06-12T16:00:00"
              	},
              	{
                    id : 996
                  , title : "Repeating Event4"
                  , start : "2018-06-12T20:00:00"
              	},
              	{
                    id : 996
                  , title : "Repeating Event5"
                  , start : "2018-06-12T18:00:00"
              	},
                {
                      title : "Conference"
                    , start : "2018-06-11"
                    , end : "2018-06-13"
                },
                {
                      title : "Meeting2"
                    , start : "2018-06-20"
                    , end : "2018-06-22",
                    overlap: false,
                    rendering: 'background',
                    color: '#ff9f89'
                },
                {
                    id: 'availableForMeeting',
                    start: '2018-06-13T10:00:00',
                    end: '2018-06-13T16:00:00',
                    rendering: 'background'
                  },
                {
                      title : "Lunch"
                    , start : "2018-06-12T12:00:00"
                },
                {
                      title : "Meeting"
                    , start : "2018-06-12T14:30:00"
                },
                {
                      title : "Happy Hour"
                    , start : "2018-06-12T17:30:00"
                },
                {
                      title : "Dinner"
                    , start : "2018-06-12T20:00:00"
                },
                {
                      title : "Birthday Party"
                    , start : "2018-06-13T07:00:00"
                },
                {
                      title : "Click for Google"
                    , url : "http://google.com/"
                    , start : "2018-06-28"
                }
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