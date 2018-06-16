

var sel = false;
function select(me){
	if(!sel){
		alert('선택');
		sel = true;
		me.style.backgroundColor = "blue";
		document.getElementById('roomNo').value = me.id;
	}else{
		if(me.id == document.getElementById('roomNo').value){
			sel=false;
			me.style.backgroundColor = "white";
			document.getElementById('roomNo').value = null;
		}
	}
}

function selBool(){
	if(sel){
		pay();
	}else{
		alert('호실을 선택해 주세요');
	}
}
