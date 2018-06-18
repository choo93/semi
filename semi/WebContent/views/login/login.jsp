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

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


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
            <div class="row">
            <div class="input-field col s12">
                <input class="btn submit_button" type="submit" value="LOGIN"> 
            </div>
            </div>
            <div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="true" data-auto-logout-link="true" data-use-continue-as="true"></div>
			
			<!-- facebook -->
			<div id="fb-root"></div>
			<script>(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.0';
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));</script>
			
			<!-- kakao -->
			<a id="kakao-login-btn"></a>
			<a href="http://developers.kakao.com/logout"></a>
			<script type='text/javascript'>
			  //<![CDATA[
			    // 사용할 앱의 JavaScript 키를 설정해 주세요.
			    Kakao.init('b587d9444d896848bde0e444f8c34f3d');
			    // 카카오 로그인 버튼을 생성합니다.
			    Kakao.Auth.createLoginButton({
			      container: '#kakao-login-btn',
			      success: function(authObj) {
			        alert(JSON.stringify(authObj));
			      },
			      fail: function(err) {
			         alert(JSON.stringify(err));
			      }
			    });
			  //]]>
			</script>
	
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
     
	<!-- 페이스북 로그인 script -->
	<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '1749004668501177',
	      xfbml      : true,
	      version    : 'v3.0'
	    });
	    FB.AppEvents.logPageView();
	  };
	
	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "https://connect.facebook.net/en_US/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
	</script>     
</body>
</html>