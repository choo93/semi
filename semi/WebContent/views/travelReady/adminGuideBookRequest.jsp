<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

	<link href="../../css/bootstrap.min.css" rel="stylesheet">
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
</head>
<body>

<script>
$(document).ready(function(){
 
    $("#checkall").click(function(){

        if($("#checkall").prop("checked")){
 
            $("input[name=check]").prop("checked",true);
     
        }else{

            $("input[name=check]").prop("checked",false);
        }
    })
});

$(document).ready(function(){
    $('#toggleButton').click(function(){
        var state = $('#content').css('display'); 
        if(state == 'none'){ 
            $('#content').show();
        }else{ 
            $('#content').hide();          
        }
    });
});

function checkAll()
{
	var obj = document.getElementsByName("check");
	for( var i=0; i< obj.length; i++) {
		obj[i].checked = true;
	}
	$('#content').hide();
}

function checkDelete(){
	var obj = document.getElementsByName("check");
	for( var i=0; i< obj.length; i++) {
		obj[i].checked = false;
	}
	$('#content').hide();
}

function deliveryAfter () {
	var obj = document.getElementsByName("check");
	for( var i=0; i< obj.length; i++) {
		obj[i].checked = false;
	}
	
	
	var deliveryCheck=document.getElementById("deliverycheck").value;
	
	$('input:checkbox[name="check"]').each(function() {

	     if(this.value == "배송완료"){

	            this.checked = true; 

	      }

	 });
	$('#content').hide();
}

function deliveryBefore() {
	var deliveryCheck=document.getElementById("deliverycheck").value;
	
	var obj = document.getElementsByName("check");
	for( var i=0; i< obj.length; i++) {
		obj[i].checked = false;
	}
	
	$('input:checkbox[name="check"]').each(function() {

	     if(this.value == "배송전"){

	            this.checked = true; 

	      }

	 });
	$('#content').hide();
}
function test(){
	var f=document.getElementsByName("check");
	var no=document.getElementsByName("tdorderNo");
	var deletechk=new Array();

	var count=0;
	  for(var i=0; i<f.length; i++){
	       
	            if(f[i].checked==true){
	                count++;
	            }
	       
	    }
	    if(count > 0){
	        if(confirm("선택된 항목들을 삭제하시겠습니까?")){
	        	
	        	for(var i=0; i<f.length; i++){
	        		if(f[i].checked==true){
	        			deletechk.push(no[i].innerHTML);

	        		}	
	        	}
	            
	        }
	        location.href="/adminDeliveryDelete?orderNo="+deletechk;
	    }
	    else
	        {
	        alert("선택된 항목이 없습니다.");
	        }
	    
	   
	}

</script>
<style>
	#content
	{
	display:none;
	 z-index:2; 
	 position:absolute;
	 width:128px;
	 height:138px;
	 margin-left:30px;
	 margin-top:22px;
	 background-color:white;
	}
	#content ul{
	list-style: none;
	margin:0px;
	padding:0px;
	}
	#content li{
	font-size:13px;
	list-style-type: none;
	}
	#content ul a{
	    text-decoration: none;
	}
	a{
	color:black;
	}
	
</style>
<%@ include file="/views/main/header.jsp" %>
<section>
<table class="table">
  <thead>
    <tr>
      <th scope="col">
     <ul class="nav nav-pills">
         <li class="dropdown">
               <a data-toggle="dropdown" data-target="#" href="dropdown.html" style="color:black;">목록 <span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                <li><a role="menuitem" href="#" onclick="checkAll();" >전체 선택</a></li>
                <li><a role="menuitem" href="#" onclick="deliveryAfter();">배송 완료 목록 선택</a></li>
                <li><a role="menuitem" href="#"  onclick="deliveryBefore();">배송 전 목록 선택</a></li>
                <li><a role="menuitem" href="#" onclick="checkDelete();">선택 해제 </a></li>
              </ul>
         </li>
     </ul>
      
      
      </th>
  
      <th scope="col">orderNo</th>
      <th scope="col">name</th>
      <th scope="col">email</th>
      <th scope="col">phone</th>
      <th scope="col">address</th>
      <th scope="col">guidebooknum</th>
      <th scope="col">mapnum</th>
      <th scope="col">orderdate</th>
      <th scope="col">deliverycheck</th>
      
      
    </tr>
  </thead>
  <tbody>
<form id="delete" name="delete" action="/requestDelete">
<c:forEach items="${guidebookRequest}" var="g">
<tr>
	<td><input type="checkBox" name="check" value="${g.deliveryCheck}" style="opacity:1;"></td>
	<td name="tdorderNo" value="${g.orderNo}">${g.orderNo}</td>
	<td>${g.name}</td>
	<td>${g.email}</td>
	<td>${g.phone}</td>
	<td>${g.addr}</td>
	<td>${g.guideBookNum}</td>
	<td>${g.mapNum}</td>
	<td>${g.orderDate}</td>
	</form>
	<form action="/deliveryCheck" method="post">
	<td><input type="submit" id="deliverycheck" value="${g.deliveryCheck}">
		<input type="hidden" value="${g.deliveryCheck}" name="deliveryCheck">
		<input type="hidden" value="${g.orderNo}" name="orderNo"></td>
		</form>
		 
</tr>
</c:forEach>

  </tbody>
</table>
<button onclick="test();">삭제</button>
</section>
</body>
</html>