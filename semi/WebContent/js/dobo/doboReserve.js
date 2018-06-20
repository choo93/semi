function check(){
	
	/*var name = document.getElementById('name');
	var nation = document.getElementById('nation');
	var phone = document.getElementById('phone');
	!regName.test(name.value)
	var regName = /^[a-zA-Z가-힣]+$/;
	var regNation ;
	var regPhone;*/
	
	if(document.getElementById('date').value==""){
		alert('날짜를 선택해 주세요');
		return false;
	}else if(document.getElementById('time').value ==""){
		alert('시간을 선택해 주세요');
		return false;
	}else if(document.getElementById('name').value==""){
		alert('올바른 이름을 입력해 주세요');
		return false;
	}else if(document.getElementById('nation').value ==""){
		alert('국적을 입력해 주세요');
		return false;
	}else if(document.getElementById('phone').value ==""){
		alert('휴대전화 번호를 입력해 주세요');
		return false;
	}
	alert(111);
	return true;
	
}