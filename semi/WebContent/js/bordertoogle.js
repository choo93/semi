// 토글용 스크립트
// 글자모양도 바꿈 ▼ ▲


var toggleText1 = true;

$(document).ready(function () {


    $('#basic_toggle').click(function () {

        $('#basic_info').slideToggle();
        if (toggleText1 == true) {
            window.document.getElementsByClassName('toggleText')[0].innerHTML = ("▼");
            toggleText1 = false;
        }
        else {
            window.document.getElementsByClassName('toggleText')[0].innerHTML = ("▲");
            toggleText1 = true;
        }
    });

    $('#detail_toggle').click(function () {

        $('#detail_info').slideToggle();
        if (toggleText1 == true) {
            window.document.getElementsByClassName('toggleText1')[0].innerHTML = ("▼");
            toggleText1 = false;
        }
        else {
            window.document.getElementsByClassName('toggleText1')[0].innerHTML = ("▲");
            toggleText1 = true;
        }
    });

    $('#map_toggle').click(function () {

        $('#map_info').slideToggle();
        if (toggleText1 == true) {
            window.document.getElementsByClassName('toggleText2')[0].innerHTML = ("▲");
            toggleText1 = false;
        }
        else {
            window.document.getElementsByClassName('toggleText2')[0].innerHTML = ("▼");
            toggleText1 = true;
        }
    });
   
    
    $('#review_toggle').click(function () {

        $('#review_info').slideToggle();
        if (toggleText1 == true) {
            window.document.getElementsByClassName('toggleText3')[0].innerHTML = ("▼");
            toggleText1 = false;
        }
        else {
            window.document.getElementsByClassName('toggleText3')[0].innerHTML = ("▲");
            toggleText1 = true;
        }
    });
});





