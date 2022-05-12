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
 		alert("bye");
 	});
 
});