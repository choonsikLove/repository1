<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/mw.css">
<script src="http://localhost:9000/manwol/resources/js/mw.js"></script>
<style type="text/css">
	*{padding: 0; margin: 0;}
	li{list-style: none;}
	.join_circle{color: red; font-size: 22px;}
	.join_Id_Check{display:inline-block; border: 1px gray solid;}
	#recCodeBox{background: lightgray; border-left: 3px blue solid;}
</style>
</head>
<body>
	<h2>회원가입</h2>
	
	<div>
		<img alt="프로필 사진" src="">
	</div>
	
	<div id="recCodeBox">
		&#x025FC;추천인코드 입력하면 1,000원 즉시 적립!
	</div>
	
	<h3>본인인증</h3>
	<span class="join_Id_Check">휴대폰 인증</span>
	<span class="join_Id_Check">간편 인증</span>	
	
	
	<form>
		<table>
			<tr><td><input type="text" placeholder="이메일"></td></tr>
			<tr><td><input type="password" placeholder="비밀번호"></td></tr>
			<tr><td><input type="password" placeholder="비밀번호 확인"></td></tr>
		</table>
		
		<h4>이름&nbsp;<span class="join_circle">&#x02022;</span></h4>
		<table>
			<tr><td><input type="text" placeholder="이름을(를) 입력하세요."></td></tr>
		</table>
		
		<h4>연락처&nbsp;<span class="join_circle">&#x02022;</span></h4>
		<table>
			<tr><td><input type="text" placeholder="연락처"></td></tr>
		</table>
		
		<h4>주소</h4>	
		<table>
			<tr><td><input type="text" placeholder="주소"></td></tr>
			<tr><td><input type="text" placeholder="상세주소"></td></tr>
		</table>
		
		<h4>추천인</h4>
		<table>
			<tr><td><input type="text" placeholder="추천인 코드를 입력하세요."></td></tr>
		</table>
		
		<button type="submit">가입하기</button>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
