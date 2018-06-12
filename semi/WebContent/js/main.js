/* intro page */
$(document).ready(function(){
       $('#intro_page').vegas({
          slides:[
              {src:'image/main/bg1.jpg'},
              {src:'image/main/bg2.jpg'},
              {src:'image/main/bg3.jpg'},
              {src:'image/main/bg4.jpg'},
              {src:'image/main/bg5.jpg'},
              {src:'image/main/bg6.jpg'}
          ],
            delay:1700
       }); 
});

/* scrolling */
$(window).scroll(function() {
  $el = $('#scroll');
  
  if($(this).scrollTop() >= 60){
      $('.sub_menu_one').css('display','none');
      $('.sub_menu_two').css('display','none');
      $('.sub_menu_three').css('display','none');
      $('.sub_menu_four').css('display','none');  
   $el.addClass('scroll');
  }
  else{
      $el.removeClass('scroll');
  }
});

function menu(){
    $('#scroll').removeClass('scroll');
}

/* menu slideToggle */
$(document).ready(function(){
   $('.menu_one').click(function(){
      $('.sub_menu_one').slideToggle(800); 
      $('.sub_menu_two').css('display','none');
      $('.sub_menu_three').css('display','none');
      $('.sub_menu_four').css('display','none');       
   });
   $('.menu_two').click(function(){
      $('.sub_menu_two').slideToggle(800);
      $('.sub_menu_one').css('display','none');
      $('.sub_menu_three').css('display','none');
      $('.sub_menu_four').css('display','none');       
   }); 
   $('.menu_three').click(function(){
      $('.sub_menu_three').slideToggle(800);        
      $('.sub_menu_one').css('display','none');
      $('.sub_menu_two').css('display','none');
      $('.sub_menu_four').css('display','none');         
   }); 
   $('.menu_four').click(function(){
      $('.sub_menu_four').slideToggle(800);        
      $('.sub_menu_two').css('display','none');
      $('.sub_menu_three').css('display','none');
      $('.sub_menu_one').css('display','none');        
   });    
});

