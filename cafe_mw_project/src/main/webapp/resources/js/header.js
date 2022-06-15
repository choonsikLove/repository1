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
	
	
	var msg_sms = 0;
	var msg_email = 0;
	
	/*		약관동의-가입하기 클릭시		*/
	$('#join_agree').click(function(){
		if($('#agree1').is(':checked')){
		
			if($('#agree2').is(':checked')){
				if($('input[name=smsReceive]').is(':checked')){
					msg_sms = 1;
				}
				
				if($('input[name=emailReceive]').is(':checked')){
					msg_email = 1;
				}
				
				$('input[name=msg_sms]').val(msg_sms);
				$('input[name=msg_email]').val(msg_email);
				
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

function loadFile(input) {
		var file = input.files[0];
		var join_profile_img = $('#profile_img');
		var url = URL.createObjectURL(file);
		join_profile_img.attr("src", url);
}


$(document).ready(function(){

/*		로그인 클릭시		*/
$('#login').click(function(){
	$('#popup').css("display","block");
});

/*		마이페이지 클릭시		*/
$('#mypage').click(function(){
	$(location).attr("href", "shop_mypage");
});

$('#to_admin').click(function(){
	$(location).attr("href","admin");
});

/*		로그아웃 클릭시		*/
$('#logout').click(function(){
	$(location).attr("href", "logout");
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
	$('#mwEmail').val("");
	$('#mwPass').val("");
	$('#loginCheck').prop("checked",true);
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


$('#join_submit').click(function(){
		if($("#memail").val() == ""){
			alert("아이디를 입력해주세요");
			$("#memail").focus();
			return false;
		}else if($("#mpass").val() == ""){
			alert("패스워드를 입력해주세요");
			$("#mpass").focus();
			return false;
		}else if($("#mname").val() ==""){
			alert("이름을 입력해주세요");
			$("#mname").focus();
			return false;
		}else if($("#mhp").val() == ""){
			alert("연락처를 입력해주세요");
			$("#mhp").focus();
			return false;
		}else if($("#maddr1").val() == ""){
			alert("주소를 입력해주세요");
			$("#maddr1").focus();
			return false;
		}else if($("#maddr2").val() == ""){
			alert("상세주소를 입력해주세요");
			$("#maddr2").focus();
			return false;
		}else{
			join_form.submit();
		}			
});

$('#memail').blur(function(){
	var memail = $('#memail').val();
	
	if(memail == ""){
	//?
	} else {
		$.ajax({
			type:'POST',
			async: true,
			data: {email : memail},
			url:"idCheck",
			dataType: "text",
			success : function(result) {
				if(result == 1){
					alert("사용 불가능한 이메일");
				} else {
					alert("사용 가능한 이메일");
				}
			},
			error: function(result) {
				alert("에러");
			}
		});
	}

});


}) //document.ready

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

var carriedEmail = "";

$(document).on("click", "#findIDButton", function(){
	var idEmail = $('#idEmail').val();
	var idName = $('#idName').val();
	var idHp = $('#idHp').val();
	
	if($('input:radio[value=byEmail]').is(":checked")){
		
		if(idEmail == ""){
			alert("이메일을 입력해 주세요");
		} else {
			$.ajax({
				type: 'POST',
				async: true,
				data: {email: idEmail},
				url: "emailCheck",
				success : function(data){
					if(data != ""){
						carriedEmail = data;
						$('#foundEmail').html(data);
						$('#idEmail').val("");
						$('.popup_cont').css("display","none");
						$('.login_popup_box').css({"height":"260px",'top':'28%'});
						$('#popup_cont4').css("display","block");
					} else {
						alert("입력하신 정보와 일치하는 계정을 찾지 못했습니다.");
						$('#idEmail').val("");
					}
				},
				error: function(){
					alert("실패");
				}
			});
		
		}
		
	} else if($('input:radio[value=byHp]').is(":checked")) {
	
		if(idName == ""){
			alert("이름 또는 아이디를 입력해 주세요");
		} else if (idHp == ""){
			alert("휴대폰 번호을 입력해 주세요");
		}else {
			$.ajax({
				type: 'POST',
				async: true,
				data: {"mname" : idName, "mhp" : idHp},
				url: "hpCheck",
				success : function(data){
					if(data != ""){
						carriedEmail = data;
						$('#foundEmail').html(data);
						$('#idName').val("");
						$('#idHp').val("");
						$('.popup_cont').css("display","none");
						$('.login_popup_box').css({"height":"260px",'top':'28%'});
						$('#popup_cont4').css("display","block");
					} else {
						alert("입력하신 정보와 일치하는 계정을 찾지 못했습니다.");
						$('#idName').val("");
						$('#idHp').val("");
					}
				},
				error: function(){
					alert("실패");
				}
			});
		}
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
	var passEmail = $('#passEmail').val();
	
	if(passEmail != ""){
		$.ajax({
				type: 'POST',
				async: true,
				data: {"email": passEmail},
				url: "emailCheck",
				success : function(data){
					if(data != ""){
						carriedEmail = data;
						$('#foundEmail2').html(data);
						$('#passEmail').val("");
						$('.popup_cont').css("display","none");
						$('.login_popup_box').css({"height":"250px",'top':'28%'});
						$('#popup_cont6').css("display","block");
					} else {
						alert("입력하신 정보와 일치하는 계정을 찾지 못했습니다.");
						$('#passEmail').val("");
					}
				},
				error: function(){
					alert("실패");
				}
			});

	} else {
		alert("이메일을 입력해주세요");
	}
});


$(document).on("click", "#setNewPwButton", function(){
	var newPass = $('#setNewPw').val();
	var newPassCheck = $('#setNewPwCheck').val();
	
	if(newPass != newPassCheck){
		alert("입력하신 새 비밀번호가 일치하지 않습니다.");
		$('#setNewPw').val("");
		$('#setNewPwCheck').val("");
	} else {
		$.ajax({
			type: 'POST',
			async: true,
			data: {"memail" : carriedEmail, "mpass" : newPass},
			url: "updatePass",
			success : function(result){
				alert("비밀번호가 변경되었습니다.");
				$('#setNewPw').val("");
				$('#setNewPwCheck').val("");
				$('#popup').css("display","none");
				$('.popup_cont').css("display","none");
				$('.login_popup_box').css({"height":"620px","width":"370px",
					"top":"53%"});
				$('#popup_cont1').css("display","block");
				location.href = "http://localhost:9000/manwol/index";
			},
			error: function(){
				alert("실패");
			}
		});
	}
	
});

$(document).on("click", "#toJoin", function(){
	$('.popup_cont').css("display","none");
	$('#popup').css("display","none");
	$('#join_outer').css("display","block");
	$('#join_inner_1').css("display","block");
});


$(document).on("click", "#mwLogin", function(){
	var login_email = $('input#mwEmail').val();
	var login_pass = $('input#mwPass').val();
	
	if($('#mwEmail').val() == ""){
		alert("이메일을 입력해주세요!");
	} else if($('#mwPass').val() == ""){
		alert("비밀번호를 입력해주세요!");
	} else{
		$.ajax({
			type: 'POST',
			async: true,
			data: {"memail" : login_email, "mpass" : login_pass},
			url: "login",
			success : function(result){
				if(result == 1){
					location.href = "http://localhost:9000/manwol/index";
				}else{
					alert("일치하는 아이디와 비밀번호를 찾지 못했습니다.");
				}
			},
			error: function(){
				alert("실패");
			}
		});
	}
});

