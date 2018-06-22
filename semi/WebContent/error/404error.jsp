<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러 페이지</title>
</head>
<style>
	*{
		margin:0;	padding:0;
	}
	
	body{
	}
	
	body>div{
		width:100%;
		text-align:center;
	}
	
	
	#errorImg{
		width:400px;	height:300px;
		display:inline-block;
		margin-top:50px;
	}
	
	
	body>div>center>a{
		width:200px;	height:50px;
		margin-top:50px;
		text-decoration:none;
		color:white;
		background-color:rgb(180,48,41);
		display:block;
		font-size:17px;
		font-weight:bold;
		line-height:300%;
	}
	
</style>
<body>
	<div>
		<img id="errorImg" src="/image/error/404error.png">
	</div>
	<div>
		<center>
			<a href="/index.jsp">메인 페이지로</a>
		</center>
	</div>
</body>
</html>