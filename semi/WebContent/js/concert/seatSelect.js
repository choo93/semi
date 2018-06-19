

var sel = false;
var maxNum =2;
var num = 0;
function select(me){
	var bool = true;	// true 이면 등록, false 이면 삭제
	var delNum;
	for(var i=0;i<maxNum;i++){
		if(document.getElementById('seatNo'+i).value == me.id){
			delNum = i;
			bool = false;
			break;
		}
	}
	
	if(bool){	// 등록 진행
		if(num<maxNum){
			me.style.backgroundColor = "red";
			document.getElementById('seatNo'+num).value = me.id;
			num++;
			if(num==maxNum){
				sel=true;
			}
		}
	}else{		// 삭제 진행
		if(num>0){
			me.style.backgroundColor = "RGB(0, 125, 195)";
			document.getElementById('seatNo'+(delNum)).value = null;
			num--;
			sel=false;
		}
	}
	alert(sel);
	/*if(!sel){
		if(num<maxNum){
			for(var i=0;i<num;i++){
				if(document.getElementById('seatNo'+i).value == me.id){
					boolInsert = false;
					break;
				}
			}
			if(boolInsert){
				me.style.backgroundColor = "red";
				document.getElementById('seatNo'+num).value = me.id;
				boolInsert = true;
				num++;
				if(num==maxNum){
					sel=true;
				}
			}
		}
	}else{		// 선택이 0 일 때
		for(var i=0;i<num;i++){
			if(document.getElementById('seatNo'+i).value == me.id){
				boolDelete = true;
				break;
			}
		}
		if(boolDelete){
			me.style.backgroundColor = "RGB(0, 125, 195)";
			document.getElementById('seatNo'+(num-1)).value = null;
			num--;
			sel = false;
		}
	}*/



}

function selBool(){
	if(sel){
		pay();
	}else{
		alert('좌석을 선택해 주세요');
	}
}
