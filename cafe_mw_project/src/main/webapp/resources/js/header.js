$(document).ready(function(){

/*		로그인 클릭시		*/
$('#login').click(function(){
	$('#popup').css("display","block");
});


/*		끄기1		*/
$('#closeImage').click(function(){
	$('#popup').css("display","none");
	
	$('.popup_cont').css("display","none");
	$('.popup_box').css("height","54%").css("width","380px");
	$('#popup_cont1').css("display","block");
});


/* 다음페이지로 넘어가는 기능..?*/
$('#nextButton').click(function(){
	/*
	주석
	var next = "<p>다음</p>";
	
	$('.popup_box').css("height","500px").html(next);
	주석
	*/
	
	$('#popup_cont1').css("display","none");
	$('.popup_box').css("height","500px");
	$('#popup_cont2').css("display","block");
	
	
});



})

