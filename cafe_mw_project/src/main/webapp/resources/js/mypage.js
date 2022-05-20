	$(document).ready(function(){
		/*		정보수정 클릭시		*/
		$(document).off('click', '.my_inform').on('click', '.my_inform', function () {
			
			var member_email = $('#member_email').val();
			
			$.ajax({
				type: 'POST',
				async: true,
				data: {"email": member_email},
				url: "mypage_member_info",
				success : function(data){
					console.log(data);
					alert("성공" + data.mname);
					
					if(data.msprofile != null){
						var new_src = "http://localhost:9000/manwol/resources/upload/"+data.msprofile;
						$('#mypage_profile_img').attr("src", new_src);
					}
					
					$('#mypage_profile_memail').val(data.memail);
					$('#mypage_profile_mname').val(data.mname);
					$('#mypage_profile_mhp').val(data.mhp);
					$('#mypage_profile_maddr1').val(data.maddr1);
					$('#mypage_profile_maddr2').val(data.maddr2);
					$('#for_updating_profile').val(data.memail);
					$('#for_erasing_old_file').val(data.msprofile);
					
					if(data.msg_sms == 1){
						$('#mypage_profile_msg_sms').prop("checked", true);
					}
					
					if(data.msg_email == 1){
						$('#mypage_profile_msg_email').prop("checked", true);
					}
					
					if(data.reccode != null){
						$('#mypage_profile_reccode').html(data.reccode);
					}
					
					$('#mypage_modal_outer').css("display","block");
					$('#modify_inner').css("display","block");
					
					$(document).off('click', '#modify_submit').on('click', '#modify_submit', function () {
						var before_pass = $('input[name=before_pass]').val();
					
						if(before_pass == ""){
							alert("비밀번호를 입력해 주세요");
						} else{
							$.ajax({
								type: 'POST',
								async: true,
								data: {"memail": member_email, "mpass" : before_pass},
								url: "before_pass_check",
								success : function(result){
									if(result == 1){
										
										var mypage_msg_sms = 0;
										var mypage_msg_email = 0;
										
										if($('#mypage_profile_msg_sms').is(':checked')){
											mypage_msg_sms = 1;
										}
										if($('#mypage_profile_msg_email').is(':checked')){
											mypage_msg_email = 1;
										}
										
										var new_name = $('#mypage_profile_mname').val();
										var new_hp = $('#mypage_profile_mhp').val();
										var new_addr1 = $('#mypage_profile_maddr1').val();
										var new_addr2 = $('#mypage_profile_maddr2').val();
										
										var after_pass = $('input[name=after_pass]').val();
										var after_pass2 = $('#after_after_pass').val();
										
										$('#for_loading_mname').val(new_name);
										
										if($('input[name=after_pass]').val() == ""){//새 비밀번호 안 바꿈
											 $.ajax({
												type: 'POST',
												async: true,
												data: {"mname" : new_name, 
												"mhp" : new_hp, "maddr1" : new_addr1,
												"maddr2": new_addr2, "msg_sms": mypage_msg_sms,
												"msg_email" : mypage_msg_email,
												"memail" : member_email
												},
												url: "mypage_update_info",
												success : function(result){
													if(result == 1){
														
														if($('#update_profile').val()){
															update_profile_form.submit();
														} else {
															$('#mypage_mname').html(new_name);
															$('#mypage_modal_outer').css("display","none");
															$('#modify_inner').css("display","none");
															$('#withdraw_inner').css("display","none");
														}
														
														$('input[name=before_pass]').val("");
														$('input[name=after_pass]').val("");
														$('#after_after_pass').val("");
													}
												},
												error: function(){
													alert("실패");
												}
											});
										} else {// 새 비밀번호 바꿈
											if(after_pass2 == after_pass){// 둘이 같다. 작업 진행 가능
											
												 $.ajax({
													type: 'POST',
													async: true,
													data: {"mname" : new_name, 
													"mhp" : new_hp, "maddr1" : new_addr1,
													"maddr2": new_addr2, "msg_sms": mypage_msg_sms,
													"msg_email" : mypage_msg_email,
													"memail" : member_email,
													"mpass" : after_pass
													},
													url: "mypage_update_info",
													success : function(result){
														if(result == 1){
															if($('#update_profile').val()){
																update_profile_form.submit();
															} else{
																$('#mypage_mname').html(new_name);
																$('#mypage_modal_outer').css("display","none");
																$('#modify_inner').css("display","none");
																$('#withdraw_inner').css("display","none");
															}
															
															$('input[name=before_pass]').val("");
															$('input[name=after_pass]').val("");
															$('#after_after_pass').val("");
															
														}
													},
													error: function(){
														alert("실패");
													}
												});
											} else {
												alert("새 비밀번호와 확인 비밀번호가 다름");
											}//새 비밀번호랑 확인 비밀번호가 다름 
										}//새 비밀번호 바꿀지 안바꿀지 분기(위에랑 다르다)
										
									} else { //입력창에 비밀번호 다르게 입력했을 경우
										alert("입력창에 비번 제대로 쓰라고 띄우기 alert말고 다른걸로");
									}
								},
								error: function(){
									alert("실패");
								}
							});
							
					
						}
					});
					
					
				},
				error: function(data){
					alert("실패"); //데이터 못 불러왔을 때.
				}
			});
			
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
	
function loadFile(input) {
		var file = input.files[0];
		var mypage_profile_img = $('#mypage_profile_img');
		var url = URL.createObjectURL(file);
		mypage_profile_img.attr("src", url);
}