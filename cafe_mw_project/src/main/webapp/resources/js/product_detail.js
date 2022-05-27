$(document).ready(function(){	 
	$('#product_detail_delete').click(function(){
		var product_detail_delete = confirm("삭제하시겠습니까?");	
		var product_detail_pnum = $('#product_detail_pnum').val();
		var product_detail_pmainsfile = $('#product_detail_pmainsfile').val();
		var product_detail_psfile1 = $('#product_detail_psfile1').val();
		var product_detail_psfile2 = $('#product_detail_psfile2').val();
		var product_detail_psfile3 = $('#product_detail_psfile3').val();
		var product_detail_psfile4 = $('#product_detail_psfile4').val();
		var product_detail_psfile5 = $('#product_detail_psfile5').val();
		
		if(product_detail_delete){
			$.ajax({
				type:'POST',
				async: true,
				data: {"pnum": product_detail_pnum,
					"pmainsfile": product_detail_pmainsfile,
					"psfile1" :product_detail_psfile1,
					"psfile2" :product_detail_psfile2,
					"psfile3" :product_detail_psfile3,
					"psfile4" :product_detail_psfile4,
					"psfile5" :product_detail_psfile5
				},
				url:"product_delete",
				dataType: "text",
				success : function(result) {
					if(result == 1){
						alert("삭제 되었습니다");
						location.href = "http://localhost:9000/manwol/admin/product_list";
					}
				},
				error: function(result) {
					alert("에러");
				}
			});
		}
	});
	
	$('button#cart_button').click(function(){
		var pnum = $('#for_cart').val();
		
		$.ajax({
				type:'POST',
				async: true,
				data: {"c_pnum":pnum
				},
				url:"shop_cart_insert",
				dataType: "text",
				success : function(result) {
					if(result == 1){
						var cart = confirm("장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?");
						
						if(cart){
							location.href = "http://localhost:9000/manwol/shop_cart";
						}
						
					}
				},
				error: function(result) {
					alert("에러");
				}
			});
	});
	
});
