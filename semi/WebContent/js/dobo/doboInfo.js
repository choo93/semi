function reserve(doboCode,doboTitle){
	location.href="/views/dobo/doboReserveTemplate.jsp?doboCode=" + doboCode + "&doboTitle="+ doboTitle;
}

function back(){
	location.href="/doboList";
}