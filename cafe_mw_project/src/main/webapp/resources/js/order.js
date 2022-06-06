$(document).ready(function(){
var pr = document.getElementsByClassName('cart_check');
var qnt = document.getElementsByClassName('c_qnt');
var c_prices = document.getElementsByClassName('c_prices');
var c_prices_arr = new Array();
var sale_prices = document.getElementsByClassName('sale_prices');
var sale_prices_arr = new Array();
var sum2 = 0;

//초기 셋팅!
for(let i = 0; i < pr.length; i++){
	var price = parseInt(pr[i].value);
	var quantity = parseInt(qnt[i].value);
	
	c_prices[i].innerText = price * quantity;	
	c_prices_arr[i] = parseInt(c_prices[i].innerText);
	
	sale_prices_arr[i] = sale_prices[i].value * quantity;
	
	if(sale_prices_arr[i] != 0){
		sum2 += c_prices_arr[i] - sale_prices_arr[i];
	} 
}

var shipping = parseInt($('#shipping').text());
var sum1 = parseInt(c_prices_arr.reduce((a,b) => (a+b)));
$('span#product_price').text(sum1);
$('span#total_price').text(sum1 + shipping-sum2);
$('span#difference').text(sum2);
var sum3 = 0;
var sum4 = 0;

	

	$('input.cart_check').change(function(){
		var index = $(this).attr('data-index');
		var check_length = $('input.cart_check:checked').length;
		
		if($(this).is(':checked')){
		
			if($(this).next().val() != 0){
				sum3 -= c_prices_arr[index];
				sum4 -= (c_prices_arr[index] - sale_prices_arr[index]);
			}else{
				sum3 -= c_prices_arr[index];
			}
			
		}else{
			if($(this).next().val() != 0){
				sum3 += c_prices_arr[index];
				sum4 += (c_prices_arr[index] - sale_prices_arr[index]);
			}else{
				sum3 += c_prices_arr[index];
			}
			
		}
		
		
		
		if(!$('input.cart_check').is(':checked')){
			$('#shipping').text("0");
			shipping = 0;
			$('#cart_check_total').prop("checked", false);
		} else {
			$('#shipping').text("3000");
			shipping = 3000;
		}
		
		$('span#product_price').text(sum1-sum3);
		$('span#difference').text(sum2-sum4);
		$('span#total_price').text(sum1-sum3 + shipping -sum2 + sum4);
		
		var cart_check_no = document.querySelectorAll('.cart_check').length;
		
		if($('input.cart_check:checked').length==cart_check_no){
			$('#cart_check_total').prop("checked", true);
		} else{
			$('#cart_check_total').prop("checked", false);
		}
		
		$('span#cart_length').text(check_length);
	});
	
	$("#cart_check_total").click(function() {
		if($("#cart_check_total").is(":checked")) {
			$(".cart_check").prop("checked", true)
			$('span#product_price').text(sum1);
			$('span#difference').text(sum2-sum4);
			$('span#total_price').text(sum1-sum3 + shipping -sum2 + sum4);
			$('#shipping').text("3000");
			$('span#cart_length').text($('input.cart_check').length);
		}else {
			$(".cart_check").prop("checked", false);
			$('#product_price').text("0");
			$('#difference').text("0");
			$('#total_price').text("0");
			$('#shipping').text("0");
			$('span#cart_length').text("0");
		}
	});
	




	$("button.qnt_change").click(function(){
		var qnt_chng = $(this).prev().prev().prev().val();
		var cid = $(this).next().val();
		
		
		$.ajax({
			type:'POST',
			async: true,
			data: {"c_qnt": qnt_chng,
				"cid" : cid
			},
			url:"shop_cart_qnt_change",
			dataType: "text",
			success : function(result) {
				if(result == 1){
					alert("수량을 변경했습니다.");
					location.href = "http://localhost:9000/manwol/shop_cart";
				}
			},
			error: function(result) {
				alert("카트에 넣기 에러");
			}
		});
	
	
	});
	
	
	//선택할 상품이 없습니다 안 넣었다!>>휴 넣었당
	$("button.cart_delete").click(function(){
		if(!$('input.cart_check').is(':checked')){
			alert("삭제할 상품을 선택 해 주세요.");
		} else{
			var cart_delete = confirm("선택하신 상품을 삭제하겠습니까?");
			
			if(cart_delete){
				var cart_cid_arr = new Array();
				
				$('input.cart_check:checked').each(function(){
					cart_cid_arr.push($(this).prev().val());
				});
				
				
				$.ajax({
				    url : "shop_cart_delete",
				    type : "post",
				    data : { "cid_list" : cart_cid_arr },
				    success : function(result){
				    	if(result == 1){
				    		alert("장바구니에서 선택 상품을 삭제했습니다.");
				    		location.href = "http://localhost:9000/manwol/shop_cart";
				    	} else{
				    		alert("못했습니다");
				    	}
				    
				    },
					error: function(result) {
						alert("에러");
					}
				});
			
			}
		}
		
	});
	
	
	$('button.cart_button').click(function(){
		if(!$('input.cart_check').is(':checked')){
			alert("구매할 상품을 선택해 주세요");
		} else{
			var cid_arr = new Array();
				
			$('input.cart_check:checked').each(function(){
				cid_arr.push($(this).prev().val());
			});
			var text = "";
			for(let j = 0; j <cid_arr.length; j++){
				text += "<input type='hidden' value='" + cid_arr[j] + "' name='cids'>";
			}
			
			$('div#cart_to_payment').empty();
			$('div#cart_to_payment').append(text);
			
			cart_form.submit();
			
			
		}
	});
	
	
})

	var a = 0;
	
function fnCalCount(letter, obj, num){
	var c = document.querySelectorAll('.cart_check');
	var c_p = c[num].value; 
	var p_c_prices = document.querySelectorAll('.c_prices');
	
	if(letter == 'm'){
		a = obj.nextElementSibling.value;
	} else if(letter == 'p'){
		a = obj.previousElementSibling.value;
	}
	
	
	if(letter == 'm'){
		
		a--;
		
		if(a< 1){
			a = 1;
			alert("1개 이하로는 선택 못 함");
		}
		obj.nextElementSibling.value = a;
			
	} else if (letter == 'p'){
		
		a++;
	
		if(a > obj.nextElementSibling.value){
			a = obj.nextElementSibling.value;
			alert(obj.nextElementSibling.value + "개 이상으로는 선택 못 함");
		}
		
		obj.previousElementSibling.value = a;
	}
	
	p_c_prices[num].innerText = a * c_p;
}
