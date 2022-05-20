<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/mypage.js"></script>
</head>
<body>
	<div id='mypage_modal_outer'>

		<!-- 회원정보 수정폼 -->
		<div id='modify_inner'>
			<div class='modal_exit'>&#215;</div>
			<div class='modal_exit_ex'>닫기</div>
			<h2 id='mypage_modal_title'>정보 수정</h2>
			<div>
				<img id='mypage_profile_img' alt='프로필 이미지' name='profile_img_upload'
					src='http://localhost:9000/manwol/resources/images/default_profile.png'>
				<label for="update_profile">
					<div>사진</div>
				</label>
				<form name="update_profile_form" action="update_profile_img" method="post" enctype="multipart/form-data">
					<input type="file" name="file" id="update_profile" onchange="loadFile(this)" style="visibility: hidden;">
					<input type='hidden' name='memail' id="for_updating_profile">
					<input type='hidden' name='msprofile' id="for_erasing_old_file">
					<input type='hidden' name='mname' id="for_loading_mname">
				</form>
			</div>
			
			<div id='member_grade'>
				신규회원(renewal)<br><br>
				<span>&nbsp;일반&nbsp;</span><br><br>
				<div>
					추천인 코드 <span id="mypage_profile_reccode">생성하기</span>
				</div>
			</div>
			
			<div id='id_check'>
				<span>본인인증</span><br>
				<span id='id_check_result'><span id='id_check_mark'>&nbsp;&check;&nbsp;</span>인증완료</span>
			</div>
			<form>
				<div>
					<input type='text' name='email' class='input_box' value="test@naver.com" id="mypage_profile_memail">
					<input type='text' name='before_pass' class='input_box' placeholder='기본 비밀번호 입력'>
					<input type='text' name='after_pass' class='input_box' placeholder='비밀번호를 변경 하는 경우 입력하세요'>
					<input type='text' class='input_box' placeholder='비밀번호 확인' id="after_after_pass">
				</div>
				<div class='sub_title'>
					이름&nbsp;<span>&#x02022;</span>
				</div>
				<div>
					<input type='text' name='name' class='input_box' value="name_test" id="mypage_profile_mname">
				</div>
				<div class='sub_title'>
					연락처&nbsp;<span>&#x02022;</span>
				</div>
				<div>
					<input type='text' name='hp' class='input_box' value="hp_test" id="mypage_profile_mhp">
				</div>
				<div class='sub_title'>주소</div>
				<div>
						<input type='text' name='addr1' class='input_box' value="addr1_test" id="mypage_profile_maddr1">
						<input type='text' name='addr2' class='input_box' value="addr2_test" id="mypage_profile_maddr2">
				</div>
				<div class='sub_title'>이벤트/혜택 소식 수신 여부</div>
				<label>
					<input type='checkbox' name='smsReceive' class='tos_check' id="mypage_profile_msg_sms"> SMS 수신 동의 
				</label>
				<br> 
				<label>
					<input type='checkbox' name='emailReceive' class='tos_check' id="mypage_profile_msg_email"> E-Mail 수신 동의 
				</label>
				<button id='modify_submit' type='button'>확인</button>
			</form>
			<div class='sub_title'>소셜 로그인</div>
			<div id='naver_start'>네이버 연결</div>
			<div id='kakao_start'>카카오 연결</div>
		</div>

		<!-- 회원탈퇴 화면 -->
		<div id='withdraw_inner'>
			<h2 class='withdraw_title'>회원탈퇴</h2>
			<div>
				가입된 회원정보가 모두 삭제됩니다. 작성하신 게시물은 삭제되지 않습니다.<br>
				탈퇴 후 같은 계정으로 재가입 시 기존에 가지고 있던 적립금은 복원되지 않으며, 사용 및 다운로드했던 쿠폰도 사용 불가능합니다.<br>
				회원 탈퇴를 진행하시겠습니까?<br><br>
			</div>
			<div>
				<button class='withdraw_inner_btn' id='withdraw_cancel'>취소</button>
				<button class='withdraw_inner_btn' id='withdraw_agree' onclick="location.href='shop_mypage/withdraw'">탈퇴하기</button>
			</div>
		</div>
	</div>
</body>
</html>