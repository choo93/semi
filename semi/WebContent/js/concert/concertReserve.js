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
	document.getElementById('price').innerHTML = Number(people)*Number(firstPrice);
	document.getElementById('pprice').value = Number(people)*Number(firstPrice);
}