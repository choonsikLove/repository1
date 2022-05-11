	$(document).ready(function(){
  		
  		
  		$('.slider1').slick({
			slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
			infinite : true, 	//무한 반복 옵션	 
			slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			speed : 1000,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
			dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
			autoplay : true,			// 자동 스크롤 사용 여부
			autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
			vertical : false,		// 세로 방향 슬라이드 옵션
			fade: true,
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
			dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
			draggable : true, 	//드래그 가능 여부 
			
			/* responsive: [ // 반응형 웹 구현 옵션
				{  
					breakpoint: 960, //화면 사이즈 960px
					settings: {
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:3 
					} 
				},
				{ 
					breakpoint: 768, //화면 사이즈 768px
					settings: {	
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:2 
					} 
				}
			] */

		});	
	
	
	
	
	
  		$('#slider2').slick({
			slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
			infinite : true, 	//무한 반복 옵션	 
			slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			speed : 1000,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
			dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
			autoplay : true,			// 자동 스크롤 사용 여부
			autoplaySpeed : 5000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
			vertical : false,		// 세로 방향 슬라이드 옵션
			fade: true,
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
			dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
			draggable : true, 	//드래그 가능 여부 
			
			/* responsive: [ // 반응형 웹 구현 옵션
				{  
					breakpoint: 960, //화면 사이즈 960px
					settings: {
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:3 
					} 
				},
				{ 
					breakpoint: 768, //화면 사이즈 768px
					settings: {	
						//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
						slidesToShow:2 
					} 
				}
			] */

		});	
  			
  	});

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
	$('.login_popup_box').css({"height":"510px",'top':'45%'});
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
		$('.login_popup_box').css({"height":"250px",'top':'28%'});
		$('#popup_cont4').css("display","block");
	} else if($('input:radio[value=byHp]').is(":checked")) {
		$('.popup_cont').css("display","none");
		$('.login_popup_box').css({"height":"250px",'top':'28%'});
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

