/* javascript, jquery */
$(window).scroll(function() {
  $el = $('#scroll');
  
  if($(this).scrollTop() >= 100) $el.addClass('scroll');
  else $el.removeClass('scroll');
});

//$('#menuIcon').click(
//    $('#scroll').addClass('scroll');
//);
function menu(){
    $('#scroll').removeClass('scroll');
}