function reserve(doboCode,doboTitle){
	location.href="/views/dobo/doboReserveTemplate.jsp?doboCode=" + doboCode + "&doboTitle="+ doboTitle;
}

function back(){
	location.href="/doboList";
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