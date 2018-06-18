$(document).ready(function(){
	$('.sidenav').sidenav();
});

/* toggle */
$(document).ready(function(){
	$("#main_category_one").click(function(){
		$(this).next("ul").slideToggle('slow',function(){
			
		});
		$('#sub_category_two').css('display','none');
		$('#sub_category_three').css('display','none');
		$('#sub_category_four').css('display','none');
	});
	$("#main_category_two").click(function(){
		$(this).next("ul").slideToggle('slow',function(){
			location.href="/views/enjoy/enjoyPhoto.jsp";
		});
		$('#sub_category_one').css('display','none');
		$('#sub_category_three').css('display','none');
		$('#sub_category_four').css('display','none');
	});
	$("#main_category_three").click(function(){
		$(this).next("ul").slideToggle('slow',function(){
			
		});
		$('#sub_category_two').css('display','none');
		$('#sub_category_one').css('display','none');
		$('#sub_category_four').css('display','none');
	});
	$("#main_category_four").click(function(){
		$(this).next("ul").slideToggle('slow',function(){
			location.href="/views/travelReady/travelReady.jsp";
		});
		$('#sub_category_two').css('display','none');
		$('#sub_category_three').css('display','none');
		$('#sub_category_one').css('display','none');
	});
});	