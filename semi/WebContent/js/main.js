/* scrolling */
$(window).scroll(function() {
  $el = $('#scroll');
  
  if($(this).scrollTop() >= 10) $el.addClass('scroll');
  else $el.removeClass('scroll');
    
});

function menu(){
    $('#scroll').removeClass('scroll');
}

function close(){
    var close = document.getElementById('close_icon');
    console.log(close);
    $('#main_category').css.style.display="none";
}




$(document).ready(function(){
   $('.menu_one').click(function(){
      $('.sub_menu_one').slideToggle(); 
   });
   $('.menu_two').click(function(){
      $('.sub_menu_two').slideToggle(); 
   }); 
   $('.menu_three').click(function(){
      $('.sub_menu_three').slideToggle(); 
   }); 
   $('.menu_four').click(function(){
      $('.sub_menu_four').slideToggle(); 
   });
    
   $('#menu_icon').click(function(){
       $('#main_category').addClass('category_view');
   });
});

