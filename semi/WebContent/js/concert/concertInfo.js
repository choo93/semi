
var toggleText1 = false;
var toggleText2 = false;

$(document).ready(function(){
	$('#basicInfo').click(function () {

		$('#basicInfoContent').toggle('display');
		if(toggleText1==true)
		{
			window.document.getElementById('toggleBtn1').innerHTML = ("▼");
			toggleText1 = false;
		}
		else{
			console.log(document.getElementById('toggleBtn1'));
			window.document.getElementById('toggleBtn1').innerHTML = "▲";
			toggleText1 = true;
		}
	});
	
	$('#map').click(function () {

		$('#mapContent').toggle('display');
		if(toggleText2==true)
		{
			window.document.getElementById('toggleBtn2').innerHTML = "▼";
			toggleText2 = false;
		}
		else{
			console.log(document.getElementById('toggleBtn2'));
			window.document.getElementById('toggleBtn2').innerHTML = "▲";
			toggleText2 = true;
		}
	});
});

function reserve(indexNo, concertCode, price){
	window.open("/views/concert/concertReserveTemplate.jsp?indexNo="+indexNo+"&concertCode="+concertCode+"&price="+price,"_blank","width=800px,height=750px;");
}
function nologin(){
	alert("로그인후 이용해 주세요");
}
function back(){
	location.href="/concertList";
}

function commentCheck(){
	if(document.getElementById('userComment').value == ""){
		alert('댓글을 입력해 주세요');
		return false;
	}else{
		alert('댓글이 입력되었습니다.');
		return true;
	}
	
}


function login(){
	alert("로그인후 이용해 주세요");
	window.open("/views/main/login.jsp","_black","width=850px,height=600px");
}













