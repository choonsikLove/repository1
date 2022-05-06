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
