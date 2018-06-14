<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.login.model.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seoulaim - 로그인</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/login/login.css">
<link rel="stylesheet" href="../../css/login/materialize.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<script src="../../js/login/materialize.min.js"></script>

<style>
    a{color:black;} 
</style>

</head>
<body>
	<%@ include file="/views/main/header.jsp" %>
	<% if(user==null){ %>
    <section>
    <div class="section_fixed">
        <h3 style="margin-top:0px;">로그인</h3>
        <hr>
        <div class="row">
        <form class="col s12" action="/login" method="post">
            <div class="row input">
            <div class="input-field col s12">
                <input type="text" name="userId">
                <label for="id">아이디</label>
            </div>
            </div>
            <div class="row">
            <div class="input-field col s12">
                <input type="password" name="userPwd">
                <label for="id">비밀번호</label>
            </div>
            </div>
            <p>
                <label>
                    <input type="checkbox" id="id_save_check">
                    <span>아이디 기억하기</span>
                </label>
            </p>
            <div class="row">
            <div class="input-field col s12">
                <input class="btn submit_button" type="submit" value="LOGIN"> 
            </div>
            </div>
            <div class="row">
            <div class="input-field col s4">
                <a href="">회원가입</a>
            </div>
            <div class="input-field col s4">
                <a href="">아이디 찾기</a>
            </div>
            <div class="input-field col s4">
                <a href="">비밀번호 찾기</a>
            </div>
            </div>       
        </form>
        </div>
    </section>
    <% } else { 
    	response.sendRedirect("../../index.jsp");
     } %>   
</body>
</html>