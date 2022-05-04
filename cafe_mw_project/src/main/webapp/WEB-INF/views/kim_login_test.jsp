<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/kim_login_test.css">
<title>Insert title here</title>
</head>
<body>

<div id="popup" style="display:none;">
	<div class="login_popup_box">
	  	<img id="closeImage" 
	  	src="http://localhost:9000/manwol/resources/images/default_profile.png" width="50px" height="50px">
     


	    <div class="popup_cont" id="popup_cont1">
			<form>
				<ul>
					<li>로그인</li>
					<li><input type="text" name="memail" placeholder="이메일"></li>
					<li><input type="text" name="mpass" placeholder="비밀번호"></li>
					<li><input type="checkbox">로그인 상태 유지</li> <%--나중에 이거 관련 내용도 추가해야! --%>
					<li><button type="submit">로그인</button></li>
				</ul>
			</form>
			<div>
				<span>회원가입</span>
				<span>아이디·비밀번호 찾기</span>
			</div>
			<hr>
			<div>
				<button>비회원 주문배송 조회</button>
			</div>
			
			
	      	
	    	<button id="nextButton">다음</button>
				
	    </div>
	    
	    <div class="popup_cont" id="popup_cont2">
	    	2번째 내용
	    </div>
	</div>
</div>
</body>
</html>