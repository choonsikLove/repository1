<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

* {
	padding: 0;
	margin: 0;
}

li {
	list-style: none;
}

div#withdraw_outer {
	background: rgba(0, 0, 0, 0.4);
	top: 0;
	left: 0;
	position: fixed;
	width: 100%; height : 100%;
	overflow: hidden;
	padding-top: 10px;
	z-index: 1000;
	display: block;
	overflow-y: initial;
}

#withdraw_inner {
	background: white;
	position: relative;
	width: 600px;
	height: 220px;
	margin: 50px auto;
	padding: 20px;
	border-radius: 5px;
	display: block;
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
<script type="text/javascript">
	alert("실행45");

</script>
</head>
<body>
	<div id='withdraw_outer'>

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