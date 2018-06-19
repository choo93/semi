$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#checkall").click(function(){
        //클릭되었으면
        if($("#checkall").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=chk]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=chk]").prop("checked",false);
        }
    });
    $(".checkone").click(function(){
    	$('#checkall').prop("checked",false);
    });
});

function next(){
	if($('#checkedone').prop("checked")){
		if($('#checkedtwo').prop("checked")){
			location.href="/views/main/joinusTwo.jsp";
		}
		else{
			alert("체크하지 않은 항목이 있습니다");
		}
	}else{
		alert("체크하지 않은 항목이 있습니다");
	}
}