<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/kim_login_test.css">
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght@100" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>

<div id="popup" style="display:none;">
	<div class="login_popup_box">
     	<span class="material-symbols-outlined" id="closeX">close</span>
     


	    <div class="popup_cont" id="popup_cont1">
			<form>
				<ul>
					<li>로그인</li>
					<li><input type="text" name="memail" placeholder="이메일"></li>
					<li><input type="text" name="mpass" placeholder="비밀번호"></li>
					<li><input type="checkbox" checked="checked" id="loginCheck">
						<label for="loginCheck">로그인상태유지</label>
					</li> <%--나중에 이거 관련 내용도 추가해야! --%>
					<li><button type="submit">로그인</button></li>
				</ul>
			</form>
			<div>
				<span>회원가입</span>
				<span id="findIDPW">아이디·비밀번호 찾기</span>
			</div>
			<hr>
			<span>또는</span>
			<div>
				<button>넹이버</button>
				<button>카카오톡</button>
			</div>
			<hr>
			<span>또는</span>
			<div>
				<button id='visitorOrder'>비회원 주문배송 조회</button>
			</div>
	    </div>
	    
	    
	    
	    <div class="popup_cont" id="popup_cont2">
	    	아이디 비밀번호 찾기!
	    </div>
	    <div class="popup_cont" id="popup_cont3">
	    	3번째 내용
	    </div>
	    <div class="popup_cont" id="popup_cont99">
	    	<form>
				<ul>
					<li>비회원 주문 조회</li>
					<li><input type="text" name="vorderno" placeholder="주문번호"></li>
					<li><input type="text" name="vhp" placeholder="연락처"></li>
					<li><button type="submit">로그인</button></li>
				</ul>
			</form>
	    </div>
	    
	</div>
</div>
</body>
</html>
