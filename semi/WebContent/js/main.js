/* scrolling */
$(window).scroll(function() {
  $el = $('#scroll');
  
  if($(this).scrollTop() >= 100) $el.addClass('scroll');
  else $el.removeClass('scroll');
});

function menu(){
    $('#scroll').removeClass('scroll');
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
});