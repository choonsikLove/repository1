<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght@100" rel="stylesheet" />
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/admin.js"></script>
</head>
<body>

<jsp:include page="../../header.jsp"></jsp:include>
<hr class="adminHr">
<div>
	<%-- 따로 가져오는게 나을지도 몰라 --%>
	<div>
		<nav>
		 	<ul>
				<li><a href="http://localhost:9000/manwol/admin/member_list">회원 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/product_list">상품 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/order_main">주문 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/review_main">Review 관리</a></li>
		 	</ul>
		</nav>
	</div>

	<div class="adminWrap">
		<div class="welcome">
			<div>
				<img alt="관리자사진" src="http://localhost:9000/manwol/resources/images/default_profile.png">
			</div>
			<div>
				<p><a href="http://localhost:9000/manwol/admin"><span>관리자</span></a>님 안녕하세요.</p>
				<p>회원 관리 페이지입니다.</p>
			</div>
		</div>
		
		<div class="memberInfo">
			<div>
				<img alt="프사" src="http://localhost:9000/manwol/resources/images/default_profile.png">
			</div>
			<div>
				<table border='1'>
					<tr>
						<td>이름</td><td>김회원</td>
						<td>연락처</td><td>01023232323</td>
					</tr>
					<tr>
						<td>아이디</td><td>member@google.com</td>
						<td>추천인코드</td><td>미생성</td>
					</tr>
					<tr>
						<td>주소</td><td colspan="3">주소</td>
					</tr>
					<tr>
						<td>상세 주소</td><td colspan="3">000동 2234호</td>
					</tr>
					<tr>
						<td rowspan="2">이벤트/혜택 소식<br> 수신 여부</td>
						<td>sns</td><td colspan="2">1</td>
					</tr>
					<tr>
						<td>email</td><td colspan="2">2</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="adminBox">
			<p>주문 내역</p>
			<table border='1'>
				<tr>
					<td>202204220286(주문번호)</td>
					<td>배송 완료(주문 상태)</td>
					<td>2022-04-22(주문일자)</td>
				</tr>
				<tr>
					<td>202204220286(주문번호)</td>
					<td>배송 완료(주문 상태)</td>
					<td>2022-04-22(주문일자)</td>
				</tr>
				<tr>
					<td>202204220286(주문번호)</td>
					<td>배송 완료(주문 상태)</td>
					<td>2022-04-22(주문일자)</td>
				</tr>
				<tr>
					<td>202204220286(주문번호)</td>
					<td>배송 완료(주문 상태)</td>
					<td>2022-04-22(주문일자)</td>
				</tr>
				<tr>
					<td>202204220286(주문번호)</td>
					<td>배송 완료(주문 상태)</td>
					<td>2022-04-22(주문일자)</td>
				</tr>
				<tr>
					<td colspan="3">
						<form>
							<input type="text" placeholder="Search">
							<span class="material-symbols-outlined">search</span>
						</form>
					</td>
				</tr>	
				<tr>
					<td colspan="3">&lt; 1 2 3 &gt;</td>
				</tr>
			</table>
		</div>
</div>		


</div>

<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>