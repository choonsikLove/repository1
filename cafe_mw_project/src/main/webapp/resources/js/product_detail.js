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
		var memail = $('#memail_for_cart').val();
		
		if(qnt != 0){
			$.ajax({
					type:'POST',
					async: true,
					data: {"c_pnum":pnum,
						"memail":memail
					},
					url:"shop_cart_check",
					dataType: "text",
					success : function(result) {
						if(result == 0){
							$.ajax({
								type:'POST',
								async: true,
								data: {"c_pnum":pnum,
									"c_qnt":qnt,
									"memail":memail
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
									alert("카트에 넣기 에러");
								}
							});
							
							
						} else {
							var check =	confirm("장바구니에 이미 들어있습니다. 장바구니로 이동하시겠습니까?");
							if(check){
								location.href = "http://localhost:9000/manwol/shop_cart";
							}
						}
					},
					error: function(result) {
						alert("에러");
					}
				});
			
		} else{
			alert("1개 이상 주문해 주세요");
		}
		
	});
	
	/*  */
	var sub_images = $('img.sub_images');
	
	if(sub_images.width() > 900){
		sub_images.width('900px');
	}
	
	
	
	
});

	var qnt = 0;

function fnCalCount(letter){
	var max_qnt = parseInt($('#stock_for_cart').val());//?
	var pdp = parseInt($('p.product_detail_price').text());
	
	if(letter == 'm'){
		
		qnt--;
		
		if(qnt < 0){
			qnt = 0;
			alert("0개 이하로는 선택 못 함");
		}
		
			
	} else if (letter == 'p'){
		qnt++;
		
		if(qnt > max_qnt){
			qnt = max_qnt;
			alert(max_qnt + "개 이상으로는 선택 못 함");
		}
	}
	
	var tp = qnt * pdp;
	
	$('input[name=qnt]').val(qnt);
	$('span#qnt_price').text(tp);
}

