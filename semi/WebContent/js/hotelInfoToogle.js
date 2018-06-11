
var toggleText1 = true;
var toggleText2 = true;
var toggleText3 = true;


$(document).ready(function(){
	$('#hotelExplainToggle').click(function () {

		$('#hotelTotalExplain').toggle('display');
		if(toggleText1==true)
		{
			window.document.getElementById('toggleText1').innerHTML = ("▼");
			toggleText1 = false;
		}
		else{
			console.log(document.getElementById('toggleText1'));
			window.document.getElementById('toggleText1').innerHTML = "▲";
			toggleText1 = true;
		}
	});
	
	$('#hotelPriceToggle').click(function () {

		$('#hotelPriceExplain').toggle('display');
		if(toggleText1==true)
		{
			window.document.getElementById('toggleText2').innerHTML = "▼";
			toggleText1 = false;
		}
		else{
			console.log(document.getElementById('toggleText2'));
			window.document.getElementById('toggleText2').innerHTML = "▲";
			toggleText1 = true;
		}
	});
	$('#hotelMapToggle').click(function () {

		$('#hotelMapInfo').toggle('display');
		if(toggleText1==true)
		{
			window.document.getElementById('toggleText3').innerHTML = "▼";
			toggleText1 = false;
		}
		else{
			console.log(document.getElementById('toggleText3'));
			window.document.getElementById('toggleText3').innerHTML = "▲";
			toggleText1 = true;
		}
	});
});