$(document).ready(function(){

/*		로그인 클릭시		*/
$('#login').click(function(){
	$('#popup').css("display","block");
});

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
	$('#join_outer').css("display","block");
	$('#join_inner_2').css("display","none");
	$('#join_inner_3').css("display","block");
});

/*		끄기1		*/
$('#closeX').click(function(){
	$('#popup').css("display","none");
	
	$('.popup_cont').css("display","none");
	$('.login_popup_box').css({"height":"620px","width":"370px",
		"top":"53%"});
	$('#popup_cont1').css("display","block");
});

/*		끄기2		*/
$('.modal_exit').click(function(){
	$('#join_outer').css("display","none");
	$('#join_inner_1').css("display","none");
	$('#join_inner_2').css("display","none");
	$('#join_inner_3').css("display","none");
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

