function check(){
	
	var name = document.getElementById('name');
	var nation = document.getEElementById('nation');
	var phone = document.getElementById('phone');
	
	var regName = /^[a-zA-Z가-힣]+$/;
	var regNation = /^[a-zA-Z가-힣]+$/;
	var regPhone = /^[0-9]{11}$/;
	
	if(document.getElementById('datepicker1').value==""){
		alert('날짜를 선택해 주세요');
		return false;
	}else if(document.getElementById('time').value ==""){
		alert('시간을 선택해 주세요');
		return false;
	}else if(!regName.test(name.value)){
		alert('올바른 이름을 입력해 주세요\n\(한글 혹은 영어\)');
		return false;
	}else if(!regNation.test(nation.value)){
		alert('국적을 입력해 주세요\(한글 혹은 영어\)');
		return false;
	}else if(!regPhone.test(phone.value)){
		alert('휴대전화 번호를 입력해 주세요\n\(숫자 11개\)');
		return false;
	}
	return true;
	
}

function back(){
	history.go(-1);
}