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
      
