$(document).ready(function(){

/*		로그인 클릭시		*/
$('#login').click(function(){
	$('#popup').css("display","block");
});

/*		끄기1		*/
$('#closebutton').click(function(){
	$('#popup').css("display","none");
});

/*		끄기2		*/
$('#closeImage').click(function(){
	$('#popup').css("display","none");
});

/*		배경 누르면 꺼지는 기능 >>이거 안됨,,	*/
/*
$('#popup').focus(function(){
	$('#popup').css("display","none");
});
*/

/* 다음페이지로 넘어가는 기능..?*/
$('#nextButton').click(function(){
	var next = "<p>다음</p>";
	
	$('.popup_box').css("height","500px").html(next);
	
});



})

