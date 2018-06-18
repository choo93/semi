<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "semi.search.model.vo.*" import="java.util.*" %>
 <%
 	SearchData sd = (SearchData)request.getAttribute("searchData");
 	String pageNavi = sd.getPageNavi();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>검색</h1>
<table border="1">

</table>
</body>
</html>