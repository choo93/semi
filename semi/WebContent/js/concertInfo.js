
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