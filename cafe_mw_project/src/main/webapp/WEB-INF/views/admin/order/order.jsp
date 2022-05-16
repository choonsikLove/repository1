<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/admin.js"></script>
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
				<li>|</li>
				<li>배송 준비</li>
				<li>|</li>
				<li>배송 중</li>
				<li>|</li>
				<li>배송 완료</li>
			</ul>
			<div>
				<table border='1'>
					<tr>
						<td>주문 번호</td>
						<td>주문인</td>
						<td>주문 일자</td>
						<td>주문 상품</td>
						<td>주문 금액</td>
						<td>주문상태</td>
						<td>비고</td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td>202205150001</td>
						<td>김주문</td>
						<td>2022-05-15</td>
						<td><a href="http://localhost:9000/manwol/admin/order_detail" target="_blank" rel="noreferrer noopener">
							만월회 음료 원액 베이스 10종(1kg) 외 2건</a></td>
						<td>100,000</td>
						<td><span class="orderStatus_update">배송 완료</span></td>
						<td></td>
					</tr>
					<tr>
						<td colspan='7'>
							<form>
								<input type="text" placeholder="Search">
								<span class="material-symbols-outlined">search</span>
							</form>
						</td>
					</tr>
					<tr>
						<td colspan='7'>&lt; 1 2 3 &gt;</td>
					</tr>
					
				</table>
			</div>
		</div>
		
		
		
	</div>
</div>
	<jsp:include page="orderStatus_update.jsp"></jsp:include>
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>