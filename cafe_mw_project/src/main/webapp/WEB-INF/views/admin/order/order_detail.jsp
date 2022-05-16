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
		
		<div class="order_detailDiv">
			<h3>주문 상세 내역</h3>
			<div>
				<span>주문일자</span>
				<span>2022-05-16</span>
				<span>주문번호</span>
				<span>2022051600000</span>
			</div>
			<div>
				<table border='1'>
					<tr>
						<td><p>상품정보</p></td>
						<td><p>배송비</p></td>
						<td><p>진행상태</p></td>
					</tr>
					<tr>
						<td>
							<div>
								<div>
									<img src="http://localhost:9000/manwol/resources/images/product/만월회 음료 원액 베이스 10종(1kg).jpg">
								</div>
								<div class="order_items">
									<ul>
										<li><p>만월회 음료 원액 베이스 10종(1kg)</p></li>
										<li><p>종류: 민트초코</p></li>
										<li>
											<span>35,000원</span>
											<span>/</span>
											<span>1개</span>
										</li>
									</ul>
								</div>
							</div>
						</td>
						<td>3000원</td>
						<td><p>배송완료</p></td>
					</tr>
					<tr>
						<td>
							<div>
								<div>
									<img src="http://localhost:9000/manwol/resources/images/product/만월회 음료 원액 베이스 10종(1kg).jpg">
								</div>
								<div class="order_items">
									<ul>
										<li><p>만월회 음료 원액 베이스 10종(1kg)</p></li>
										<li><p>종류: 민트초코</p></li>
										<li>
											<span>35,000원</span>
											<span>/</span>
											<span>1개</span>
										</li>
									</ul>
								</div>
							</div>
						</td>
						<td>3000원</td>
						<td><p>배송완료</p></td>
					</tr>
				</table>
			</div>
			
			<h4>구매자 정보</h4>
			<div>
				<table border='1'>
					<tr>
						<td>주문자</td>
						<td>김주문</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>010-9876-5432</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>email@email.com</td>
					</tr>
				</table>
			</div>
			
			<h4>배송지 정보</h4>
			<div>
				<table border='1'>
					<tr>
						<td>수령인</td>
						<td>김수령</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>010-1234-5678</td>
					</tr>
					<tr>
						<td>배송지</td>
						<td>
							<p>(12345)주소1</p>
							<p>주소2</p>
						</td>
					</tr>
					<tr>
						<td>배송메모</td>
						<td>mail@mail.com</td>
					</tr>
				</table>
			</div>
			
			<h4>주문 금액 상세</h4>
			<div>
				<table border='1'>
					<tr>
						<td colspan='3'>
							<div class="money">
								<div>
									<span>주문금액</span>
									<span>주문금액</span>
								</div>
								<span>-</span>
								<div>
									<span>할인금액</span>
									<span>할인금액</span>
								</div>
									<span>=</span>
								<div>
									<span>총 주문금액</span>
									<span>총 주문금액</span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<div>
									<span>상품 금액</span>
									<span>1,234원</span>
								</div>
								<div>
									<span>배송비</span>
									<span>3,000원</span>
								</div>
							</div>
						</td>
						<td>
							<div>
								<span>할인 금액(있을 때만)</span>
								<span>원</span>
							</div>
						</td>
						<td>
							<span>결제수단</span>
						</td>
					</tr>
				</table>
			</div>
			
			
		</div>
	</div>
</div>	
	<jsp:include page="../../footer.jsp"></jsp:include>

</body>
</html>