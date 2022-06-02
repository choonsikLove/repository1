<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
					<c:choose>
						<c:when test="${empty list}">
							<tr>
								<td colspan='7'>주문 결과가 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="vo" items="${list }">
								<tr>
									<td>${vo.oid }</td>
									<td>${vo.obuyer }</td>
									<td>${vo.odate }</td>
									<td><a href="http://localhost:9000/manwol/admin/order_detail?oid=${vo.oid }" target="_blank" rel="noreferrer noopener">
											${ vo.oproducts}
										</a>
									</td>
									<td>${vo.ototal }</td>
									<td>
										<c:choose>
											<c:when test="${vo.ostatus == 0 }">
												<span class="orderStatus_update">입금 대기 중</span>
											</c:when>
											<c:when test="${vo.ostatus == 1 }">
												<span class="orderStatus_update">배송 준비</span>
											</c:when>
											<c:when test="${vo.ostatus == 2 }">
												<span class="orderStatus_update">배송 중</span>
											</c:when>
											<c:when test="${vo.ostatus == 3 }">
												<span class="orderStatus_update">배송 완료</span>
											</c:when>
										</c:choose>
									</td>
									<td>비고란</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
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