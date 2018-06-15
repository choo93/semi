
var toggleText1 = true;
var toggleText2 = true;
var toggleText3 = true;


$(document).ready(function(){
	$('#hotelExplainToggle').click(function () {

		$('#hotelTotalExplain').slideToggle();
		if(toggleText1==true)
		{
			window.document.getElementsByClassName('toggleText1')[0].innerHTML = ("▲");
			toggleText1 = false;
		}
		else{
			window.document.getElementsByClassName('toggleText1')[0].innerHTML = ("▼");
			toggleText1 = true;
		}
	});
	
	$('#hotelPriceToggle').click(function () {

		$('#hotelPriceExplain').slideToggle();
		if(toggleText1==true)
		{
			window.document.getElementsByClassName('toggleText2')[0].innerHTML = "▼";
			toggleText1 = false;
		}
		else{
			window.document.getElementsByClassName('toggleText2')[0].innerHTML = "▲";
			toggleText1 = true;
		}
	});
	$('#hotelMapToggle').click(function () {

		$('#hotelMapInfo').slideToggle();
		if(toggleText1==true)
		{
			window.document.getElementsByClassName('toggleText3')[0].innerHTML = "▼";
			toggleText1 = false;
		}
		else{
			window.document.getElementsByClassName('toggleText3')[0].innerHTML = "▲";
			toggleText1 = true;
		}
	});
});