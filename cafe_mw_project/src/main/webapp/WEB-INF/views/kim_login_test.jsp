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
					<li><input type="password" name="mpass" placeholder="비밀번호"></li>
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
				<button>네이버로 시작하기</button>
				<button>카카오로 시작하기</button>
			</div>
			<hr>
			<span>또는</span>
			<div>
				<button id='visitorOrder'>비회원 주문배송 조회</button>
			</div>
	    </div>
	    
	    
	    
	    <div class="popup_cont" id="popup_cont2">
	    	<div>
		    	<h4>아이디 찾기</h4>
	    	</div>
		   	<hr><%--일단은 전부 안 퍼지게 --%>
	    	
	    	<div>
	    		<table border='1'>
	    			<tr>
		    			<td><p id="findID">아이디 찾기</p></td>
		    			<td><p id="findPW">비밀번호 찾기</p></td>
	    			</tr>
	    		</table>
	    	</div>
	    	
	    	<div>
	    		<p>아이디를 찾을 방법을 선택해주세요.</p>
	    		<%--form이 이렇게 다 같이 있는데 한 버튼에서 어떻게 처리함? --%>
	    		<form>
	    			<ul>
	    				<li>
	    					<input type="radio" name="findIDMethod" value="byEmail" checked='checked' id="findIDMethod1">
	    					<label for="findIDMethod1">가입한 이메일로 찾기</label>
	    					<input type="text" name="memail" placeholder="이메일 또는 아이디" id="idEmail">
	    					<hr>
	    				</li>
	    				<li>
	    					<input type="radio" name="findIDMethod" value="byHp" id="findIDMethod2">
	    					<label for="findIDMethod2">가입한 휴대폰으로 찾기</label>
	    					<input type="text" name="mname" placeholder="이름 또는 닉네임" style="display:none;">
	    					<input type="text" name="mhp" placeholder="휴대폰 번호" style="display:none;">
	    					<hr>
	    				</li>
	    				<li>
	    					<input type="radio" name="findIDMethod" value="by1" id="findIDMethod3">
	    					<label for="findIDMethod3">휴대폰 본인인증으로 찾기</label>
	    					<hr>
	    				</li>
	    				<li>
	    					<input type="radio" name="findIDMethod" value="by2" id="findIDMethod4">
	    					<label for="findIDMethod4">간편 본인인증으로 찾기</label>
	    					<hr>
	    				</li>
	    				<li>
	    					<button type="button" id="findIDButton">아이디 찾기</button>
	    				</li>
	    			</ul>
	    		</form>
	    	</div>
	    	
	    </div>
	    
	    <div class="popup_cont" id="popup_cont3">
	    	<div>
		    	<h4>비밀번호 찾기</h4>
	    	</div>
	    	<hr>
	    	
	    	<div>
	    		<table border='1'>
	    			<tr>
		    			<td><p id="findID">아이디 찾기</p></td>
		    			<td><p id="findPW">비밀번호 찾기</p></td>
	    			</tr>
	    		</table>
	    	</div>
	    	
	    	<div>
	    		<form>
	    			<input type="text" name="memail" placeholder="가입한 아이디">
	    			<button type="button" id="findPWButton">비밀번호 찾기</button>
	    		</form>
	    	</div>
	    	
	    </div>
	    
	    <div class="popup_cont" id="popup_cont4">
	    	<div>
		    	<h4>아이디 찾기</h4>
	    	</div>
		   	<hr>
	    	
	    	<div>
	    		<p>입력하신 정보와 일치하는 계정을 발견했습니다</p>
	    		<p>메일 주소!</p>
	    	</div>
	    	
	    	<div>
	    		<table>
	    			<tr>
	    				<td><p class="newPW">비밀번호 재설정</p></td>
	    				<td><p class="backToLogin">로그인</p></td>
	    			</tr>
	    		</table>
	    	</div>
	    	
	    	<div>
	    		<p class="newPW">정확한 아이디가 기억나지 않아요!</p>
	    	</div>
	    	
	    </div>
	    
	     <div class="popup_cont" id="popup_cont5">
	    	<div>
		    	<h4>비밀번호 변경</h4>
	    	</div>
	    	<hr>
	    	
	    	<div>
	    		<form>
	    			<input type="password" placeholder="새 비밀번호">
	    			<input type="password" placeholder="새 비밀번호 확인">
	    			<button type="button"> 변경하기</button>
	    		</form>
	    	</div>
	    	
	    	<div>
	    		<p>
	    			<span>TIP</span>
	    			비밀번호에 영문 대소문자, 숫자, 특수문자를 조합하시면 안전도가 높아져 도용의 위험이 줄어듭니다.
	    		</p>
	    	</div>
	    	
	    </div>
	    
	    <div class="popup_cont" id="popup_cont6">
	    	<div>
		    	<h4>비밀번호 재설정</h4>
	    	</div>
		   	<hr>
	    	
	    	<div>
	    		<p>입력하신 정보와 일치하는 계정을 발견했습니다</p>
	    		<p>메일 주소!</p>
	    	</div>
	    	
	    	<div>
	    		<table>
	    			<tr>
	    				<td><p class="newPW">비밀번호 재설정</p></td>
	    				<td><p class="backToLogin">로그인</p></td>
	    			</tr>
	    		</table>
	    	</div>
	    	
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
