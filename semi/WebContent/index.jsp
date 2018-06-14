<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<meta name="viewport" content="width=device-width, user-scalable=no">-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Seoulaim</title>
<link rel="icon" href="image/main/favicon.ico">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="js/vegas/vegas.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/vegas/vegas.min.js"></script>
<script src="js/main.js"></script>
</head>
<body id="scroll" class="main" style="overflow:hidden;">
    <!-- intro_page -->
    <div id="intro_page">
        <h1 onclick="main_open();">Seoulaim</h1>
    </div>    
    <script>
        window.onload = function(){
            setTimeout(function(){
                scrollTo(0,0);
            },100);
        };
        function main_open(){
            $('.main').css('overflow','inherit');
            $('#intro_page').css('top','-9999px');
        }
    </script>   

    <style>
        #intro_page{
            background-color:white;
            position:fixed;
            z-index:99999;
            width:100%;
            height:100%;
            top:0px;
            transition:4s;
        }
        #intro_page h1{
            color:white;
            font-size:6rem;
            cursor:pointer;
            position:absolute;
            bottom:200px;
            right:300px;
            font-family: 'Great Vibes', cursive;
        }
    </style>
    
    <!-- main_page -->
	<%@ include file="/views/main/header.jsp" %>
	<%@ include file="/views/main/main.jsp" %>
	<%@ include file="/views/main/footer.jsp" %>
</body>
</html>