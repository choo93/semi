

var selectedRoom;
var sel =false;
function select(me){
	if(selectedRoom!=me)
	{
		//선택한거
		me.style.backgroundColor = "red";
		document.getElementById('roomNo').value = me.id;

		//이전꺼
		if(selectedRoom!=null){
			selectedRoom.style.backgroundColor = "RGB(0, 125, 195)";
		}
		sel  = true;
	}
	
	selectedRoom = me;
	
	
//	if(!sel){
//		sel = true;
//		me.style.backgroundColor = "red";
//		document.getElementById('roomNo').value = me.id;
//	}else{		
//		if(me.id == document.getElementById('roomNo').value){
//			sel=false;
//			me.style.backgroundColor = "RGB(0, 125, 195)";
//			document.getElementById('roomNo').value = null;
//		}	
//	}
}
function selBool(){
	if(sel){
		pay();
	}else{
		alert('호실을 선택해 주세요');
	}
}

