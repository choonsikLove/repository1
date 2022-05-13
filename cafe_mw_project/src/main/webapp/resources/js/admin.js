$(document).ready(function(){

	$('.toMemberPage').click(function(){
 		window.open("http://localhost:9000/manwol/admin/member_page","_blank");
 	});
 	
 	$('.deleteRecipe').click(function(){
 		var choice = confirm("삭제하시겠습니까?");
 		
 		if(choice){
 			$(this).siblings().remove();
 			$(this).remove();
 			//$(this).parent().remove();
 		} 
 	});
 	
 	
 	$('.hideRecipe').click(function(){
 		alert("레시피 숨김기능");
 	});
 	
 	$('.review_mini').mouseover(function(){
 		$(this).css('background','#dedede');
 	});
 	
 	$('.review_mini').mouseout(function(){
 		$(this).css('background','transparent');
 	});
 	
 	$('.deleteReview').click(function(){
 		var choice = confirm("삭제하시겠습니까?");
 		
 		if(choice){
 			$(this).parent().remove();
 		} 
 	});
 	
 	$('.hideReview').click(function(){
 		var choice = confirm("숨김 처리하시겠습니까?");
 		
 		if(choice){
 			alert("숨김 처리 기능 넣기");
 		} 
 	});
 	
 	$('#baseBox').click(function(){
 		$('#baseTypes').css('visibility','visible');
 	});
 	
});
