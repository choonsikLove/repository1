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
 	
 	
 	$('#baseBox').mouseenter(function(){
 		$('#baseTypes').css('visibility','visible');
 	});
 	
 	$('#baseTypes').mouseleave(function(){
 		$('#baseTypes').css('visibility','hidden');
 	});
		
 	$('#closeX2').click(function(){
		$('#order_popup').css("display","none");
		$('#invoice').val("");
	});
	
});
  	
jQuery(document).on('click', '.orderStatus_update', function () {
	var a = $(this);
	var a_oid = $(this).prev().val();
	var txt = "";
	var order_invoice = $(this).next();
	$('#order_popup').css("display","block");
		
	jQuery(document).off('click', '.orderStatus_change').on('click', '.orderStatus_change', function () {
		var done = false;
		var o_status = 0;
		
		if(a.text() == '입금 대기 중' && $(this).text() == '배송 준비'){
			o_status = 1;
			$("#invoice").attr("disabled", true);
			done = true;
			
		} else if(a.text() == '배송 준비' && $(this).text() == '배송 중'){
			$("#invoice").attr("disabled", false);
			
			jQuery(document).off('click', '#addInvoice').on('click', '#addInvoice', function () {
				var invoice = $('#invoice').val();
				if(invoice.length != 5){//임의
					alert("5자리의 운송장번호를 입력 해 주세요");
				} else{
					$.ajax({
					    url : "invoice_update",
					    type : "post",
					    data : { "oid" : a_oid,
					    	"oinvoice" : invoice },
					    success : function(result){
					    	if(result == 1){
					    		alert("운송장 번호를 등록했습니다.");
								o_status = 2;
								
								$.ajax({
								    url : "order_status_update",
								    type : "post",
								    data : { "oid" : a_oid,
								    	"ostatus" : o_status },
								    success : function(result){
								    	if(result == 1){
								    		alert("주문 상태가 변경되었습니다.");
											a.text(txt);
											order_invoice.val(invoice);
											location.reload();
								    	}
								    
								    },
									error: function(result) {
										alert("에러");
									}
								});
								
								
					    	} else{
					    		alert("운송장 번호 등록에 실패했습니다. 다시 등록 해 주세요.");
					    	}
					    },
						error: function(result) {
							alert("에러");
						}
					});
					
					$("#invoice").attr("disabled", true);
				}
			});
			
		} else if(a.text() == '배송 준비' && $(this).text() == '입금 대기 중'){
			o_status = 0;
			$("#invoice").attr("disabled", true);
			done = true;
				
		} else if(a.text() == '배송 중' && $(this).text() == '배송 완료'){
			o_status = 3;
			$("#invoice").attr("disabled", true);
			done = true;
				
		} else if(a.text() == '배송 중' && $(this).text() == '배송 준비'){
			var undo_check2 = prompt("배송 중 상태를 배송 준비 상태로 되돌리시겠습니까?\n상태를 변경할 경우, 등록된 운송장 번호도 함께 삭제됩니다.\n" + 
							"상태를 변경하시려면 코드를 입력 해 주세요.");
									
			if(undo_check2 == 3){ 
				$.ajax({
				    url : "invoice_delete",
				    type : "post",
				    data : { "oid" : a_oid },
				    success : function(result){
				    	if(result == 1){
				    		alert("등록된 운송장 번호를 식제했습니다.");
							o_status = 1;
							
							$.ajax({
							    url : "order_status_update",
							    type : "post",
							    data : { "oid" : a_oid,
							    	"ostatus" : o_status },
							    success : function(result){
							    	if(result == 1){
							    		alert("주문 상태가 변경되었습니다.");
										a.text(txt);
										order_invoice.val("운송장 번호 미등록");
										$('#invoice').val("");
										location.reload();
							    	}
							    
							    },
								error: function(result) {
									alert("에러");
								}
							});
							
							
				    	} else{
				    		alert("운송장 번호 삭제에 실패했습니다. 다시 시도해 주세요.");
				    	}
				    },
					error: function(result) {
						alert("에러");
					}
				});
			
			} else {
				alert("코드가 일치하지 않습니다");
			}
			
		} else if(a.text() == '배송 완료' && $(this).text() == '배송 중'){
			o_status = 2;
			$("#invoice").attr("disabled", true);
			done = true;
		}
		
		txt = $(this).text();
		
		
		if(done){
			$.ajax({
			    url : "order_status_update",
			    type : "post",
			    data : { "oid" : a_oid,
			    	"ostatus" : o_status },
			    success : function(result){
			    	if(result == 1){
			    		alert("주문 상태가 변경되었습니다.");
						a.text(txt);
						location.reload();
			    	}
			    
			    },
				error: function(result) {
					alert("에러");
				}
			});
		}
		
  	});
  	
});
  	
