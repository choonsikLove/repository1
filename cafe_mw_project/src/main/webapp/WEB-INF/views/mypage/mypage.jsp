<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background: gray;
	}
	#notice{
		text-align: center;
		font-size: 19px;
	}
	.boldspan{
		font-weight: bold;
	}
	.bgcspan{
		background: blue;
	}
	.colorspan{
		color: gray;
	}
	.linespan{
		text-decoration: underline;
	}
	
	
	
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div id='notice'>
		⚠️ <span class='boldspan'>네이버페이</span>로 구매한 주문은<br>
		<span class='boldspan'>'네이버페이>결제내역'</span>에서 확인 가능합니다.<br><br>
		<span class='boldspan'>⚠️ 배송지 변경 및 주문 취소</span>는<br>
		<span class='boldspan'>주문/결제 당일</span> 문의해주셔야 변경 가능합니다.<br><br>
		<span class='boldspan'>⚠️ 만월쿠폰 사용 방법</span><br>
		<span class='bgcspan'>마이페이지 > 쿠폰 > 쿠폰받기</span>를 클릭해야 쿠폰이 정상발급 됩니다.<br>
		<span class='colorspan'>* 쿠폰코드의 경우 <span class='linespan'>결제창에서 직접 쿠폰번호를 입력</span>해주세요!</span>
	</div>
	
	<div>
		<div>
			<ul>
				<li>주문조회</li>
				<li>위시리스트</li>
				<li>정기구독관리</li>
				<li>취소조회</li>
				<li>만월포인트</li>
				<li>1:1문의</li>
				<li>정보수정</li>
				<li>회원탈퇴</li>
			</ul>
		</div>
		<div>
			<div>
				<div>이미지</div>
				<div>
					일반 유덕현님 안녕하세요.
					구매금액 15,000원 달성 시
					달까지 100km로 승급됩니다.
					<div>
						등급혜택 보기
					</div>
				</div>
				<div>
					만월포인트
					0
				</div>
			</div>
			<div>
				주문조회
			</div>
		</div>	
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>