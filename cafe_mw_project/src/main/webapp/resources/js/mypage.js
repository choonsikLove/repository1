	$(document).ready(function(){
		/*		정보수정 클릭시		*/
		$('.my_inform').click(function(){
			$('#mypage_modal_outer').css("display","block");
			$('#modify_inner').css("display","block");
		});
		
		/*		회원탈퇴 클릭시		*/
		$('.withdrow_btn').click(function(){
			$('#mypage_modal_outer').css("display","block");
			$('#withdraw_inner').css("display","block");
		});
		
		/*		끄기2		*/
		$('.modal_exit').click(function(){
			$('#mypage_modal_outer').css("display","none");
			$('#modify_inner').css("display","none");
			$('#withdraw_inner').css("display","none");
		});
		
		/*		끄기3		*/
		$('#withdraw_cancel').click(function(){
			$('#mypage_modal_outer').css("display","none");
			$('#withdraw_inner').css("display","none");
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