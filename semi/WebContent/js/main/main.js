/*intro*/
$(document).ready(function(){	
    $('#intro_page').vegas({
        slides:[
            {src:'../../image/main/bg1.jpg'},
            {src:'../../image/main/bg2.jpg'},
            {src:'../../image/main/bg3.jpg'},
            {src:'../../image/main/bg4.jpg'},
            {src:'../../image/main/bg5.jpg'},
            {src:'../../image/main/bg6.jpg'},
        ],delay:1700 
     });      
});

/*responsive-mobile, fixed page : sidenav*/
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.sidenav');
    var instances = M.Sidenav.init(elems, options);
});

$(document).ready(function(){
	$('.sidenav').sidenav();
});

/*responsive - mobile - category */
$(document).ready(function(){
	$('.collapsible').collapsible();
});

/* scrolling */
$(window).scroll(function() {
  $el = $('#scroll');
  
  if($(this).scrollTop() >= 60){
	  $el.addClass('scroll');
  }
  else{
      $el.removeClass('scroll');
  }
});

function menu(){
    $('#scroll').removeClass('scroll');
}


	



