

var sel = false;
function select(me){
	if(!sel){
		sel = true;
		me.style.backgroundColor = "blue";
		document.getElementById('roomNo').value = me.id;
	}else{
		sel=false;
		me.style.backgroundColor = "white";
		document.getElementById('roomNo').value = null;
	}
}

function selBool(){
	if(sel){
		pay();
	}else{
		alert('호실을 선택해 주세요');
	}
}
