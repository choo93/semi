<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="semi.travelready.model.vo.*" %>
    <%GuideBookRequest gbr=(GuideBookRequest)request.getAttribute("GuideBookRequest"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>bootstrap template</title>




<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

  </head>
  
  <body id="scroll">
  <style> 
    #pagecontent
    {
    	height:1000px;
    
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
    }
    #content
    {
    margin:0 auto;
    width:75%;
    min-height:1000px;
    padding-left:0px;
    }
    #comTitle{
    margin-top:50px;
    width:50%; 
    height:250px; 
    background:url(/image/main/logo.png); 
    background-repeat:no-repeat; background-size:100% 100%; 
    margin-left:25%;
						
    }

  </style>
  
  <script>
  	function back(){
  		location.href="/guideBookDown";
  	}
  </script>
	

      <section>
			
			<div id="pagecontent" >
				<section id="content">
					<div id="comTitle">
					</div>
					<div style="width:100%; height:70px; margin-top:50px; text-align:center;">
						<h3>가이드북 신청이 완료되었습니다.</h3>
					</div>
					
					<div style="width:100%; height:350px;">
						<div style="width:25%;height:100%; float:left;  text-align:center;padding-top:130px;">
							<h1>신청 정보 확인</h1>
						</div>
						<div style="margin-left:25%;width:75%; height:100%; ">
							<table class="table table-striped" style="height:100%;">
								<tr>
									<th width="200px">성명</th>
									<td><%=gbr.getName()%></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><%=gbr.getEmail() %></td>
								</tr>
								<tr>
									<th>전화번호</th>
									<td><%=gbr.getPhone() %></td>
								</tr>
						
								<tr>
									<th>주소</th>
									<td><%=gbr.getAddr()%></td>
								</tr>
								<tr>
									<th>가이드북 수량</th>
									<td><%=gbr.getGuideBookNum()%>권</td>
								</tr>
						
								<tr>
									<th>지도 수량</th>
									<td><%=gbr.getMapNum()%>권</td>
								</tr>
						
						
								
								
							</table>
						</div> 
					</div>
					
					<div style="width:100%;height:200px;;margin-top:30px; text-align:center;">
					<button class="btn btn-primary"  style="cursor:pointer;background-color:#b43029; width:15%;height:50%;" onclick="back();">홈으로</button>
					</div>
					
				</section>
			</div>
			
		
		</section>
		


  </body>
</html>
