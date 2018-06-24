

var sel = false;
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
			me.style.backgroundColor = "white";
			document.getElementById('seatNo'+(delNum)).value = null;
			num--;
			sel=false;
		}
	}

}

function selBool(){
	if(sel){
		pay();
	}else{
		alert(maxNum + '개의 좌석을 선택해 주세요');
	}
}
