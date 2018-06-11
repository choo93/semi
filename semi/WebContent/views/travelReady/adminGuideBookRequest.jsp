<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>

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
	var count=0;
	  for(var i=0; i<f.length; i++){
	       
	            if(f[i].checked==true){
	                count++;
	            }
	       
	    }
	    if(count > 0){
	        if(confirm("선택된 항목들을 삭제하시겠습니까?")){
	            f_view.submit();
	        }
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
	
</style>
	<div style="position:relative; z-index:1; margin-left:100px;" >
	<div id="content">
		<ul>
			<li><a href="#" onclick="checkAll();">전체 선택</a></li>
			<li><a href="#" onclick="deliveryAfter();">배송 완료 목록 선택</a></li>
			<li><a href="#" onclick="deliveryBefore();">배송 전 목록 선택</a></li>
			<li><a href="#" onclick="checkDelete();">선택 해제</a></li>
		</ul>
	</div>
	
<table border="1px">
<tr>
	<th><input type="checkBox" id="checkall">
	<div id="toggleButton">
		<button id="btn1">1</button>
	</div>

	
	</th>
	<th>orderNo</th>
	<th>name</th>
	<th>email</th>
	<th>phone</th>
	<th>address</th>
	<th>guidebooknum</th>
	<th>mapnum</th>
	<th>orderdate</th>
	<th>deliverycheck</th>
</tr>
<form id="delete" name="delete" action="/requestDelete">
<c:forEach items="${guidebookRequest}" var="g">
<tr>
	<td><input type="checkBox" name="check" value="${g.deliveryCheck}"></td>
	<td>${g.orderNo}</td>
	<td>${g.name}</td>
	<td>${g.email}</td>
	<td>${g.phone}</td>
	<td>${g.addr}</td>
	<td>${g.guideBookNum}</td>
	<td>${g.mapNum}</td>
	<td>${g.orderDate}</td>
	<form action="/deliveryCheck" method="post">
	<td><input type="submit" id="deliverycheck" value="${g.deliveryCheck}">
		<input type="hidden" value="${g.deliveryCheck}" name="deliveryCheck">
		<input type="hidden" value="${g.orderNo}" name="orderNo"></td>
		</form>
		 
</tr>
</c:forEach>
</table>
</form>

		<button onclick="test()">삭제</button>
</div>

</body>
</html>