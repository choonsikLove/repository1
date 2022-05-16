<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/mypage_modal.css"/>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

li {
	list-style: none;
}

div#mypage_modal_outer {
	background: rgba(0, 0, 0, 0.4);
	top: 0;
	left: 0;
	position: fixed;
	width: 100%; height : 100%;
	overflow: hidden;
	padding-top: 10px;
	z-index: 1000;
	display: none;
	overflow-y: initial;
}

h2#mypage_modal_title {
	text-align: center;
	margin-top: 10px;
	margin-bottom: 15px;
	font-size: 17pt;
}

div.modal_exit {
	color: lightgray;
	font-size: 40px;
	position: absolute;
	left: 350px;
	top: 0px;
	cursor:pointer;
}

div.modal_exit:hover {
	color: black;
}

div.modal_exit_ex {
	position: absolute;
	background: black;
	color: white;
	text-align: center;
	width: 40px;
	height: 15px;
	left: 345px;
	top: 40px;
	border-radius: 5px;
	font-size: 12px;
	display: none;
}

#modify_inner {
	background: #fff;
	position: relative;
	width: 350px;
	height: 1100px;
	margin: 80px auto;
	padding: 20px;
	border-radius: 5px;
	display: none;
}

#member_grade{
	font-size: 13px;
	text-align: center;
}

#member_grade span{
	border-radius: 10px;
	background: gray;
	color: white;
	text-align: center;
}

#member_grade div{
	color: gray;
}
#member_grade div span{
	background: none;
	color: #004A98;
}

.sub_title>span {
	color: red;
	font-size: 22px;
}

#profile_img {
	border-radius: 50%;
	margin: 10px;
	margin-left: 135px;
	width: 80px; height: 80px;
	cursor: pointer;
}

input.input_box {
	width: 320px;
	height: 30px;
	font-size: 14px;
	padding: 4px 12px;
	border: 1px #a9a9a9 solid;
}

#id_check{
	font-size: 16px;
	margin: 20px 0px;
	line-height: 30px;
}

#id_check_result{
	font-size: 13px;
}
#id_check_mark{
	color: #3EC731;
	border-radius: 10px;
	border: #3EC731 solid 1px;
	font-weight: bold;
}

.sub_title{
	font-size: 11pt;
	margin-top: 12px;
	margin-bottom: 8px;
}

.tos_check {
	zoom: 1.5;
	vertical-align: middle;
	cursor: pointer;
	margin: 3px 0px;
}

label{
	font-size: 15px;
}

button#modify_submit {
	width: 350px;
	height: 40px;
	background: rgb(11,47,127);
	color: white;
	font-size: 15px;
	border: none;
	font-weight: bold;
	padding: 5px;
	cursor: pointer;
	margin-top: 20px;
}

#naver_start {
	width: 350px;
	height: 30px;
	background: #66D05D;
	color: #fff;
	font-size: 13px;
	font-weight: bold;
	text-align: center;
	padding-top: 15px;
	cursor: pointer;
}

#kakao_start {
	width: 350px;
	height: 30px;
	background: #FCEC4F;
	color: #000;
	font-size: 13px;
	font-weight: bold;
	text-align: center;
	padding-top: 15px;
	margin-top: 10px;
	cursor: pointer;
}

#withdraw_inner {
	background: white;
	position: relative;
	width: 600px;
	height: 220px;
	margin: 50px auto;
	padding: 20px;
	border-radius: 5px;
	display: none;
}
#withdraw_inner h2+div{
	font-size: 13px;
	line-height: 20px;
}
#withdraw_inner div+div{
	width: 176px;
	margin: 0px auto;
}

h2.withdraw_title {
	text-align: center;
	margin: 20px 0px;
	font-size: 18pt;
}

.withdraw_inner_btn {
	display: inline-block;
	height: 40px;
	padding: 10px 0;
	cursor: pointer;
}

#withdraw_agree {
	float: right;
	background: #004A98;
	color: white;
	border: none;
	width: 100px;
	margin-left: 3px;
}

#withdraw_cancel {
	border: 1px solid #CCCCCC;
	float: left;
	background: #fff;
	width: 70px;
	margin-right: 3px;
}

#withdraw_cancel:hover {
	background: rgb(250,250,250);
	border: 1px black solid;
}

#withdraw_cancel:after {
	content: "";
	display: block;
	clear: both;
}

</style>
</head>
<body>
	<div id='mypage_modal_outer'>

		<!-- 회원정보 수정폼 -->
		<div id='modify_inner'>
			<div class='modal_exit'>&#215;</div>
			<div class='modal_exit_ex'>닫기</div>
			<h2 id='mypage_modal_title'>정보 수정</h2>
			<div>
				<img id='profile_img' alt='프로필 이미지' name='profile_img_upload'
					src='http://localhost:9000/manwol/resources/images/default_profile.png'>
			</div>
			
			<div id='member_grade'>
				신규회원(renewal)<br><br>
				<span>&nbsp;일반&nbsp;</span><br><br>
				<div>
					추천인 코드 <span>생성하기</span>
				</div>
			</div>
			
			<div id='id_check'>
				<span>본인인증</span><br>
				<span id='id_check_result'><span id='id_check_mark'>&nbsp;&check;&nbsp;</span>인증완료</span>
			</div>
			<form>
				<div>
					<input type='text' name='email' class='input_box' value="test@naver.com">
					<input type='password' name='before_pass' class='input_box' placeholder='기본 비밀번호 입력'>
					<input type='password' name='after_pass' class='input_box' placeholder='비밀번호를 변경 하는 경우 입력하세요'>
					<input type='password' class='input_box' placeholder='비밀번호 확인'>
				</div>
				<div class='sub_title'>
					이름&nbsp;<span>&#x02022;</span>
				</div>
				<div>
					<input type='text' name='name' class='input_box' value="name_test">
				</div>
				<div class='sub_title'>
					연락처&nbsp;<span>&#x02022;</span>
				</div>
				<div>
					<input type='text' name='hp' class='input_box' value="hp_test">
				</div>
				<div class='sub_title'>주소</div>
				<div>
						<input type='text' name='addr1' class='input_box' value="addr1_test">
						<input type='text' name='addr2' class='input_box' value="addr2_test">
				</div>
				<div class='sub_title'>이벤트/혜택 소식 수신 여부</div>
				<label>
					<input type='checkbox' name='smsReceive' class='tos_check'> SMS 수신 동의 
				</label>
				<br> 
				<label>
					<input type='checkbox' name='emailReceive' class='tos_check'> E-Mail 수신 동의 
				</label>
				<button id='modify_submit' type='submit'>확인</button>
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
				<button class='withdraw_inner_btn' id='withdraw_agree'>탈퇴하기</button>
			</div>
		</div>
	</div>
</body>
</html>