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
    $('div.')
});