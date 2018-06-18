<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<center>
				<!-- facebook -->
				<script>
					function statusChangeCallback(response) {
						console.log('statusChangeCallback');
						console.log(response);
						if (response.status === 'connected') {
							testAPI();
						}
					}

					function checkLoginState() {
						FB.getLoginStatus(function(response) {
							statusChangeCallback(response);
						});
					}

					window.fbAsyncInit = function() {
						FB.init({
							appId : '1749004668501177',
							cookie : true,
							xfbml : true,
							version : 'v2.8'
						});

						FB.getLoginStatus(function(response) {
							statusChangeCallback(response);

							if (response.status === 'connected') {
								console.log(response.authResponse.accessToken);
							}
						});

					};

					(function(d, s, id) {
						var js, fjs = d.getElementsByTagName(s)[0];
						if (d.getElementById(id))
							return;
						js = d.createElement(s);
						js.id = id;
						js.src = "https://connect.facebook.net/en_US/sdk.js";
						fjs.parentNode.insertBefore(js, fjs);
					}(document, 'script', 'facebook-jssdk'));

					function testAPI() {
						console.log('Welcome!  Fetching your information.... ');
						FB.api('/me', function(response) {
							console.log('Successful login for: '
									+ response.name);
							console.log(JSON.stringify(response));
							console.log(response);
							console.log(response.id);
							console.log(response.name);
						});
					}
				</script>
				<div class="fb-login-button" data-max-rows="1" data-size="large"
					data-button-type="login_with" data-show-faces="false"
					data-auto-logout-link="true" data-use-continue-as="false" onlogin="checkLoginState();" style="margin-bottom:20px;"></div>
				<!-- kakao -->
				<a id="kakao-login-btn"></a> <a
					href="http://developers.kakao.com/logout"></a>
				<script type='text/javascript'>
					//<![CDATA[
					// 사용할 앱의 JavaScript 키를 설정해 주세요.
					Kakao.init('b587d9444d896848bde0e444f8c34f3d');
					// 카카오 로그인 버튼을 생성합니다.
					Kakao.Auth.createLoginButton({
						container : '#kakao-login-btn',
						success : function(authObj) {
							alert(JSON.stringify(authObj));
						},
						fail : function(err) {
							alert(JSON.stringify(err));
						}
					});
					//]]>
				</script>
				<!-- naver -->
				<!-- (1) 버튼 event 처리를 위하여 id를 지정 id=loginButton -->
				<p>
				<div id="naverIdLogin">
					<a id="naverIdLogin_loginButton" href="#" role="button"><img
						src="https://static.nid.naver.com/oauth/big_g.PNG"></a>
				</div>
				</p>
				<!-- (2) LoginWithNaverId Javscript SDK -->
				<script src="/js/main/naveridlogin_js_sdk_2.0.0.js"></script>
				<!-- (3) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
				<script>
					var naverLogin = new naver.LoginWithNaverId(
							{
								clientId : "gcgt4lnXOs2xVyElFJ0A",
								callbackUrl : "http://"
										+ window.location.hostname
										+ ((location.port == "" || location.port == undefined) ? ""
												: ":" + location.port)
										+ "/oauth/sample/callback.html",
								isPopup : false,
								loginButton : {
									color : "green",
									type : 3,
									height : 50
								}
							});
					/* (4) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
					naverLogin.init();
					/* (4-1) 임의의 링크를 설정해줄 필요가 있는 경우 */
					$("#gnbLogin").attr("href",
							naverLogin.generateAuthorizeUrl());
					/* (5) 현재 로그인 상태를 확인 */
					window.addEventListener('load', function() {
						naverLogin.getLoginStatus(function(status) {
							if (status) {
								/* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
								setLoginStatus();
							}
						});
					});
					/* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
					function setLoginStatus() {
						var profileImage = naverLogin.user.getProfileImage();
						var nickName = naverLogin.user.getNickName();
						$("#naverIdLogin_loginButton").html(
								'<br><br><img src="' + profileImage + '" height=50 /> <p>'
										+ nickName + '님 반갑습니다.</p>');
						$("#gnbLogin").html("Logout");
						$("#gnbLogin").attr("href", "#");
						/* (7) 로그아웃 버튼을 설정하고 동작을 정의합니다. */
						$("#gnbLogin").click(function() {
							naverLogin.logout();
							location.reload();
						});
					}
				</script>
			</center>






</body>
</html>