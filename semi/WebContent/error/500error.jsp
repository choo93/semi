<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>500 ERROR</title>
</head>
<style>
	*{
		margin:0;	padding:0;
		box-sizing:border-box;
	}
	body>div{
		width:100%;
		margin-top:50px;
		text-align:center;
	}
	
	#comment>div{
		width:100%;	height:100px;
		margin-top:50px;
		font-size:40px;
	}
	#comment>center>a{
		width:200px;	height:50px;
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
		<img alt="500errorIMG" src="/image/error/500error.png">
	</div>
	<div id="comment">
		<div>잘못된 요청을 하셨습니다.</div>
		<center>
			<a href="/index.jsp">메인 페이지로</a>
		</center>
	</div>
</body>
</html>