

var sel = false;
function select(me){
	if(!sel){
		sel = true;
		me.style.backgroundColor = "blue";
		document.getElementById('seatNo').value = me.id;
	}else{
		sel=false;
		me.style.backgroundColor = "white";
		document.getElementById('seatNo').value = null;
	}
}
function selBool(){
	if(sel){
		pay();
	}else{
		alert('좌석을 선택해 주세요');
	}
}
