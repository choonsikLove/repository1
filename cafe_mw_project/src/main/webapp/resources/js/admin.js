$(document).ready(function(){

 	$('.deleteRecipe').click(function(){
 		var choice = confirm("삭제하시겠습니까?");
 		var rid = $(this).next().val();
 		
 		if(choice){
 			$.ajax({
				type:'POST',
				async: true,
				data: {"rid" : rid
				},
				url:"recipe_to_delete",
				dataType: "text",
				success : function(data) {
					var info = jQuery.parseJSON(data);
					var rsfile1 = info.rsfile1;
					var rsfile2 = info.rsfile2;
					var rsfile3 = info.rsfile3;
					var rsfile4 = info.rsfile4;
					var rsfile5 = info.rsfile5;
					var rsfile6 = info.rsfile6;
					
					
						$.ajax({
							type:'POST',
							async: true,
							data: {"rid": rid,
							"rsfile1" : rsfile1,
							"rsfile2" : rsfile2,
							"rsfile3" : rsfile3,
							"rsfile4" : rsfile4,
							"rsfile5" : rsfile5,
							"rsfile6" : rsfile6
							},
							url:"recipe_delete",
							dataType: "text",
							success : function(result) {
								if(result == 1){
									alert("삭제되었습니다");
									location.href = "http://localhost:9000/manwol/admin/recipe";
								}
							},
							error: function() {
								alert("에러");
							}
						});
				},
				error: function(data) {
					alert("에러");
				}
			});
 			
			
 		
			
 		} 
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
 			//아직 리뷰가 없음!
 		} 
 	});
 	
 	
 	$('#baseBox').mouseenter(function(){
 		$('#baseTypes').css('visibility','visible');
 	});
 	
 	$('#baseTypes').mouseleave(function(){
 		$('#baseTypes').css('visibility','hidden');
 	});
		
 	$('#closeX2').click(function(){
		$('#order_popup').css("display","none");
	});
	
});
  	
jQuery(document).on('click', '.orderStatus_update', function () {
	var a = $(this);
	$('#order_popup').css("display","block");
		
	jQuery(document).off('click', '.orderStatus_change').on('click', '.orderStatus_change', function () {
		a.text($(this).text());
  	});
});
  	
