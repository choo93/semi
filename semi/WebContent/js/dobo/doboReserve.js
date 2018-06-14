function check(){
	if(document.getElementById('date').value==""){
		alert('날짜를 선택해 주세요');
		return false;
	}else if(document.getElementById('time').value ==""){
		alert('시간을 선택해 주세요');
		return false;
	}else if(document.getElementById('name').value ==""){
		alert('이름을 입력해 주세요');
		return false;
	}else if(document.getElementById('nation').value ==""){
		alert('국적을 입력해 주세요');
		return false;
	}else if(document.getElementById('phone').value ==""){
		alert('휴대전화 번호를 입력해 주세요');
		return false;
	}
	return true;
	
}