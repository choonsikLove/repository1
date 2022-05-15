<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
</head>
<body>
	<jsp:include page="../../header.jsp"></jsp:include>
	<hr class="adminHr">

<div>
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
				<img alt="임시" src="http://localhost:9000/manwol/resources/images/default_profile.png">
			</div>
			<div>
				<p><a href="http://localhost:9000/manwol/admin"><span>관리자</span></a>님 안녕하세요.</p>
				<p>관리자 메인 페이지입니다.</p>
			</div>
		</div>
		
		<div class="orderDiv">
			<ul id="orderStatus">
				<li>입금 대기 중</li>
				<li>배송 준비</li>
				<li>배송 중</li>
				<li>배송 완료</li>
			</ul>
			<div>
				<ul>
					<li>
						<div>
							<img alt="만월회 음료 원액 베이스 10종(2개입,12개입)" src="http://localhost:9000/manwol/resources/images/product/만월회 음료 원액 베이스 10종(2개입,12개입).jpg">
							<div>
								주문 상품 정보
							</div>
							<p id="orderStatus_update">주문 상태</p>
						</div>
					</li>
					<li>
						<form>
							<input type="text" placeholder="Search">
							<span class="material-symbols-outlined">search</span>
						</form>
					</li>
					<li>
						&lt; 1 2 3 &gt;
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>	
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>