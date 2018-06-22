

var sel = false;
function select(me){
	if(!sel){
		sel = true;
		me.style.backgroundColor = "red";
		document.getElementById('roomNo').value = me.id;
	}else{
		
		if(me.id == document.getElementById('roomNo').value){
			sel=false;
			me.style.backgroundColor = "RGB(0, 125, 195)";
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

