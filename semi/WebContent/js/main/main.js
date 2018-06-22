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

/* toggle */
$(document).ready(function(){
	$("#main_category_one").click(function(){
		$(this).next("ul").slideToggle('slow');
		$('#sub_category_two').css('display','none');
		$('#sub_category_three').css('display','none');
		$('#sub_category_four').css('display','none');
	});
	$("#main_category_two").click(function(){
		$(this).next("ul").slideToggle('slow');
		$('#sub_category_one').css('display','none');
		$('#sub_category_three').css('display','none');
		$('#sub_category_four').css('display','none');
	});
	$("#main_category_three").click(function(){
		$(this).next("ul").slideToggle('slow');
		$('#sub_category_two').css('display','none');
		$('#sub_category_one').css('display','none');
		$('#sub_category_four').css('display','none');
	});
	$("#main_category_four").click(function(){
		$(this).next("ul").slideToggle('slow');
		$('#sub_category_two').css('display','none');
		$('#sub_category_three').css('display','none');
		$('#sub_category_one').css('display','none');
	});
});	



