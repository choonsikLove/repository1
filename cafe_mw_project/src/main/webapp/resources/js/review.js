$(document).ready(function(){
		$('.open_modal').click(function(){
			$('.modal2').fadeIn();
			$('.modal').fadeIn();
		});
		$('.close_modal').click(function(){
			$('.modal').fadeOut();
		});	
		$('.close_modal2').click(function(){
			$('.modal2').fadeOut();
		});		
	});
	
function fn_submit(){	

	if(document.comment2.c.value == ""){
	 alert("내용을 입력해주세요");
	 return false;
	}
	document.comment2.submit();	
}
function fn_submit1(){	

	if(document.comment3.v.value == ""){
	 alert("내용을 입력해주세요");
	 return false;
	}
	document.comment3.submit();	
}