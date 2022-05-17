$(document).ready(function(){
	/*		JOIN 클릭시		*/
	$('#join').click(function(){
		$('#join_outer').css("display","block");
		$('#join_inner_1').css("display","block");
	});
	
	/*		다른 메일로 가입하기 클릭시		*/
	$('#mail_join').click(function(){
		$('#join_outer').css("display","block");
		$('#join_inner_1').css("display","none");
		$('#join_inner_2').css("display","block");
	});
	
	/*		약관동의-가입하기 클릭시		*/
	$('#join_agree').click(function(){
		if($('#agree1').is(':checked')){
			if($('#agree2').is(':checked')){
				$('#join_outer').css("display","block");
				$('#join_inner_2').css("display","none");
				$('#join_inner_3').css("display","block");
			}
		}else{
			alert("이용약관 및 개인정보 처리방침에 동의하셔야 가입이 가능합니다.");
		}
	});
	
	
	/*		외부클릭 끄기		*/
	$('#join_inner_1').off().mouseout(function(){
		$('#join_outer').off().click(function(){
		});
	});
	$('#join_inner_1').mouseenter(function(){
		$('#join_outer').click(function(){
		
		});
		$('#join_inner_1').click(function(){
		
		});
		
		
	});
	
	
	/*		끄기2		*/
	$('.modal_exit').click(function(){
		$('#join_outer').css("display","none");
		$('#join_inner_1').css("display","none");
		$('#join_inner_2').css("display","none");
		$('#join_inner_3').css("display","none");
	});
	
	/*		끄기3		*/
	$('#join_cancel').click(function(){
		$('#join_outer').css("display","none");
		$('#join_inner_1').css("display","none");
		$('#join_inner_2').css("display","none");
		$('#join_inner_3').css("display","none");
	});
	
	/*		X에 마우스 올라갈 때		*/
	$('.modal_exit').mouseenter(function(){
		$('.modal_exit_ex').css("display","block");
	});

	/*		X에서 마우스 벗어날 때		*/
	$('.modal_exit').mouseleave(function(){
		$('.modal_exit_ex').css("display","none");
	});
});

	function selectAll(selectAll)  {
		  const checkboxes 
		     = document.querySelectorAll('input[type="checkbox"]');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked
		  })
		}





$(document).ready(function(){

/*		로그인 클릭시		*/
$('#login').click(function(){
	$('#popup').css("display","block");
});

$('.backToLogin').click(function(){
	$('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"620px","width":"370px",
		"top":"53%"});
	$('#popup_cont1').css("display","block");
});

/*		끄기1		*/
$('#closeX').click(function(){
	$('#popup').css("display","none");
	
	$('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"620px","width":"370px",
		"top":"53%"});
	$('#popup_cont1').css("display","block");
});


/* 다음페이지로 넘어가는 기능*/
/* 비회원 주문 배송 */
$('#visitorOrder').click(function(){
	
	$('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"270px",'top':'30%'});
	$('#popup_cont99').css("display","block");
	
	
});

/* 아이디 비밀번호 찾기 */
$('#findIDPW').click(function(){
	$('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"510px",'top':'45%'});
	$('#popup_cont2').css("display","block");
	
});


})

$(document).on("click", "#findID", function(){
    $('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"515px",'top':'45%'});
	$('#popup_cont2').css("display","block");
});

$(document).on("click", "#findPW", function(){
	$('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"270px",'top':'30%'});
	$('#popup_cont3').css("display","block");
});

$(document).on("click", "#findIDButton", function(){
	if($('input:radio[value=byEmail]').is(":checked")){
		$('.popup_cont').css("display","none");
		$('.login_popup_box').css({"height":"260px",'top':'28%'});
		$('#popup_cont4').css("display","block");
	} else if($('input:radio[value=byHp]').is(":checked")) {
		$('.popup_cont').css("display","none");
		$('.login_popup_box').css({"height":"260px",'top':'28%'});
		$('#popup_cont4').css("display","block");
		/*둘이 내용은 같은데 넣는 정보가 달라서 둘로 나눴음*/
	} else {
		alert("여긴 안 씁니다");
	}

});

$(document).on("change", "input:radio[value=byEmail]", function(){
	$('input:text[name=mhp]').css("display","none");
	$('input:text[name=mname]').css("display","none");
	$('input:text[name=memail]').css("display","block");
});

$(document).on("change", "input:radio[value=byHp]", function(){
	$('input:text[name=memail]#idEmail').css("display","none");
	$('input:text[name=mname]').css("display","block");
	$('input:text[name=mhp]').css("display","block");
});

$(document).on("change", "input:radio:not([value=byHp]):not([value=byEmail])", function(){
	$('input:text[name=memail]#idEmail').css("display","none");
	$('input:text[name=mname]').css("display","none");
	$('input:text[name=mhp]').css("display","none");
});

$(document).on("click", ".newPW", function(){
	$('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"300px",'top':'32%'});
	$('#popup_cont5').css("display","block");
});

$(document).on("click", "#findPWButton", function(){
	$('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"250px",'top':'28%'});
	$('#popup_cont6').css("display","block");
});

$(document).on("click", "#toJoin", function(){
	$('.popup_cont').css("display","none");
	$('#popup').css("display","none");
	$('#join_outer').css("display","block");
	$('#join_inner_1').css("display","block");
});

