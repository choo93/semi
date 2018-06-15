

var sel = false;
var sel2 ="";
function select(me){
	if(!sel){
		if(sel2==""){
			sel = true;
			me.style.backgroundColor = "blue";
			document.getElementById('seatNo').value = me.id;
			sel2 = me.id;
		}
	}else{		// 선택이 0 일 때
		if(me.id == sel2){
			sel=false;
			me.style.backgroundColor = "white";
			document.getElementById('seatNo').value = null;
			sel2 = "";
		}
	}
}
function selBool(){
	if(sel){
		pay();
	}else{
		alert('좌석을 선택해 주세요');
	}
}
