function check(){
	if(document.getElementById('datepicker1').value == ""){
		alert('날짜를 입력해 주세요');
		return false;
	}else if(document.getElementById('time').value == ""){
		alert('시간을 입력해 주세요');
		return false;
	}
	
	return true;
	
}

function changePrice(){
	var people = document.getElementById('people').value;
	var firstPrice = document.getElementById('firstPrice').value;
	document.getElementById('price').innerHTML = Math.floor((Number(people)*Number(firstPrice))/1000) + "," + ((Number(people)*Number(firstPrice))/100%10)+"00";
	document.getElementById('pprice').value = Number(people)*Number(firstPrice);
}
