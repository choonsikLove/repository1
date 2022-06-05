  /* 수정 버튼 */
   $(document).ready(function(){
      
      $("#btnx").click(function(){
            $('.payment_guide1_2').show();
           $('.payment_guide1_1').hide();
          $('.payment_btn').hide();
        });
      });
   
   /* 변경 버튼 */
   $(document).ready(function(){
	   $('.deliver2').hide();
       $('.deliver3').hide();
      
      $("#btnx1").click(function(){
            $('.deliver2').show();
           $('.deliver3').hide();
          $('.deliver').hide();
        });
      });
   /**/
   $(document).ready(function(){
      
      $("#btnx2").click(function(){
            $('.deliver3').show();
           $('.deliver').hide();
          $('.deliver2').hide();
        });
      });
   $(document).ready(function(){
	      
	      $("#btnx1_1").click(function(){
	            $('.deliver2').show();
	           $('.deliver').hide();
	          $('.deliver3').hide();
	        });
	      });
   $(document).ready(function(){
	      
	      $("#btnx1_2").click(function(){
	            $('.deliver3').show();
	           $('.deliver').hide();
	          $('.deliver2').hide();
	        });
	      });
   

  
  
  /* 모달창 */   
$(document).ready(function(){
 		$('.coupon_modal').click(function(){
 			$('.modal').fadeIn();
 		});
 		$('.close_modal').click(function(){
 			$('.modal').fadeOut();
 		});	
 	});	
  
   
   /*코드확인 버튼 alert창 */
   function codecheck() {
       alert("올바른 쿠폰이 아닙니다");
   }

   
   
      /* 무통장 입금*/
      $(document).ready(function(){
         $('#selectPay_noBank').hide();
         
         $("input[name='pay']").change(function(){
            if ($("input[name='pay']:checked").val() == '무통장입금'){
               $('#selectPay_noBank').show();
         }else {
            $('#selectPay_noBank').hide();
         }
         })
      })
      
      /* 현금영수증 신청*/
      $(document).ready(function(){
         $('#selectPay_noBank1').hide();
         
         $("input[name='cash']").change(function(){
            if ($("input[name='cash']:checked").val() == '현금영수증 신청'){
               $('#selectPay_noBank1').show();
               $('#selectPay_noBank2').show();
         
            } else {
            $('#selectPay_noBank1').hide();
            $('#selectPay_noBank2').hide();
            $('#selectPay_noBank3').hide();
         }
         })
      })
      
      $(document).ready(function(){
         $("input[name='cash1']").change(function(){
            if ($("input[name='cash1']:checked").val() == '지출증빙용'){
                  $('#selectPay_noBank3').show();
                  $('#selectPay_noBank2').hide();
         }else if ($("input[name='cash1']:checked").val() == '소득공제용'){
            $('#selectPay_noBank2').show();
            $('#selectPay_noBank3').hide();
         }
         })
      })
      
      
      
      function selectAll(selectAll)  {
           const checkboxes 
                = document.getElementsByName('agree');
           
           checkboxes.forEach((checkbox) => {
             checkbox.checked = selectAll.checked;
           })
         }
$(document).ready(function(){
	$('button.agreement_btn1').click(function(){
		
			
		if(!$('input[name="agree"]').is(":checked")){
			alert("결제 진행에 동의해 주세요!");
			return false;
		} else if($('input[name=obuyer]').val() == ""){
			alert("주문자 성명을 입력해 주세요!");
			$('input[name=obuyer]').focus();
			return false;
		} else if($('input[name=ob_hp]').val() == ""){
			alert("주문자의 연락처를 입력해 주세요!");
			$('input[name=ob_hp]').focus();
			return false;
		} else if($('input[name=ob_email]').val() == ""){
			alert("주문자의 이메일을 입력해 주세요!");
			$('input[name=ob_email]').focus();
			return false;
		} else if($('input[name=orecipient]').val() == ""){
			alert("수령인 성명을 입력해 주세요!");
			$('input[name=orecipient]').focus();
			return false;
		} else if($('input[name=or_hp]').val() == ""){
			alert("수령인의 연락처를 입력해 주세요!");
			$('input[name=or_hp]').focus();
			return false;
		} else if($('input[name=or_post]').val() == ""){
			alert("수령인의 우편번호를 입력해 주세요!");
			$('input[name=or_post]').focus();
			return false;
		} else if($('input[name=or_addr1]').val() == ""){
			alert("수령인의 주소를 완전히 입력해 주세요!");
			$('input[name=or_addr1]').focus();
			return false;
		} else if($('input[name=or_addr2]').val() == ""){
			alert("수령인의 주소를 완전히 입력해 주세요!");
			$('input[name=or_addr2]').focus();
			return false;
		} else if(!$('input[name="opayment"]').is(":checked")){
			alert("결제 수단을 선택해 주세요!");
		} else{
			payment_form.submit();
		}
		
	});
	
	var in_total = $('span#in_total').text().trim();
	$('input[name=ototal]').val(in_total);
	
	$('input#same_b_r').change(function(){
		if($(this).is(':checked')){
			$('input[name=orecipient]').val($('input[name=obuyer]').val());
			$('input[name=or_hp]').val($('input[name=ob_hp').val());
			$('input[name=or_addr1]').val($('p#ob_addr1').text());
			$('input[name=or_addr2]').val($('p#ob_addr2').text());
			
		} else{
			$('input[name=orecipient]').val("");
			$('input[name=or_hp]').val("");
			$('input[name=or_addr1]').val("");
			$('input[name=or_addr2]').val("");
		};
	});
	

}); 
