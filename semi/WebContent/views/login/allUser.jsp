<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*" import="java.util.ArrayList" %>
<% ArrayList<SeoulUser> list = (ArrayList<SeoulUser>) request.getAttribute("userList"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	function goback(){
		location.href="/index.jsp";
	}
</script>


<h1>관리자 : 회원 관리 페이지</h1>
<table border="1">
	<tr>
		<th>ID</th><th>이름</th><th>이메일</th><th>전화번호</th><th>주소</th><th>가입날짜</th><th>탈퇴유무</th>
	</tr>
	<% for(SeoulUser su : list){ %>
	<tr>
		<td><%=su.getUserId() %></td><td><%=su.getUserName() %></td><td><%=su.getUserEmail() %></td>
		<td><%=su.getUserPhone() %></td><td><%=su.getUserAddr() %></td><td><%=su.getUserJoindate() %></td>
		<td>
			<form action="userActive" method="post">
				<input type="hidden" value="<%=su.getUserActive()%>" name="userActive">
				<input type="hidden" value="<%=su.getUserId() %>" name="userId">
				<input type="submit" value="<%=su.getUserActive()%>" style="width:100%;">
			</form>
		</td>
	</tr>
	<% } %>
</table>
<button onclick="goback();">이전 페이지로</button>
</body>
</html>